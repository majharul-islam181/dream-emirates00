// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class ContainerWidet extends StatelessWidget {
  ContainerWidet({
    super.key,
    this.initialHeight = 200,
    this.initialWidth = 200,
    this.backgroundColor = Colors.white,
    this.borderRadious = 12,
    this.child,
    // this.decorationImage,
    this.borderColor = Colors.white,
    this.borderWidth = 2,
  });
  double? height, width;
  double borderRadious;
  final double? initialHeight;
  final double? initialWidth;
  Widget? child;
  Color borderColor;
  Color backgroundColor;
  double borderWidth;
  // String? decorationImage;

  @override
  Widget build(BuildContext context) {
    height = initialHeight ?? MediaQuery.of(context).size.height;
    width = initialWidth ?? MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadious),
          color: backgroundColor,
          // image: DecorationImage(
          //   image: AssetImage(decorationImage.toString()),
          // ),
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          )),
      child: child,
    );
  }
}
