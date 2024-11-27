// ignore_for_file: unused_field

import 'package:dream_emirates/bloc/login_bloc/login_bloc.dart';
import 'package:dream_emirates/main.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/PasswordReset/password_reset_screen.dart';
import 'package:dream_emirates/views/SignIn/widgets/widgets.dart';
import 'package:dream_emirates/views/Signin/widgets/forgot_password_button.dart';
import 'package:dream_emirates/views/SignupScreen/signup_screen.dart';
import 'package:dream_emirates/views/SignupScreen/widgets/signup_button.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  late double height;
  late double width;
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  late LoginBloc _loginBloc;

  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc(loginRepository: getIt());
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
                        IntroTextWidget(title: AppStrings.signinIntro),
                        const SizedBox(height: 24),

                        // Email input
                        EmailInputWidget(emailFocusNode: emailFocusNode),
                        const SizedBox(height: 16),

                        // Password input
                        PasswordInputWidget(
                            passwordFocusNode: passwordFocusNode),
                        const SizedBox(height: 16),

                        // Remember me checkbox
                        const RememberMeCheckbox(),
                        const SizedBox(height: 24),

                        // Sign in button
                        SigninButton(formKey: _formKey),
                        const SizedBox(height: 15),

                        //Sign up button
                        // GestureDetector(
                        //     onTap: () {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) =>
                        //                   const SignupScreen()));
                        //     },
                        //     child: SignupButton(
                        //       formKey: _formKey,
                        //     )),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignupScreen()));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 16.0),
                            decoration: BoxDecoration(
                              // color: Colors.transparent,
                              color: const Color(0xFFF3F6FF),
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: const Color(0xFFE8EDF1),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GlobalTextWidget(
                                  title: AppStrings.signup,
                                  color: Color(0xFF111111),
                                  fontSize: 15,
                                  fontWeight: 700,
                                ),
                              ],
                            ),
                          ),
                        ),
                        // IconButton(
                        //   icon: const Icon(
                        //     Icons.arrow_forward,
                        //     color: Colors.black,
                        //   ),
                        //   onPressed: () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) =>
                        //                 const SignupScreen()));
                        //   },
                        // ),

                        const SizedBox(height: 15),

                        ForgotPasswordButton(
                          onTap: (context) {
                            print('clicked');
                            // context.go(
                            //     '/forgot-password');

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PasswordResetScreen()));
                          },
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
    );
  }
}
