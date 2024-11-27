import 'package:dream_emirates/config/config_barrel.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
/*
class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  File? _frontImage;
  File? _backImage;
  final ImagePicker _picker = ImagePicker();

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

  /// Pick an image for front or back
  Future<void> _pickImage(bool isFront) async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        if (isFront) {
          _frontImage = File(pickedImage.path);
        } else {
          _backImage = File(pickedImage.path);
        }
      });
    }
  }

  /// Submit data to API
  Future<void> _submitVerification() async {
    if (_frontImage == null || _backImage == null) {
      _showDialog('Error', 'Please select both front and back images.');
      return;
    }

    try {
      final request = http.MultipartRequest(
        'POST',
        Uri.parse('https://your-api-endpoint.com/verify'),
      );

      request.files.add(await http.MultipartFile.fromPath(
        'images[front]',
        _frontImage!.path,
      ));
      request.files.add(await http.MultipartFile.fromPath(
        'images[back]',
        _backImage!.path,
      ));

      request.fields['document_type'] = _selectedDocumentType;

      final response = await request.send();

      if (response.statusCode == 200) {
        final responseData = await response.stream.bytesToString();
        final jsonData = json.decode(responseData);
        _showDialog('Success', 'Verification submitted successfully!');
        print('API Response: $jsonData');
      } else {
        final errorResponse = await response.stream.bytesToString();
        print('Error Response: $errorResponse');
        _showDialog('Error', 'Failed to submit verification.');
      }
    } catch (e) {
      print('Error: $e');
      _showDialog('Error', 'An error occurred. Please try again.');
    }
  }

  /// Show a dialog for success or error
  void _showDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Document'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      ContainerWidet(
                        initialHeight: height * 0.032,
                        initialWidth: width * 0.075,
                        backgroundColor: Colors.black,
                        borderRadious: 8,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      5.w,
                      const GlobalTextWidget(
                        title: 'Info',
                        fontSize: 15,
                      )
                    ],
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      ContainerWidet(
                        initialHeight: height * 0.032,
                        initialWidth: width * 0.075,
                        borderRadious: 8,
                        backgroundColor: Colors.white,
                        borderColor: Colors.grey,
                        borderWidth: 2,
                      ),
                      5.w,
                      const GlobalTextWidget(
                        title: 'Pending',
                        fontSize: 15,
                      ),
                      5.w,
                    ],
                  ),
                ],
              ),
              10.h,
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _pickImage(true),
                child: const Text('Select Front Image'),
              ),
              if (_frontImage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.file(
                    _frontImage!,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ElevatedButton(
                onPressed: () => _pickImage(false),
                child: const Text('Select Back Image'),
              ),
              if (_backImage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.file(
                    _backImage!,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitVerification,
                child: const Text('Submit Verification'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

import 'package:image/image.dart' as img;
import 'package:shared_preferences/shared_preferences.dart';
/*
class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  File? _frontImage;
  File? _backImage;
  final ImagePicker _picker = ImagePicker();

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

  /// Pick an image for front or back
  Future<void> _pickImage(bool isFront) async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      File imageFile = File(pickedImage.path);
      imageFile = await compressImage(imageFile);

      setState(() {
        if (isFront) {
          _frontImage = imageFile;
        } else {
          _backImage = imageFile;
        }
      });
    }
  }

  Future<File> compressImage(File file) async {
    final image = img.decodeImage(await file.readAsBytes());
    if (image == null) return file;

    // Resize if necessary
    final resizedImage = img.copyResize(image, width: 800);

    // Compress and save to a temporary file
    final compressed =
        File('${file.parent.path}/compressed_${file.path.split('/').last}');
    compressed.writeAsBytesSync(img.encodeJpg(resizedImage, quality: 75));
    return compressed;
  }

  /// Submit the front and back image data to API
  Future<void> _submitVerification() async {
    if (_frontImage == null || _backImage == null) {
      _showDialog('Error', 'Please select both front and back images.');
      return;
    }

    try {
      await _uploadImage(
        _frontImage!,
        'document', // Example value for documentType
        'front', // Example value for imageType
      );
      await _uploadImage(
        _backImage!,
        'document', // Example value for documentType
        'back', // Example value for imageType
      );
      _showDialog('Success', 'Verification submitted successfully!');
    } catch (e) {
      print('Error: $e');
      _showDialog('Error', 'An error occurred. Please try again : $e.');
    }
  }

  Future<void> _uploadImage(
      File image, String documentType, String imageType) async {
    const String apiUrl =
        "https://staging.karnaphulijewellery.com/api/app/user/upload-document";

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? myToken = prefs.getString('token');

    if (myToken == null || myToken.isEmpty) {
      throw Exception('Authorization token is missing.');
    }

    try {
      final request = http.MultipartRequest('POST', Uri.parse(apiUrl))
        ..headers['Authorization'] = 'Bearer $myToken' // Ensure correct format
        ..files.add(await http.MultipartFile.fromPath('images', image.path))
        ..fields['document_type'] = documentType
        ..fields['image_type'] = imageType;

      final response = await request.send();

      if (response.statusCode == 200) {
        print('Upload Successful: ${await response.stream.bytesToString()}');
      } else {
        final errorResponse = await response.stream.bytesToString();
        print('Error Response: $errorResponse');
        throw Exception('Failed to upload $imageType image: $errorResponse');
      }
    } catch (e) {
      print('Error uploading $imageType image: $e');
      throw Exception('Failed to upload $imageType image.');
    }
  }

  /// Show a dialog for success or error
  void _showDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Document'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: height * 0.035,
                        width: width * 0.075,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Info',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: height * 0.035,
                        width: width * 0.075,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Pending',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _pickImage(true),
                child: const Text('Select Front Image'),
              ),
              if (_frontImage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.file(
                    _frontImage!,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ElevatedButton(
                onPressed: () => _pickImage(false),
                child: const Text('Select Back Image'),
              ),
              if (_backImage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.file(
                    _backImage!,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitVerification,
                child: const Text('Submit Verification'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:mime/mime.dart'; // For determining MIME type of files
import 'package:mime/mime.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  File? _frontImage; // Stores the selected front image
  File? _backImage; // Stores the selected back image
  final ImagePicker _picker = ImagePicker(); // Image picker instance

  // Document type dropdown values
  String _selectedDocumentType = 'nid'; // Default value
  final List<String> _docTypes = [
    'nid',
    'id_card',
    'driving_license',
    'passport',
  ];

  // Map to display user-friendly names for document types
  final Map<String, String> documentTypeDisplay = {
    'nid': 'NID',
    'id_card': 'ID Card',
    'driving_license': 'Driving License',
    'passport': 'Passport',
  };

  /// Picks an image from the gallery and optionally compresses it
  Future<void> _pickImage(bool isFront) async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      File imageFile = File(pickedImage.path);

      // Compress the image to optimize size before uploading
      imageFile = await compressImage(imageFile);

      setState(() {
        if (isFront) {
          _frontImage = imageFile;
        } else {
          _backImage = imageFile;
        }
      });
    }
  }

  /// Compress the image to reduce file size
  Future<File> compressImage(File file) async {
    final image = img.decodeImage(await file.readAsBytes());
    if (image == null) throw Exception('Unable to decode image file.');

    // Resize and compress
    final resizedImage = img.copyResize(image, width: 800);

    // Save with correct format
    final compressedPath =
        '${file.parent.path}/compressed_${file.uri.pathSegments.last}';
    final compressedFile = File(compressedPath);

    compressedFile.writeAsBytesSync(img.encodeJpg(resizedImage, quality: 75));
    return compressedFile;
  }

  /// Submits the verification data by uploading front and back images
  Future<void> _submitVerification() async {
    if (_frontImage == null || _backImage == null) {
      _showDialog('Error', 'Please select both front and back images.');
      return;
    }

    try {
      // Upload the front image
      await _uploadImage(
        _frontImage!,
        _selectedDocumentType,
        'front',
      );

      // Upload the back image
      await _uploadImage(
        _backImage!,
        _selectedDocumentType,
        'back',
      );

      // If both uploads are successful, show a success dialog
      _showDialog('Success', 'Verification submitted successfully!');
    } catch (e) {
      // Handle errors and show an error dialog
      print('Error: $e');
      _showDialog('Error', 'An error occurred. Please try again: $e.');
    }
  }

  /// Uploads an image to the API
  Future<void> _uploadImage(
      File image, String documentType, String imageType) async {
    const String apiUrl =
        "https://staging.karnaphulijewellery.com/api/app/user/upload-document";

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? myToken = prefs.getString('token');

    if (myToken == null || myToken.isEmpty) {
      throw Exception('Authorization token is missing.');
    }

    // Validate MIME type
    validateMimeType(image);

    try {
      // Multipart request setup
      final request = http.MultipartRequest('POST', Uri.parse(apiUrl))
        ..headers['Authorization'] = 'Bearer $myToken'
        ..files.add(await http.MultipartFile.fromPath(
            'image', image.path)) // Adjust key as per API
        ..fields['document_type'] = documentType
        ..fields['image_type'] = imageType;

      final response = await request.send();

      if (response.statusCode == 200) {
        final responseData = await response.stream.bytesToString();
        print('Upload Successful: $responseData');
      } else {
        final errorResponse = await response.stream.bytesToString();
        print('Error Response: $errorResponse');
        throw Exception('Failed to upload $imageType image: $errorResponse');
      }
    } catch (e) {
      print('Error uploading $imageType image: $e');
      throw Exception('Failed to upload $imageType image.');
    }
  }

  /// Shows a dialog with a title and message
  void _showDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Document'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Step indicator UI
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: height * 0.035,
                        width: width * 0.075,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Info',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: height * 0.035,
                        width: width * 0.075,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Pending',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Dropdown for document type selection
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
              const SizedBox(height: 20),

              // Front image selection
              ElevatedButton(
                onPressed: () => _pickImage(true),
                child: const Text('Select Front Image'),
              ),
              if (_frontImage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.file(
                    _frontImage!,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),

              // Back image selection
              ElevatedButton(
                onPressed: () => _pickImage(false),
                child: const Text('Select Back Image'),
              ),
              if (_backImage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.file(
                    _backImage!,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              const SizedBox(height: 20),

              // Submit button
              ElevatedButton(
                onPressed: _submitVerification,
                child: const Text('Submit Verification'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validateMimeType(File file) {
    final mimeType = lookupMimeType(file.path);
    if (mimeType == null || !mimeType.startsWith('image/')) {
      throw Exception('Invalid file type. Only images are allowed.');
    }
  }
}
