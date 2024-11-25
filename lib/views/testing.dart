import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  TestingState createState() => TestingState();
}

class TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 250,
              left: 50,
              right: 50,
              child: Image.asset('assets/background/Dream Emirates.png')),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/background/splash_screen_background.png',
              fit: BoxFit.cover,
              width: width,
            ),
          ),
        ],
      ),
    );
  }
}
