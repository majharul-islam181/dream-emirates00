import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class YourAccountStatic extends StatelessWidget {
  const YourAccountStatic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 12.0),
      child: GlobalTextWidget(
        title: AppStrings.yourAccount,
        fontSize: 20,
        fontWeight: 500,
        opacity: 0.5,
      ),
    );
  }
}
