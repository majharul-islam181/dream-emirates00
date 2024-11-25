// ignore_for_file: file_names, must_be_immutable

import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class ImageWithTitle extends StatelessWidget {
  ImageWithTitle(
      {super.key,
      required this.name,
      this.imageUrl = 'assets/icons/men.png',
      this.isNeed = false,
      this.fontSize = 20});
  String imageUrl;
  String name;
  final bool isNeed;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: _getImageProvider(imageUrl),
          backgroundColor: Colors.transparent,
        ),
        16.w,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GlobalTextWidget(
              title: AppStrings.welcomeBack,
              fontSize: 14,
              fontWeight: 400,
              color: Colors.white,
            ),
            5.h,
            GlobalTextWidget(
              title: name,
              fontSize: fontSize,
              fontWeight: 600,
              color: Colors.white,
            ),
          ],
        ),
        10.w,
        if (isNeed)
          const Icon(
            Icons.arrow_drop_down_circle_outlined,
            color: Colors.red,
          ),
      ],
    );
  }

  ImageProvider _getImageProvider(String imageUrl) {
    if (Uri.tryParse(imageUrl)?.isAbsolute ?? false) {
      return NetworkImage(imageUrl);
    } else {
      return const AssetImage('assets/icons/men.png');
    }
  }
}
