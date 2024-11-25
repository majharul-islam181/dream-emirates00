// ignore_for_file: must_be_immutable

import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class ConstTitleWidget extends StatelessWidget {
  ConstTitleWidget({super.key, required this.title, this.title1 = ''});
  String title;
  String title1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GlobalTextWidget(
          title: title,
          fontWeight: 400,
          fontSize: 14,
          color: AppColors.inkdark,
        ),
        GlobalTextWidget(
          title: title1,
          fontWeight: 400,
          fontSize: 14,
          color: AppColors.inkdark,
        ),
      ],
    );
  }
}
