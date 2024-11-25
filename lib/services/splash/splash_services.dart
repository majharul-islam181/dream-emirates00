import 'dart:async';
import 'package:dream_emirates/views/Dashboard/dashboard_screen.dart';
import 'package:dream_emirates/views/Navbar/navbar.dart';
import 'package:dream_emirates/views/Signin/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../session_manager/session_controller.dart';
/*
class SplashServices {
  void isLogin(BuildContext context) {
    SessionController().getUserFromPreference().then((value) {
      print('i am in SPLASH SERVICE');
      if (SessionController().isLogin ?? false) {
        // print('i am in SPLASH SERVICE');
        Timer(
          const Duration(seconds: 1),
          () => context.go('/home'),
        );
        // Timer(
        //   const Duration(seconds: 1),
        //   () => Navigator.pushAndRemoveUntil(
        //     context,
        //     MaterialPageRoute(builder: (context) => const BottomNavScreen()),
        //     (route) => false,
        //   ),
        // );
      } else {
        Timer(
          const Duration(seconds: 3),
          () => context.go('/login'),
        );
        // Timer(
        //   const Duration(seconds: 3),
        //   () => Navigator.pushAndRemoveUntil(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => const SigninScreen(
        //               onLoginSuccess: () {},
        //             )),
        //     (route) => false,
        //   ),
        // );
      }
    }).onError((error, stackTrace) {
      print('i am ERROR in SPLASH SERVICE');
      Timer(
        const Duration(seconds: 3),
        () => context.go('/login'),
      );

      // Timer(
      //   const Duration(seconds: 3),
      //   () => Navigator.pushAndRemoveUntil(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => const SigninScreen(
      //               onLoginSuccess: () {},
      //             )),
      //     (route) => false,
      //   ),
      // );
    });
  }
}
*/

class SplashServices {
  void isLogin(BuildContext context) {
    SessionController().getUserFromPreference().then((_) {
      // Check if the user is already logged in
      if (SessionController().isLogin) {
        // Navigate to the home screen (BottomNavScreen)
        Timer(
          const Duration(seconds: 1),
          () => context.go('/home'),
        );
        print('login to home page coming.................');
      } else {
        // Navigate to the login screen
        Timer(
          const Duration(seconds: 3),
          () => context.go('/login'),
        );
      }
    }).onError((error, stackTrace) {
      // Handle any error that occurs during checking login status
      Timer(
        const Duration(seconds: 3),
        () => context.go('/login'),
      );
    });
  }
}
