// ignore_for_file: must_be_immutable

import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/Trade/widgets/buy_widget.dart';
import 'package:dream_emirates/views/Trade/widgets/closed_widget.dart';
import 'package:dream_emirates/views/Trade/widgets/open_widget.dart';
import 'package:dream_emirates/views/Trade/widgets/pending_widget.dart';
import 'package:dream_emirates/views/Trade/widgets/sell_widget.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class BottomCardWidget extends StatelessWidget {
  BottomCardWidget(
      {super.key,
      required this.tradeID,
      required this.type,
      this.isCloseTrade = false,
      this.isOpenTrade = false,
      this.isPendingTrade = false,
      required this.tradeType,
      this.jewelryHOW = ''});
  late double height;
  late double width;
  String tradeID;
  String type;
  String jewelryHOW;
  String tradeType;
  bool isOpenTrade, isCloseTrade, isPendingTrade;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return //card
        Card(
      elevation: 0.5,
      child: ContainerWidet(
        initialHeight: height * .14,
        initialWidth: width * .9,
        backgroundColor: AppColors.whiteColor,
        borderRadious: 16,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Trade
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GlobalTextWidget(
                    title: 'Trade ID',
                    fontSize: 12,
                    fontWeight: 400,
                    opacity: 0.5,
                  ),
                  GlobalTextWidget(
                    title: 'Type',
                    fontSize: 12,
                    fontWeight: 400,
                    opacity: 0.5,
                  ),
                ],
              ),

              //number
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GlobalTextWidget(
                    title: tradeID,
                    fontSize: 15,
                    fontWeight: 600,
                  ),
                  GlobalTextWidget(
                    title: type,
                    fontSize: 15,
                    fontWeight: 600,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Button
                  Row(
                    children: [
                      if (isOpenTrade) ...[
                        OpenWidget(),
                        const SizedBox(width: 8),
                        tradeType == "BUY" ? BuyWidget() : SellWidget(),
                      ] else if (isCloseTrade) ...[
                        ClosedWidget(),
                        const SizedBox(width: 8),
                        tradeType == "BUY" ? BuyWidget() : SellWidget(),
                      ] else if (isPendingTrade) ...[
                        PendingWidget(),
                        const SizedBox(width: 8),
                        tradeType == "BUY" ? BuyWidget() : SellWidget(),
                      ],
                    ],
                  ),
                  // Arrow down
                  const Icon(Icons.keyboard_arrow_up_outlined),
                ],
              )

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Row(
              //       children: [
              //         // Conditional rendering based on tradeType
              //         if (tradeType == 'BUY') ...[
              //           OpenWidget(),
              //           8.w,
              //           BuyWidget(),
              //         ] else if (tradeType == 'SELL') ...[
              //           OpenWidget(), 8.w,
              //           SellWidget(), // Assuming you want a SellWidget for SELL type
              //         ] else ...[
              //           // You can add more conditions or default cases here
              //           ClosedWidget(), // For other trade types
              //         ],

              //         //   8.w, // Responsive spacing
              //         // OpenWidget(),
              //         // 5.w,
              //         // BuyWidget(),
              //       ],
              //     ),
              //     const GlobalTextWidget(
              //       title: '',
              //       // title: 'Jewelry ${jewelryHOW}K',
              //       fontSize: 12,
              //       fontWeight: 400,
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
