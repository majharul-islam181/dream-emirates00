import 'package:dream_emirates/bloc/login_bloc/login_bloc.dart';
import 'package:dream_emirates/bloc/signup_bloc/signup_bloc.dart';
import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:dream_emirates/utils/flash_bar_helper.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignupButton extends StatelessWidget {
  final formKey;
  // final VoidCallback onLoginSuccess;
  const SignupButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupBloc, SignupState>(
      listenWhen: (previous, current) =>
          current.postApiStatus != previous.postApiStatus,
      listener: (context, state) {
        if (state.postApiStatus == PostApiStatus.error) {
          FlashBarHelper.flushBarErrorMessage(
              state.message.toString(), context);
          // print(state.message.toString());
        }
        if (state.postApiStatus == PostApiStatus.success) {
          FlashBarHelper.flushBarSuccessMessage('Login successful', context);
          context.go('/home');
          // onLoginSuccess();
          // Navigator.pushNamed(context, RoutesName.rootScreen);
          // Navigator.pushAndRemoveUntil(
          //   context,
          //   MaterialPageRoute(builder: (context) => const BottomNavScreen()

          //   ),
          //   (Route<dynamic> route) => false,
          // );
          // ScaffoldMessenger.of(context)
          //   ..hideCurrentSnackBar()
          //   ..showSnackBar(SnackBar(content: Text(state.message.toString())));

          // if (kDebugMode) {
          //   print("data:   ${state.message}");
          // }
        }
      },
      child: BlocBuilder<SignupBloc, SignupState>(
          buildWhen: (previous, current) =>
              current.postApiStatus != previous.postApiStatus,
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  context.read<SignupBloc>().add(SignUpButtonEvent());
                }
              },
              child: Container(
                // height: 42,
                // width: 343.0, // Set the width
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF111111),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const GlobalTextWidget(
                      title: AppStrings.signin,
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: 400,
                    ),
                    10.w,
                    state.postApiStatus == PostApiStatus.loading
                        ? const CupertinoActivityIndicator(
                            color: AppColors.purple,
                          )
                        : Image.asset(
                            'assets/icons/arrow-right.png',
                            height: 16,
                            width: 16,
                          )
                  ],
                ),
              ),
            );
          }),
    );
  }
}


      // top: 439,
      // left: 23,
      // right: 24,