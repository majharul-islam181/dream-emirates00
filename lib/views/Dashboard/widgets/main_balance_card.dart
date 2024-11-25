// ignore_for_file: must_be_immutable

import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class MainBalanceCard extends StatelessWidget {
  MainBalanceCard(
      {super.key,
      required this.currency,
      required this.depositeTap,
      this.title = AppStrings.mainBalance});
  late double height;
  late double width;
  String currency, title;
  void Function()? depositeTap;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ContainerWidet(
      initialHeight: height * .22,
      initialWidth: width * .95,
      backgroundColor: Colors.white,
      borderRadious: 16,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main balance
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GlobalTextWidget(
                  title: title,
                  fontSize: 14,
                  fontWeight: 400,
                  opacity: 0.5,
                ),
                Container()
                // Image.asset(
                //   'assets/icons/arrow-right.png',
                //   height: 16,
                //   width: 16,
                //   color: Colors.black,
                // )
              ],
            ),
            10.h,

            GlobalTextWidget(
              title: currency,
              fontSize: 32,
              fontWeight: 700,
            ),
            12.h,
            /*

            Row(
              children: [
                Image.asset(
                  'assets/icons/arrow-up (2).png',
                  width: 16,
                  height: 16,
                ),

              

                //percent
                Row(
                  children: [
                    //20
                    const GlobalTextWidget(
                      title: '20',
                      fontWeight: 400,
                      fontSize: 14,
                      color: AppColors.green,
                    ),
                    1.w,

                    //%
                    const GlobalTextWidget(
                      title: '%',
                      fontWeight: 400,
                      fontSize: 14,
                      color: AppColors.green,
                    ),
                    3.w,
                    const GlobalTextWidget(
                      title: AppStrings.moreThanlastmonth,
                      fontWeight: 400,
                      fontSize: 14,
                      opacity: 0.5,
                    ),
                  ],
                ),

               
              ],
            ),

            */

            //vertical line
            Divider(
              thickness: 1,
              color: Colors.grey.withOpacity(0.5),
            ),
            5.h,

            //deposite withdraw
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: depositeTap,
                  child: ContainerWidet(
                    initialHeight: height * .06,
                    initialWidth: width * .42,
                    backgroundColor: AppColors.darkGray,
                    borderRadious: 12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 16,
                        ),
                        12.w,
                        const GlobalTextWidget(
                          title: AppStrings.deposite,
                          fontSize: 15,
                          fontWeight: 400,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                5.w,
                ContainerWidet(
                  initialHeight: height * .0576,
                  initialWidth: width * .4,
                  backgroundColor: const Color(0xFFE8EDF1),
                  borderRadious: 12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/minus.png'),
                      12.w,
                      const GlobalTextWidget(
                        title: AppStrings.withdraw,
                        fontSize: 15,
                        fontWeight: 400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
