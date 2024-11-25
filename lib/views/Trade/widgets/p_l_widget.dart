// ignore_for_file: public_member_api_docs, sort_constructors_first, use_super_parameters
import 'package:flutter/material.dart';

import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';

class PLWidget extends StatelessWidget {
  final String amount;
  const PLWidget({
    Key? key,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const GlobalTextWidget(
          title: 'P/L',
          fontWeight: 400,
          fontSize: 12,
        ),
        8.w,
        GlobalTextWidget(
          title: '\$ $amount',
          fontWeight: 400,
          fontSize: 12,
          color: AppColors.green,
        ),
      ],
    );
  }
}
