import 'package:dream_emirates/config/config_barrel.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key, required this.onTap});
  final void Function(BuildContext context) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(context), // Pass context to the callback
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: const Color(0xFFE8EDF1),
          ),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const GlobalTextWidget(
              title: AppStrings.backButton,
              color: Colors.black,
              fontSize: 15,
              fontWeight: 700,
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/icons/arrow-right.png',
              height: 16,
              width: 16,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
