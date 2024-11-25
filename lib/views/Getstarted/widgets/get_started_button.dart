import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 683,
      left: 23,
      right: 24,
      child: Container(
        height: 42,
        width: 343.0, // Set the width
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: const Color(0xFF111111),
          borderRadius: BorderRadius.circular(12.0),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const GlobalTextWidget(
              title: AppStrings.getStarted,
              color: Colors.white,
              fontSize: 15,
              fontWeight: 400,
            ),
            10.w,
            Image.asset(
              'assets/icons/arrow-right.png',
              height: 16,
              width: 16,
            )
          ],
        ),
      ),
    );
  }
}
