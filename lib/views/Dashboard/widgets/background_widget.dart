// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BackgroundWidgetDashboard extends StatelessWidget {
  BackgroundWidgetDashboard({super.key});

  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      height: 364,
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background/Ellipse 6_home.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
