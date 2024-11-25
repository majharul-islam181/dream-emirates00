// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class IntroTextWidget extends StatelessWidget {
  IntroTextWidget({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toString(),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Color(0xFF111111),
        fontFamily: 'Inter',
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.0,
      ),
    );
  }
}
    // top: 214,
    //   left: 62,
    //   right: 61,