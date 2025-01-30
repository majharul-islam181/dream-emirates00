// ignore_for_file: unused_field

import 'package:dream_emirates/config/config_barrel.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/SignIn/widgets/background_widget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
/*
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late double height;
  late double width;
  final emailFocusNode = FocusNode();
  final phoneNumberFocusNode = FocusNode();
  final fullnamefocusnode = FocusNode();
  final passwordFocusNode = FocusNode();
  final dateOfBirthFocusNode = FocusNode();
  final confrimPasswordFocusNode = FocusNode();
  late SignupBloc _loginBloc;

  @override
  void initState() {
    super.initState();
    _loginBloc = SignupBloc(signupRepository: getIt());
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: BlocProvider(
        create: (_) => _loginBloc,
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              // Background
              BackgroundWidget(),

              // Centered form content
              Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Intro text
                        IntroTextWidget(title: AppStrings.createAnAccount),
                        const SizedBox(height: 24),

                        // Password input
                        FullNameWidget(fullNameFocusNode: fullnamefocusnode),
                        const SizedBox(height: 10),

                        // Email input

                        EmailAddessSignup(emailFocusNode: emailFocusNode),
                        const SizedBox(height: 10),

                        // phone number
                        PhoneNumberSignup(
                            phoneNumberFocusNode: phoneNumberFocusNode),
                        const SizedBox(height: 10),

                        //Date of birth
                        // DateofbirthWidget(
                        //     dateOfBirthFocusNode: dateOfBirthFocusNode),
                        // const DateofbirthWidget(),
                        const DatePickerBottomSheet(),
                        const SizedBox(height: 10),

                        //password
                        PasswordWidget(
                          passwordFocusNode: passwordFocusNode,
                        ),
                        const SizedBox(height: 10),

                        //confrim password
                        ConfrimPasswordSignup(
                          confrimPasswordFocusNode: confrimPasswordFocusNode,
                        ),
                        const SizedBox(height: 10),

                        //    //Sign up button
                        SignupButton(
                          formKey: _formKey,
                        ),
                        const SizedBox(height: 15),

                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

/// API Routes Configuration
class ApiRoutes {
  static const String baseUserRoute =
      'https://staging.karnaphulijewellery.com/api/app/user';
  static String signupApi = '$baseUserRoute/auth/registration';
}

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _docIdController = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  final countryPicker = const FlCountryCodePicker();
  CountryCode? selectedCountry;
  String phoneNumber = '';

  String _selectedType = 'nid'; // Default dropdown value
  final List<String> _docTypes = [
    'nid',
    'id_card',
    'driving_license',
    'passport'
  ];

  Map<String, String> documentTypeDisplay = {
    'nid': 'NID',
    'id_card': 'ID Card',
    'driving_license': 'Driving License',
    'passport': 'Passport',
  };

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _dobController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  /// Submit the form
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final body = {
        "name": _fullNameController.text.trim(),
        "email": _emailController.text.trim(),
        "phone_number": phoneNumber,
        "password": _passwordController.text,
        "type": _selectedType, // Dynamic value from dropdown
        "docId":
            _docIdController.text.trim(), // Dynamic value from TextFormField
        "dob": _dobController.text.trim(),
      };

      print("User Input Data: $body");

      _registerUser(body);
    }
  }

  /// Send API Request
  Future<void> _registerUser(Map<String, dynamic> body) async {
    try {
      final response = await http.post(
        Uri.parse(ApiRoutes.signupApi),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(body),
      );

      if (response.statusCode == 200) {
        // Success
        final responseData = json.decode(response.body);
        print('Registration successful: $responseData');
        _showSuccessDialog('Registration successful!');
      } else {
        // Handle error
        final errorResponse = json.decode(response.body);
        final errorMessage =
            errorResponse['message'] ?? 'An unexpected error occurred.';
        _showErrorDialog(errorMessage);
      }
    } catch (error) {
      print('Error occurred: $error');
      _showErrorDialog('An error occurred. Please check your connection.');
    }
  }

  /// Show error dialog
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  /// Show success dialog
  void _showSuccessDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Success'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  /// Pick date of birth
  void _pickDateOfBirth() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        _dobController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            // Background
            BackgroundWidget(),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        'Create an account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF111111),
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: _formKey,
                        child: SingleChildScrollView(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextFormField(
                                  controller: _fullNameController,
                                  decoration: InputDecoration(
                                    hintText: 'Full Name',
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF111111),
                                      fontFamily: 'Inter',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      height: 1.42857,
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFE9EDF9),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromRGBO(199, 22, 22, 0.094),
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal: 12.0,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'Please enter your full name';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF111111),
                                      fontFamily: 'Inter',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      height: 1.42857,
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFE9EDF9),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromRGBO(199, 22, 22, 0.094),
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal: 12.0,
                                    ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                        .hasMatch(value)) {
                                      return 'Please enter a valid email';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),

                                /*
                                TextFormField(
                                  controller: _phoneNumberController,
                                  decoration: InputDecoration(
                                    hintText: 'Phone Number',
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF111111),
                                      fontFamily: 'Inter',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      height: 1.42857,
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFE9EDF9),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromRGBO(199, 22, 22, 0.094),
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal: 12.0,
                                    ),
                                  ),
                                  keyboardType: TextInputType.phone,
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'Please enter your phone number';
                                    }
                                    if (!RegExp(r'^\d{10,15}$')
                                        .hasMatch(value)) {
                                      return 'Please enter a valid phone number';
                                    }
                                    return null;
                                  },
                                ),
*/
                                ////
                                ///
                                ///
                                ///
                                ///
                                ///
                                ///
                                ///
                                ///
                                ///

                                TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your phone number',
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF111111),
                                      fontFamily: 'Inter',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      height: 1.42857,
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFE9EDF9),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Color.fromRGBO(17, 17, 17, 0.10),
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 12.0),
                                    prefixIcon: GestureDetector(
                                      onTap: _showCountryPicker,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const SizedBox(width: 5),
                                          if (selectedCountry != null)
                                            selectedCountry!.flagImage(
                                                width: 24,
                                                fit: BoxFit
                                                    .fitWidth), // Call flagImage as a function
                                          const SizedBox(width: 4),
                                          Text(
                                            selectedCountry != null
                                                ? selectedCountry!.dialCode
                                                : '+1', // Default country code
                                            style:
                                                const TextStyle(fontSize: 16),
                                          ),
                                          const Icon(Icons.arrow_drop_down),
                                          const SizedBox(width: 8),
                                        ],
                                      ),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    phoneNumber =
                                        '${selectedCountry?.dialCode ?? '1'}$value'
                                            .replaceAll('+', '');
                                    print(
                                        'Formatted phone number: $phoneNumber');
                                  },
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please provide a phone number';
                                    }
                                    return null;
                                  },
                                  onFieldSubmitted: (value) {},
                                ),

                                ///
                                ///
                                ///

                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: _pickDateOfBirth,
                                  child: AbsorbPointer(
                                    child: TextFormField(
                                      controller: _dobController,
                                      decoration: InputDecoration(
                                        hintText: 'Date of Birth',
                                        suffixIcon: Image.asset(
                                          'assets/icons/calendar-forsingup.png',
                                          height: 15,
                                          color: Colors.black.withOpacity(0.8),
                                        ),
                                        // const Icon(Icons.calendar_today),
                                        hintStyle: const TextStyle(
                                          color: Color(0xFF111111),
                                          fontFamily: 'Inter',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                          height: 1.42857,
                                        ),
                                        filled: true,
                                        fillColor: const Color(0xFFE9EDF9),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                199, 22, 22, 0.094),
                                          ),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                          vertical: 12.0,
                                          horizontal: 12.0,
                                        ),
                                      ),
                                      readOnly:
                                          true, // Ensures the field cannot be edited directly
                                      validator: (value) {
                                        if (value == null ||
                                            value.trim().isEmpty) {
                                          return 'Please select your date of birth';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),

                                TextFormField(
                                  controller: TextEditingController(
                                    text: _selectedType != null
                                        ? documentTypeDisplay[_selectedType]
                                        : '',
                                  ),
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: 'Select Document Type',
                                    filled: true,
                                    fillColor: const Color(0xFFE9EDF9),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal: 12.0,
                                    ),
                                  ),
                                  onTap:
                                      _showDocumentTypeBottomSheet, // Show the bottom sheet on tap
                                  validator: (value) {
                                    if (_selectedType.isEmpty) {
                                      return 'Please select a document type';
                                    }
                                    return null;
                                  },
                                ),

                                const SizedBox(height: 10),
                                TextFormField(
                                  controller: _docIdController,
                                  decoration: InputDecoration(
                                    hintText: 'Document ID',
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF111111),
                                      fontFamily: 'Inter',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      height: 1.42857,
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFE9EDF9),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal: 12.0,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'Please enter your document ID';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _isPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isPasswordVisible =
                                              !_isPasswordVisible;
                                        });
                                      },
                                    ),
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF111111),
                                      fontFamily: 'Inter',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      height: 1.42857,
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFE9EDF9),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromRGBO(199, 22, 22, 0.094),
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal: 12.0,
                                    ),
                                  ),
                                  obscureText: !_isPasswordVisible,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    if (value.length < 6) {
                                      return 'Password must be at least 6 characters';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller: _confirmPasswordController,
                                  decoration: InputDecoration(
                                    hintText: 'Confirm Password',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _isPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isConfirmPasswordVisible =
                                              !_isConfirmPasswordVisible;
                                        });
                                      },
                                    ),
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF111111),
                                      fontFamily: 'Inter',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      height: 1.42857,
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFE9EDF9),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color:
                                            Color.fromRGBO(199, 22, 22, 0.094),
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal: 12.0,
                                    ),
                                  ),
                                  obscureText: !_isConfirmPasswordVisible,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please confirm your password';
                                    }
                                    if (value != _passwordController.text) {
                                      return 'Passwords do not match';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20),

                                GestureDetector(
                                  onTap: _submitForm,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 16.0),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF111111),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GlobalTextWidget(
                                          title: AppStrings.signup,
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: 400,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                10.h,

                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 16.0),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: const Color(0xFFE8EDF1),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GlobalTextWidget(
                                          title: 'Back',
                                          color: Color(0xFF111111),
                                          fontSize: 15,
                                          fontWeight: 700,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDocumentTypeBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text('Select Document Type',
                      style: TextStyle(fontSize: 15)),
                ),
                ListView.separated(
                  shrinkWrap:
                      true, // Ensures the bottom sheet isn't unnecessarily large
                  itemCount: _docTypes.length,
                  itemBuilder: (BuildContext context, int index) {
                    final type = _docTypes[index];
                    final displayType = documentTypeDisplay[type] ??
                        type; // Get display value or default to API value
                    return ListTile(
                      title: Text(displayType), // Display the formatted type
                      onTap: () {
                        setState(() {
                          _selectedType = type; // Update the selected type
                        });
                        Navigator.pop(context); // Close the bottom sheet
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      height: 1,
                      thickness: 0.3,
                      color: Color.fromARGB(
                          255, 163, 163, 163), // Customize divider color
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showCountryPicker() async {
    final country = await countryPicker.showPicker(context: context);
    if (country != null) {
      setState(() {
        selectedCountry = country;
      });
    }
  }
}
