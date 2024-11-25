// ignore_for_file: must_be_immutable

import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:flutter/material.dart';

class GoldSkelton extends StatelessWidget {
  GoldSkelton({super.key});
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2.0, top: 6),
              child: ContainerWidet(
                initialHeight: height * .08,
                initialWidth: width * .6,
                backgroundColor: Colors.white,
                borderWidth: 0,
                borderRadious: 10,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 10.0, right: 12, bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //buttons
                      Skelton(
                        height: height * .045,
                        width: width * .05,
                        borderRadious: 8,
                      ),
                      10.w,
                      Row(
                        children: [
                          Skelton(
                            height: height * .045,
                            width: width * .4,
                            borderRadious: 8,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            10.w,
            Padding(
              padding: const EdgeInsets.only(left: 2.0, top: 6),
              child: ContainerWidet(
                initialHeight: height * .08,
                initialWidth: width * .6,
                backgroundColor: Colors.white,
                borderWidth: 0,
                borderRadious: 10,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 10.0, right: 12, bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //buttons
                      Skelton(
                        height: height * .045,
                        width: width * .05,
                        borderRadious: 8,
                      ),
                      10.w,
                      Row(
                        children: [
                          Skelton(
                            height: height * .045,
                            width: width * .4,
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
        ),
      ),
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
