// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionButtonWidget extends StatelessWidget {
  ActionButtonWidget(
      {super.key,
      required this.title,
      required this.imageSVG,
      this.imageColor = AppColors.darkGray,
      this.textColor = AppColors.darkGray,
      this.borderWidth = 2,
      required this.onPressed,
      this.backgroundColor = AppColors.moreActionColor});
  late double height;
  late double width;
  String title;
  String imageSVG;
  Color imageColor;
  Color textColor;
  Color backgroundColor;
  double borderWidth;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: ContainerWidet(
        initialHeight: height * .05,
        initialWidth: width * .9,
        backgroundColor: backgroundColor,
        borderRadious: 10,
        borderColor: Colors.white,
        borderWidth: borderWidth,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                imageSVG,
                height: 24,
                width: 24,
                color: imageColor,
              ),
              12.w,
              GlobalTextWidget(
                title: title,
                fontSize: 15,
                fontWeight: 400,
                color: textColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
