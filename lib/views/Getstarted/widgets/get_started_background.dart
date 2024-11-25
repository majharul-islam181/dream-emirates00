// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class GetStartedBackground extends StatelessWidget {
  GetStartedBackground({super.key});

  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Positioned(
      top: 60,
      child: Container(
        height: 364,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/Ellipse 6 (3).png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


//377