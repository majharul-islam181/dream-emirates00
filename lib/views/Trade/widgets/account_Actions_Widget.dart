// ignore_for_file: file_names

import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountActionsWidget extends StatelessWidget {
  const AccountActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/icons/arrow-down-blue.svg',
          height: 24,
        ),
        16.w,
        SvgPicture.asset(
          'assets/icons/arrow-up-yellow.svg',
          height: 24,
        ),
        16.w,
        SvgPicture.asset(
          'assets/icons/timer.svg',
          height: 24,
        ),
        16.w,
      ],
    );
  }
}
