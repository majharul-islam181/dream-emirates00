import 'package:dream_emirates/config/colors/colors.dart';
import 'package:flutter/material.dart';

class GlobalTextWidget extends StatelessWidget {
  const GlobalTextWidget({
    super.key,
    required this.title,
    this.color = AppColors.darkGray,
    this.fontSize = 32,
    this.fontWeight = 700,
    this.opacity = 1.0,
    this.maxLines,
  });

  final String title;
  final Color color;
  final double? fontSize;
  final int fontWeight;
  final double opacity;
  final int? maxLines; // Optional maxLines parameter

  @override
  Widget build(BuildContext context) {
    Color effectiveColor = color.withOpacity(opacity);
    return Text(
      title,
      style: TextStyle(
        color: effectiveColor,
        fontFamily: 'Inter',
        fontSize: fontSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.values[fontWeight ~/ 100 - 1],
        height: 1.0,
      ),
      maxLines: maxLines, // Set the maxLines for the Text widget
      overflow: maxLines != null
          ? TextOverflow.ellipsis
          : null, // Add ellipsis if maxLines is set
    );
  }
}
