// ignore_for_file: must_be_immutable

import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:flutter/material.dart';

class ChartSkelton extends StatelessWidget {
  ChartSkelton({super.key});
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2.0, top: 6),
          child: ContainerWidet(
            initialHeight: height * .55,
            initialWidth: width * .9,
            backgroundColor: Colors.white,
            borderWidth: 0,
            borderRadious: 16,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 14.0, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Skelton(
                            height: height * .03,
                            width: width * .22,
                            borderRadious: 8,
                          ),
                          Skelton(
                            height: height * .03,
                            width: width * .22,
                            borderRadious: 8,
                          ),
                        ],
                      ),
                      10.h,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Skelton(
                            height: height * .03,
                            width: width * .25,
                            borderRadious: 8,
                          ),
                          Skelton(
                            height: height * .03,
                            width: width * .25,
                            borderRadious: 8,
                          ),
                        ],
                      )
                    ],
                  ),
                  40.h,
                  Skelton(
                      height: height * .01,
                      width: width * .25,
                      borderRadious: 8),
                  20.h,
                  Skelton(
                      height: height * .01,
                      width: width * .26,
                      borderRadious: 8),
                  20.h,
                  Skelton(
                      height: height * .01,
                      width: width * .27,
                      borderRadious: 8),
                  20.h,
                  Skelton(
                      height: height * .01,
                      width: width * .25,
                      borderRadious: 8),
                  20.h,
                  Skelton(
                      height: height * .01,
                      width: width * .28,
                      borderRadious: 8),
                  20.h,
                  Skelton(
                      height: height * .01,
                      width: width * .27,
                      borderRadious: 8),
                  20.h,
                  Skelton(
                      height: height * .01,
                      width: width * .25,
                      borderRadious: 8),
                  20.h,
                  Skelton(
                      height: height * .01,
                      width: width * .29,
                      borderRadious: 8),
                  20.h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Skelton(
                          height: height * .03,
                          width: width * .25,
                          borderRadious: 5),
                      Skelton(
                          height: height * .03,
                          width: width * .25,
                          borderRadious: 5),
                    ],
                  ),
                  12.h,
                  //divider
                  Skelton(
                      height: height * .002,
                      width: width * .9,
                      borderRadious: 8),

                  10.h,

                  //buttons

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Skelton(
                        height: height * .045,
                        width: width * .26,
                        borderRadious: 8,
                      ),
                      Skelton(
                        height: height * .045,
                        width: width * .26,
                        borderRadious: 8,
                      ),
                      Skelton(
                        height: height * .045,
                        width: width * .26,
                        borderRadious: 8,
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
