// ignore_for_file: file_names

import 'package:flutter/material.dart';

extension SpaceWidthExtension on int {
  // Create SizedBox with width
  Widget get w => SizedBox(width: toDouble());
}

extension SpaceHeightExtension on int {
  // Create SizedBox with height
  Widget get h => SizedBox(height: toDouble());
}
