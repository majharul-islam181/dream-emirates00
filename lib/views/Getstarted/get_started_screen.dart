import 'package:dream_emirates/views/Getstarted/widgets/get_started_background.dart';
import 'package:dream_emirates/views/Getstarted/widgets/get_started_button.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  late double height;
  late double width;
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  // final bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0x0fff3f6f),
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            //background
            GetStartedBackground(),

            //forgot password
            const GetStartedButton(),
          ],
        ),
      ),
    );
  }
}
