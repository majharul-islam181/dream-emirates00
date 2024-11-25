// ignore_for_file: unused_field

import 'package:dream_emirates/bloc/signup_bloc/signup_bloc.dart';
import 'package:dream_emirates/main.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/SignIn/widgets/background_widget.dart';
import 'package:dream_emirates/views/SignupScreen/widgets/confrim_password_signup.dart';
import 'package:dream_emirates/views/SignupScreen/widgets/dateofBirth_widget.dart';
import 'package:dream_emirates/views/SignupScreen/widgets/email_addess_signup.dart';
import 'package:dream_emirates/views/SignupScreen/widgets/full_name_widget.dart';
import 'package:dream_emirates/views/SignupScreen/widgets/password_widget.dart';
import 'package:dream_emirates/views/SignupScreen/widgets/phone_number_signup.dart';
import 'package:dream_emirates/views/SignupScreen/widgets/signup_button.dart';
import 'package:dream_emirates/views/widgets/introTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
