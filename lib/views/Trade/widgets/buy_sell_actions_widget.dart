// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:dream_emirates/config/colors/colors.dart';
import 'package:flutter/material.dart';

import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';

class BuySellActionsWidget extends StatelessWidget {
  String buyAmount, sellAmount;
  BuySellActionsWidget({
    super.key,
    required this.sellAmount,
    required this.buyAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const GlobalTextWidget(
          title: 'Buy',
          fontWeight: 400,
          fontSize: 12,
          opacity: 0.5,
        ),
        5.w,
        GlobalTextWidget(
          title: buyAmount,
          fontWeight: 600,
          fontSize: 12,
          color: AppColors.buyTradeColor,
        ),
        10.w,
        const GlobalTextWidget(
          title: 'Sell',
          fontWeight: 400,
          fontSize: 12,
          opacity: 0.5,
        ),
        5.w,
        GlobalTextWidget(
          title: sellAmount,
          fontWeight: 600,
          fontSize: 12,
          color: AppColors.sellTradeColor,
        ),
      ],
    );
  }
}
