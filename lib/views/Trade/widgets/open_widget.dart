// ignore_for_file: must_be_immutable

import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:flutter/material.dart';
import '../../widgets/global_text_widget.dart';

class OpenWidget extends StatelessWidget {
  OpenWidget({
    super.key,
  });
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ContainerWidet(
      initialHeight: height * .03,
      initialWidth: width * .13,
      backgroundColor: AppColors.green.withOpacity(0.1),
      borderColor: AppColors.green,
      borderWidth: 1,
      borderRadious: 20,
      child: const Center(
        child: GlobalTextWidget(
          title: 'Open',
          fontSize: 12,
          fontWeight: 400,
          color: AppColors.green,
        ),
      ),
    );
  }
}
