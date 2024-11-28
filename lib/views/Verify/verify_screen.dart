// ignore_for_file: library_private_types_in_public_api

import 'package:dream_emirates/config/config_barrel.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http_parser/http_parser.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:image/image.dart' as img;
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image/image.dart' as img;
import 'package:http_parser/http_parser.dart';

class DocumentVerificationScreen extends StatefulWidget {
  const DocumentVerificationScreen({super.key});

  @override
  _DocumentVerificationScreenState createState() =>
      _DocumentVerificationScreenState();
}

class _DocumentVerificationScreenState
    extends State<DocumentVerificationScreen> {
  File? _frontImage;
  File? _backImage;
  // final String _selectedDocumentType = 'Passport'; // Example document type
  final ImagePicker _picker = ImagePicker();
  bool _isLoading = false; // Flag to manage loading state

  String _selectedDocumentType = 'nid'; // Default value
  final List<String> _docTypes = [
    'nid',
    'id_card',
    'driving_license',
    'passport',
  ];
  final Map<String, String> documentTypeDisplay = {
    'nid': 'NID',
    'id_card': 'ID Card',
    'driving_license': 'Driving License',
    'passport': 'Passport',
  };

  /// Function to select and convert an image to JPG
  Future<void> _selectFrontImage() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

      if (pickedFile == null) {
        print("No image selected.");
        return;
      }

      final selectedImage = File(pickedFile.path);

      // Convert image to JPG
      final convertedImage = await _convertToJpg(selectedImage);

      setState(() {
        _frontImage = convertedImage;
      });
    } catch (e) {
      print("Error selecting image: $e");
      _showDialog(
          'Error', 'Failed to process the front image. Please try again.');
    }
  }

  Future<void> _selectBackImage() async {
    try {
      final pickedFile2 = await _picker.pickImage(source: ImageSource.gallery);

      if (pickedFile2 == null) {
        print("No image selected.");
        return;
      }

      final selectedImage2 = File(pickedFile2.path);

      // Convert image to JPG
      final convertedImage2 = await _convertToJpg(selectedImage2);

      setState(() {
        _backImage = convertedImage2;
      });
    } catch (e) {
      print("Error selecting image: $e");
      _showDialog(
          'Error', 'Failed to process the back image. Please try again.');
    }
  }

  /// Convert and compress the image file to JPG format
  Future<File> _convertToJpg(File imageFile) async {
    try {
      final originalImage = img.decodeImage(imageFile.readAsBytesSync());

      if (originalImage == null) {
        throw Exception("Failed to decode the image file.");
      }

      // Compress the image by resizing it (e.g., 1024x1024 max dimensions)
      final resizedImage = img.copyResize(
        originalImage,
        width: 1024,
        height: 1024,
      );

      // Encode the resized image to JPG with a quality of 70 (for compression)
      final compressedImage = img.encodeJpg(resizedImage, quality: 70);

      // Save the compressed image to a temporary file
      final tempDir = await getTemporaryDirectory();
      final tempFilePath =
          "${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}_compressed.jpg";

      print("Compressed image path: $tempFilePath");

      final compressedFile = File(tempFilePath)
        ..writeAsBytesSync(compressedImage);

      return compressedFile;
    } catch (e) {
      print("Error compressing the image: $e");
      rethrow;
    }
  }

  /// Submit the front image for verification
  Future<void> _submitVerification() async {
    if (_frontImage == null) {
      throw Exception('Please select a front image.');
    }

    try {
      await _uploadImage(
        image: _frontImage!,
        documentType: _selectedDocumentType,
        imageType: 'front',
      );
      print('Front image uploaded successfully.');
    } catch (e) {
      print('Error in front image upload: $e');
      rethrow; // Propagate the error
    }
  }

  /// Submit the back image for verification
  Future<void> _submitVerification02() async {
    if (_backImage == null) {
      throw Exception('Please select a back image.');
    }

    try {
      await _uploadImage(
        image: _backImage!,
        documentType: _selectedDocumentType,
        imageType: 'back',
      );
      print('Back image uploaded successfully.');
    } catch (e) {
      print('Error in back image upload: $e');
      rethrow; // Propagate the error
    }
  }

  /// Upload an image to the API
  Future<void> _uploadImage({
    required File image,
    required String documentType,
    required String imageType,
  }) async {
    final url = Uri.parse(
        "https://staging.karnaphulijewellery.com/api/app/user/upload-document");

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? myToken = prefs.getString('token');

    if (myToken == null || myToken.isEmpty) {
      throw Exception('Authorization token is missing.');
    }

    final request = http.MultipartRequest('POST', url)
      ..headers['Authorization'] = 'Bearer $myToken'
      ..fields['document_type'] = documentType.toLowerCase()
      ..fields['image_type'] = imageType
      ..files.add(
        http.MultipartFile(
          'images',
          image.readAsBytes().asStream(),
          image.lengthSync(),
          filename: image.path.split('/').last,
          contentType: MediaType('image', 'jpeg'),
        ),
      );

    print("Uploading $imageType image...");
    final response = await request.send();
    final responseBody = await response.stream.bytesToString();
    print("Response Body: $responseBody");

    if (response.statusCode != 200) {
      throw Exception("Failed to upload $imageType image: $responseBody");
    }
  }

  Future<void> _submitBothVerifications() async {
    setState(() {
      _isLoading = true; // Start loading
    });

    try {
      await _submitVerification();
      await _submitVerification02();
      _showDialog('Success', 'Both verifications submitted successfully!');
    } catch (e) {
      _showDialog('Error', 'An error occurred: $e');
    } finally {
      setState(() {
        _isLoading = false; // Stop loading
      });
    }
  }

  /// Show dialog for messages
  void _showDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              context.go('/home');
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Document Verification'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _selectedDocumentType,
                      items: _docTypes.map((type) {
                        return DropdownMenuItem(
                          value: type,
                          child: Text(documentTypeDisplay[type]!),
                        );
                      }).toList(),
                      decoration: const InputDecoration(
                        labelText: 'Select Document Type',
                        filled: true,
                        fillColor: Color(0xFFE9EDF9),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _selectedDocumentType = value!;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: _selectFrontImage,
                      child: _frontImage == null
                          ? Container(
                              height: 200,
                              width: double.infinity,
                              color: Colors.grey[300],
                              child: const Center(
                                  child: Text('Tap to select Front Image')),
                            )
                          : Container(
                              height: 200,
                              width: double.infinity,
                              color: Colors.grey[300],
                              child: Center(
                                  child: Image.file(
                                _frontImage!,
                                height: 190,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ))),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: _selectBackImage,
                      child: _backImage == null
                          ? Container(
                              height: 200,
                              width: double.infinity,
                              color: Colors.grey[300],
                              child: const Center(
                                  child: Text('Tap to select Back Image')),
                            )
                          : Container(
                              height: 200,
                              width: double.infinity,
                              color: Colors.grey[300],
                              child: Center(
                                  child: Image.file(
                                _backImage!,
                                height: 190,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ))),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: _isLoading
                          ? null // Disable button when loading
                          : _submitBothVerifications,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: _isLoading ? Colors.grey : Colors.black,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: const Color(0xFFE8EDF1),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (_isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: SizedBox(
                  height: 25,
                  child: CupertinoActivityIndicator(
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
