// ignore_for_file: must_be_immutable

import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets.dart';

class OpenBuyTrade extends StatelessWidget {
  OpenBuyTrade({super.key});
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 7.0, right: 12, left: 12),
      child: Card(
        child: ContainerWidet(
          initialHeight: height * .19,
          initialWidth: width,
          backgroundColor: Colors.white,
          borderRadious: 12,
          borderWidth: 1,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //1st Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //ID
                    Row(
                      children: [
                        const GlobalTextWidget(
                          title: 'ID: ',
                          fontSize: 16,
                          fontWeight: 700,
                        ),
                        8.w,
                        const GlobalTextWidget(
                          title: '1234',
                          fontSize: 16,
                          fontWeight: 700,
                        ),
                      ],
                    ),
                    10.h,

                    //PL

                    Row(
                      children: [
                        const GlobalTextWidget(
                          title: 'P/L ',
                          fontSize: 14,
                          fontWeight: 500,
                        ),
                        5.w,
                        const GlobalTextWidget(
                          title: '7.80079',
                          fontSize: 14,
                          fontWeight: 400,
                          color: AppColors.green,
                        ),
                        5.w,
                        SvgPicture.asset(
                          'assets/icons/IconTop.svg',
                          height: 16,
                        )
                      ],
                    ),
                  ],
                ),

                //2nd Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //type
                    Row(
                      children: [
                        const GlobalTextWidget(
                          title: 'Type: ',
                          fontSize: 14,
                          fontWeight: 500,
                          opacity: 0.5,
                        ),
                        8.w,
                        const GlobalTextWidget(
                          title: 'TTB',
                          fontSize: 14,
                          fontWeight: 500,
                          opacity: 0.5,
                        ),
                      ],
                    ),

                    //Live rate
                    Row(
                      children: [
                        const GlobalTextWidget(
                          title: 'Live rate: ',
                          fontSize: 14,
                          fontWeight: 500,
                          opacity: 0.5,
                        ),
                        8.w,
                        const GlobalTextWidget(
                          title: '155.84',
                          fontSize: 14,
                          fontWeight: 500,
                          opacity: 0.5,
                        ),
                      ],
                    ),
                  ],
                ),

                //3rd row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Quantity
                    Row(
                      children: [
                        const GlobalTextWidget(
                          title: 'Quantity: ',
                          fontSize: 14,
                          fontWeight: 500,
                          opacity: 0.5,
                        ),
                        8.w,
                        const GlobalTextWidget(
                          title: '4',
                          fontSize: 14,
                          fontWeight: 500,
                          opacity: 0.5,
                        ),
                      ],
                    ),
                    //Opening rate
                    Row(
                      children: [
                        const GlobalTextWidget(
                          title: 'Opening rate: ',
                          fontSize: 14,
                          fontWeight: 500,
                        ),
                        8.w,
                        const GlobalTextWidget(
                          title: '155.84',
                          fontSize: 14,
                          fontWeight: 500,
                        ),
                      ],
                    ),
                  ],
                ),

                const Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Button
                    Row(
                      children: [
                        OpenWidget(),
                        8.w,
                        BuyWidget(),
                        // 8.w,
                        //  SellWidget(),
                        // 8.w,
                        //  ClosedWidget(),
                        // 8.w,
                        //  PendingWidget()
                      ],
                    ),

                    //arrow down
                    const Icon(Icons.keyboard_arrow_up_outlined),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
