// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets.dart';

class TradeCardWidget extends StatelessWidget {
  TradeCardWidget(
      {super.key,
      required this.id,
      required this.metal_type,
      this.openingRate = '0',
      required this.tradeType,
      required this.liveRate,
      this.pLvalue = '',
      this.openingRateText = 'Opening rate: ',
      required this.color,
      this.liveRateText = 'Live rate: ',
      this.isCloseTrade = false,
      this.isOpenTrade = false,
      this.isPendingTrade = false,
      this.openingRateForCloseTrade = '',
      this.right = 12,
      this.left = 12,
      required this.quantity});
  late double height;
  late double width;
  int id;
  String metal_type;
  int quantity;
  String openingRate;
  String tradeType;
  String liveRate;
  String pLvalue;
  Color color;
  String openingRateText;
  String liveRateText, openingRateForCloseTrade;
  bool isOpenTrade, isCloseTrade, isPendingTrade;
  double right, left;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 07.0, right: right, left: left),
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
                        GlobalTextWidget(
                          title: id.toString(),
                          fontSize: 16,
                          fontWeight: 700,
                        ),
                      ],
                    ),
                    10.h,

                    //PL
                    pLvalue == ''
                        ? Row(
                            children: [
                              const GlobalTextWidget(
                                title: '',
                                fontSize: 14,
                                fontWeight: 500,
                              ),
                              5.w,
                              GlobalTextWidget(
                                title: '',
                                fontSize: 14,
                                fontWeight: 400,
                                color: color,
                              ),
                              5.w,
                              // SvgPicture.asset(
                              //   'assets/icons/IconTop.svg',
                              //   height: 16,
                              // )
                            ],
                          )
                        : Row(
                            children: [
                              const GlobalTextWidget(
                                title: 'P/L ',
                                fontSize: 14,
                                fontWeight: 500,
                              ),
                              5.w,
                              GlobalTextWidget(
                                title: pLvalue,
                                fontSize: 14,
                                fontWeight: 400,
                                color: color,
                              ),
                              5.w,
                              tradeType == 'BUY'
                                  ? SvgPicture.asset(
                                      'assets/icons/IconTop.svg',
                                      height: 16,
                                    )
                                  : Transform.rotate(
                                      angle: 180 * 3.1415926535897932 / 180,
                                      child: SvgPicture.asset(
                                        'assets/icons/IconTop.svg',
                                        height: 16,
                                        color: Colors.red,
                                      ),
                                    )
                            ],
                          )
                  ],
                ),

                //2nd Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Metal Type
                    Row(
                      children: [
                        const GlobalTextWidget(
                          title: 'Metal Type:',
                          fontSize: 14,
                          fontWeight: 500,
                          opacity: 0.5,
                        ),
                        3.w,
                        GlobalTextWidget(
                          title: metal_type,
                          fontSize: 14,
                          fontWeight: 500,
                          opacity: 0.5,
                        ),
                      ],
                    ),

                    //Live rate
                    Row(
                      children: [
                        GlobalTextWidget(
                          title: liveRateText,
                          fontSize: 14,
                          fontWeight: 500,
                          opacity: 0.5,
                        ),
                        8.w,
                        GlobalTextWidget(
                          title: isCloseTrade
                              ? openingRateForCloseTrade
                              : liveRate,
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
                        GlobalTextWidget(
                          title: quantity.toString(),
                          fontSize: 14,
                          fontWeight: 500,
                          opacity: 0.5,
                        ),
                      ],
                    ),
                    //Opening rate
                    Row(
                      children: [
                        GlobalTextWidget(
                          title: openingRateText,
                          fontSize: 14,
                          fontWeight: 500,
                        ),
                        8.w,
                        GlobalTextWidget(
                          title: openingRate,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
