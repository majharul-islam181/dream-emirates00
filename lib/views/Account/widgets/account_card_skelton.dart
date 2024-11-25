// ignore_for_file: must_be_immutable

import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:flutter/material.dart';

class AccountCardSkelton extends StatelessWidget {
  AccountCardSkelton({super.key});
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Skelton(
              height: height * .05,
              width: width * .1,
              borderRadious: 40,
            ),
            15.w,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Skelton(height: height * .02, width: width * .3),
                5.h,
                Skelton(height: height * .03, width: width * .45),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        ContainerWidet(
          initialHeight: height * .22,
          initialWidth: width * .95,
          backgroundColor: Colors.white,
          borderWidth: 0,
          borderRadious: 16,
          child: Padding(
            padding: const EdgeInsets.only(left: 14, right: 10, bottom: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Skelton(
                  height: height * .03,
                  width: width * .3,
                  borderRadious: 8,
                ),
                12.h,
                Skelton(
                    height: height * .04, width: width * .45, borderRadious: 8),
                12.h,
                Skelton(
                    height: height * .003,
                    width: width * .85,
                    borderRadious: 8),
                12.h,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Skelton(height: height * .05, width: width * .42),
                    Skelton(height: height * .05, width: width * .42),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Skelton extends StatelessWidget {
  const Skelton(
      {super.key,
      required this.height,
      required this.width,
      this.borderRadious = 10});

  final double height;
  final double width, borderRadious;

  @override
  Widget build(BuildContext context) {
    return ContainerWidet(
      initialHeight: height,
      initialWidth: width,
      backgroundColor: Colors.black.withOpacity(0.04),
      borderColor: Colors.black.withOpacity(0.04),
      borderRadious: borderRadious,
      borderWidth: 0,
    );
  }
}
