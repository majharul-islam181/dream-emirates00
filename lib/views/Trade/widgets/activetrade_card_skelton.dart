// ignore_for_file: must_be_immutable

import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/main.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:flutter/material.dart';

class ActivetradeCardSkelton extends StatelessWidget {
  ActivetradeCardSkelton({super.key});
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        // const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(
            top: 08.0,
            right: 12,
            left: 12,
          ),
          child: ContainerWidet(
            initialHeight: height * .19,
            initialWidth: width - 10,
            backgroundColor: Colors.white,
            borderWidth: 0,
            borderRadious: 16,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Skelton(
                            height: height * .035,
                            width: width * .08,
                            borderRadious: 50,
                          ),
                          10.w,
                          Skelton(
                            height: height * .03,
                            width: width * .25,
                            borderRadious: 5,
                          ),
                          10.w,
                        ],
                      ),
                      Row(
                        children: [
                          Skelton(
                            height: height * .032,
                            width: width * .1,
                            borderRadious: 10,
                          ),
                          10.w,
                          Skelton(
                            height: height * .032,
                            width: width * .2,
                            borderRadious: 10,
                          ),
                          5.w,
                        ],
                      ),
                    ],
                  ),
                  8.h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Skelton(
                        height: height * .025,
                        width: width * .41,
                        borderRadious: 5,
                      ),
                      Row(
                        children: [
                          Skelton(
                            height: height * .025,
                            width: width * .18,
                            borderRadious: 5,
                          ),
                          10.w,
                          Skelton(
                            height: height * .025,
                            width: width * .18,
                            borderRadious: 5,
                          ),
                          5.w,
                        ],
                      ),
                    ],
                  ),
                  8.h,
                  Skelton(
                      height: height * .002,
                      width: width * .9,
                      borderRadious: 8),
                  15.h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Skelton(
                            height: height * .035,
                            width: width * .15,
                            borderRadious: 15,
                          ),
                          10.w,
                          Skelton(
                            height: height * .035,
                            width: width * .15,
                            borderRadious: 15,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Skelton(
                            height: height * .02,
                            width: width * .05,
                            borderRadious: 15,
                          ),
                          10.w,
                        ],
                      ),
                    ],
                  ),
                ],
              ),
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
