// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
// ignore_for_file: must_be_immutable

import 'package:dream_emirates/bloc/price_bloc/price_bloc.dart';
import 'package:dream_emirates/bloc/price_bloc/price_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/BottomSheet/widgets/bottom_card_widget.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:intl/intl.dart';

class BottomSheetWidget extends StatelessWidget {
  late double height;
  late double width;
  // String livePrice;
  String tradeId;
  String metalType;

  String openingRate;
  String quantity;
  String opening_date;
  String treadeType,
      livePrice,
      profitLoss,
      totalValue,
      currentValue,
      openingRateForCloseTrade,
      closingpl;
  bool isOpenTrade, isCloseTrade, isPendingTrade;

  BottomSheetWidget(
      {super.key,
      required BuildContext context,
      required this.tradeId,
      required this.treadeType,
      required this.metalType,
      required this.openingRate,
      required this.quantity,
      required this.opening_date,
      this.isCloseTrade = false,
      this.isOpenTrade = false,
      this.isPendingTrade = false,
      this.livePrice = '',
      this.totalValue = '',
      this.currentValue = '',
      this.profitLoss = '',
      this.closingpl = '',
      this.openingRateForCloseTrade = ''});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    DateTime dateTime = DateTime.parse(opening_date);
    // Format the date
    String formattedDate = DateFormat('dd MMM yyyy').format(dateTime);
    return Container(
      // height: height * .8,
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            20.h,
            //card
            BottomCardWidget(
              tradeID: tradeId,
              type: metalType,
              tradeType: treadeType,
              isCloseTrade: isCloseTrade,
              isOpenTrade: isOpenTrade,
              isPendingTrade: isPendingTrade,
            ),

            10.h,
            //Live Price
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //live price
                  StreamBuilder<PriceUpdated>(
                    stream: context
                        .read<PriceBloc>()
                        .priceStream, // Access the price stream
                    builder: (context, snapshot) {
                      String livePrice = snapshot.hasData
                          ? snapshot.data!.askPrice.toString()
                          : '0'; // Use the latest live rate

                      double ttbToOZ =
                          (double.tryParse(quantity) ?? 0.0) * 3.7462040;
                      double openingRateValue =
                          double.tryParse(openingRate) ?? 0.0;
                      double totalValue = openingRateValue * ttbToOZ;
                      double tradingFee = 1 * ttbToOZ;

                      double currentValue =
                          (double.tryParse(livePrice) ?? 0.0) * ttbToOZ;
                      double plValue = treadeType == "BUY"
                          ? (currentValue - totalValue) - tradingFee
                          : (totalValue - currentValue) - tradingFee;

                      profitLoss = plValue.toStringAsFixed(2);

                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GlobalTextWidget(
                                title: isCloseTrade
                                    ? 'Opening Rate'
                                    : 'Live Price',
                                fontSize: 15,
                                fontWeight: 400,
                              ),

                              // openingRateForCloseTrade
                              isCloseTrade
                                  ? GlobalTextWidget(
                                      title: openingRateForCloseTrade,
                                      fontSize: 15,
                                      fontWeight: 700,
                                    )
                                  : GlobalTextWidget(
                                      title: treadeType == 'Sell'
                                          ? snapshot.hasData
                                              ? snapshot.data!.askPrice
                                                  .toString()
                                              : '0'
                                          : snapshot.hasData
                                              ? snapshot.data!.bidPrice
                                                  .toString()
                                              : '0',
                                      fontSize: 15,
                                      fontWeight: 700,
                                    ),
                            ],
                          ),
                          15.h,

                          //Quantity
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const GlobalTextWidget(
                                title: 'Quantity',
                                fontSize: 15,
                                fontWeight: 400,
                              ),
                              GlobalTextWidget(
                                title: quantity.toString(),
                                fontSize: 15,
                                fontWeight: 500,
                              ),
                            ],
                          ),
                          15.h,
                          //Opening rate
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GlobalTextWidget(
                                title: (isPendingTrade == true)
                                    ? "Trigger Rate"
                                    : (isCloseTrade == true)
                                        ? "Closed Rate"
                                        : 'Opening Rate',
                                fontSize: 15,
                                fontWeight: 400,
                              ),
                              GlobalTextWidget(
                                title: openingRate,
                                fontSize: 15,
                                fontWeight: 500,
                              ),
                            ],
                          ),

                          isCloseTrade == true ? const SizedBox() : 15.h,

                          //Total Value (($)
                          (isPendingTrade == true) || (isCloseTrade == true)
                              ? const SizedBox()
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const GlobalTextWidget(
                                      title: r'Total Value ($)',
                                      fontSize: 15,
                                      fontWeight: 400,
                                    ),
                                    GlobalTextWidget(
                                      title:
                                          '\$ ${totalValue.toStringAsFixed(2)}',
                                      fontSize: 15,
                                      fontWeight: 500,
                                    ),
                                  ],
                                ),

                          (isPendingTrade == true) || (isCloseTrade == true)
                              ? const SizedBox()
                              : 15.h,
                          //Current Value (($)
                          (isPendingTrade == true) || (isCloseTrade == true)
                              ? const SizedBox()
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const GlobalTextWidget(
                                      title: r'Current Value ($)',
                                      fontSize: 15,
                                      fontWeight: 400,
                                    ),
                                    GlobalTextWidget(
                                      title:
                                          '\$ ${currentValue.toStringAsFixed(2)}',
                                      fontSize: 15,
                                      fontWeight: 500,
                                    ),
                                  ],
                                ),

                          isPendingTrade == true
                              ? const SizedBox.shrink()
                              : 10.h,
                          isPendingTrade == true
                              ? const SizedBox.shrink()
                              : Divider(
                                  thickness: 1,
                                  color: Colors.grey.withOpacity(0.5),
                                ),

                          isPendingTrade == true
                              ? const SizedBox.shrink()
                              : 10.h,

                          //profit Loss
                          (isPendingTrade == true)
                              ? const SizedBox()
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const GlobalTextWidget(
                                      title: r'Profit/Loss ($)',
                                      fontSize: 15,
                                      fontWeight: 400,
                                    ),
                                    Row(
                                      children: [
                                        treadeType == 'BUY'
                                            ? GlobalTextWidget(
                                                title: isCloseTrade
                                                    ? closingpl
                                                    : profitLoss,
                                                fontSize: 15,
                                                fontWeight: 700,
                                                color: AppColors.green,
                                              )
                                            : GlobalTextWidget(
                                                title: profitLoss,
                                                fontSize: 15,
                                                fontWeight: 700,
                                                color: Colors.red,
                                              ),
                                        5.w,
                                        treadeType == 'BUY'
                                            ? SvgPicture.asset(
                                                'assets/icons/IconTop.svg',
                                                height: 16,
                                              )
                                            : Transform.rotate(
                                                angle: 180 *
                                                    3.1415926535897932 /
                                                    180,
                                                child: SvgPicture.asset(
                                                  'assets/icons/IconTop.svg',
                                                  height: 16,
                                                  color: Colors.red,
                                                ),
                                              ),
                                      ],
                                    ),
                                  ],
                                ),

                          isPendingTrade == true ? const SizedBox() : 15.h,

                          //Profilt/loss ((AED))
                          isPendingTrade == true
                              ? const SizedBox()
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const GlobalTextWidget(
                                      title: 'Profit/Loss (AED)',
                                      fontSize: 15,
                                      fontWeight: 400,
                                    ),
                                    GlobalTextWidget(
                                      title: isCloseTrade
                                          ? _dollarToAed(closingpl)
                                          : _dollarToAed(profitLoss),
                                      fontSize: 15,
                                      fontWeight: 500,
                                    ),
                                  ],
                                ),

                          3.h,
                          isPendingTrade == true
                              ? const SizedBox()
                              : Divider(
                                  thickness: 1,
                                  color: Colors.grey.withOpacity(0.5),
                                ),

                          isPendingTrade == true ? const SizedBox() : 15.h,

                          //Opening date
                          isPendingTrade == true
                              ? const SizedBox()
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const GlobalTextWidget(
                                      title: 'Opening date',
                                      fontSize: 15,
                                      fontWeight: 400,
                                    ),
                                    GlobalTextWidget(
                                      title: formattedDate,
                                      fontSize: 15,
                                      fontWeight: 500,
                                    ),
                                  ],
                                ),
                          3.h,
                          Divider(
                            thickness: 1,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          3.h,
                        ],
                      );
                    },
                  ),

                  // 15.h,

                  // //Quantity
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     const GlobalTextWidget(
                  //       title: 'Quantity',
                  //       fontSize: 15,
                  //       fontWeight: 400,
                  //     ),
                  //     GlobalTextWidget(
                  //       title: quantity.toString(),
                  //       fontSize: 15,
                  //       fontWeight: 500,
                  //     ),
                  //   ],
                  // ),
                  // 15.h,
                  // //Opening rate
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     GlobalTextWidget(
                  //       title: (isPendingTrade == true)
                  //           ? "Trigger Rate"
                  //           : (isCloseTrade == true)
                  //               ? "Closed Rate"
                  //               : 'Opening Rate',
                  //       fontSize: 15,
                  //       fontWeight: 400,
                  //     ),
                  //     GlobalTextWidget(
                  //       title: openingRate,
                  //       fontSize: 15,
                  //       fontWeight: 500,
                  //     ),
                  //   ],
                  // ),

                  // isCloseTrade == true ? const SizedBox() : 15.h,

                  // //Total Value (($)
                  // (isPendingTrade == true) || (isCloseTrade == true)
                  //     ? const SizedBox()
                  //     : Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           const GlobalTextWidget(
                  //             title: r'Total Value ($)',
                  //             fontSize: 15,
                  //             fontWeight: 400,
                  //           ),
                  //           GlobalTextWidget(
                  //             title: '\$ $totalValue',
                  //             fontSize: 15,
                  //             fontWeight: 500,
                  //           ),
                  //         ],
                  //       ),

                  // (isPendingTrade == true) || (isCloseTrade == true)
                  //     ? const SizedBox()
                  //     : 15.h,
                  // //Current Value (($)
                  // (isPendingTrade == true) || (isCloseTrade == true)
                  //     ? const SizedBox()
                  //     : Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           const GlobalTextWidget(
                  //             title: r'Current Value ($)',
                  //             fontSize: 15,
                  //             fontWeight: 400,
                  //           ),
                  //           GlobalTextWidget(
                  //             title: '\$ $currentValue',
                  //             fontSize: 15,
                  //             fontWeight: 500,
                  //           ),
                  //         ],
                  //       ),

                  // isPendingTrade == true ? const SizedBox() : 10.h,
                  // isPendingTrade == true
                  //     ? const SizedBox()
                  //     : Divider(
                  //         thickness: 1,
                  //         color: Colors.grey.withOpacity(0.5),
                  //       ),

                  // isPendingTrade == true ? const SizedBox() : 10.h,

                  // //profit Loss
                  // isPendingTrade == true
                  //     ? const SizedBox()
                  //     : Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           const GlobalTextWidget(
                  //             title: r'Profit/Loss ($)',
                  //             fontSize: 15,
                  //             fontWeight: 400,
                  //           ),
                  //           Row(
                  //             children: [
                  //               treadeType == 'BUY'
                  //                   ? GlobalTextWidget(
                  //                       title: profitLoss,
                  //                       fontSize: 15,
                  //                       fontWeight: 700,
                  //                       color: AppColors.green,
                  //                     )
                  //                   : GlobalTextWidget(
                  //                       title: profitLoss,
                  //                       fontSize: 15,
                  //                       fontWeight: 700,
                  //                       color: Colors.red,
                  //                     ),
                  //               5.w,
                  //               treadeType == 'BUY'
                  //                   ? SvgPicture.asset(
                  //                       'assets/icons/IconTop.svg',
                  //                       height: 16,
                  //                     )
                  //                   : Transform.rotate(
                  //                       angle: 180 * 3.1415926535897932 / 180,
                  //                       child: SvgPicture.asset(
                  //                         'assets/icons/IconTop.svg',
                  //                         height: 16,
                  //                         color: Colors.red,
                  //                       ),
                  //                     ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),

                  // isPendingTrade == true ? const SizedBox() : 15.h,

                  // //Profilt/loss ((AED))
                  // isPendingTrade == true
                  //     ? const SizedBox()
                  //     : Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           const GlobalTextWidget(
                  //             title: 'Profit/Loss (AED)',
                  //             fontSize: 15,
                  //             fontWeight: 400,
                  //           ),
                  //           GlobalTextWidget(
                  //             title: _dollarToAed(profitLoss),
                  //             fontSize: 15,
                  //             fontWeight: 500,
                  //           ),
                  //         ],
                  //       ),

                  // 3.h,
                  // isPendingTrade == true
                  //     ? const SizedBox()
                  //     : Divider(
                  //         thickness: 1,
                  //         color: Colors.grey.withOpacity(0.5),
                  //       ),

                  // isPendingTrade == true ? const SizedBox() : 15.h,

                  // //Opening date
                  // isPendingTrade == true
                  //     ? const SizedBox()
                  //     : Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           const GlobalTextWidget(
                  //             title: 'Opening date',
                  //             fontSize: 15,
                  //             fontWeight: 400,
                  //           ),
                  //           GlobalTextWidget(
                  //             title: formattedDate,
                  //             fontSize: 15,
                  //             fontWeight: 500,
                  //           ),
                  //         ],
                  //       ),
                  // 3.h,
                  // Divider(
                  //   thickness: 1,
                  //   color: Colors.grey.withOpacity(0.5),
                  // ),
                  // 3.h,
                ],
              ),
            ),
            15.h,

            //Modify

            // isPendingTrade == true ? 140.h : const SizedBox(),

            isPendingTrade == true
                ? Positioned(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Opacity(
                              opacity: 0.2,
                              child: ContainerWidet(
                                initialHeight: height * .055,
                                initialWidth: width * .3,
                                backgroundColor: AppColors.darkGray,
                                borderRadious: 16,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/edit.svg',
                                      height: 18,
                                    ),
                                    const GlobalTextWidget(
                                      title: 'Modify',
                                      fontWeight: 400,
                                      fontSize: 15,
                                      color: AppColors.whiteColor,
                                    )
                                  ],
                                ),
                              ),
                            ),

                            //close

                            Opacity(
                              opacity: 0.2,
                              child: ContainerWidet(
                                initialHeight: height * .055,
                                initialWidth: width * .3,
                                backgroundColor: AppColors.red.withOpacity(0.9),
                                borderRadious: 16,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.cancel_sharp,
                                      size: 20,
                                      color: AppColors.whiteColor,
                                    ),
                                    GlobalTextWidget(
                                      title: 'Close',
                                      fontWeight: 400,
                                      fontSize: 15,
                                      color: AppColors.whiteColor,
                                    )
                                  ],
                                ),
                              ),
                            ),

                            //partial
                            Opacity(
                              opacity: 0.2,
                              child: ContainerWidet(
                                initialHeight: height * .055,
                                initialWidth: width * .3,
                                backgroundColor: AppColors.moreActionColor,
                                borderRadious: 16,
                                borderWidth: 1,
                                borderColor: Colors.grey.withOpacity(0.1),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.cancel_sharp,
                                      size: 20,
                                      color:
                                          AppColors.darkGray.withOpacity(0.5),
                                    ),
                                    const GlobalTextWidget(
                                      title: 'Partial',
                                      fontWeight: 400,
                                      fontSize: 15,
                                      color: AppColors.darkGray,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        5.h,
                        //close button
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: ContainerWidet(
                            initialHeight: height * .06,
                            initialWidth: width * .9,
                            backgroundColor: AppColors.moreActionColor,
                            borderRadious: 16,
                            borderWidth: 1,
                            borderColor: Colors.grey.withOpacity(0.1),
                            child: const Center(
                              child: GlobalTextWidget(
                                title: 'Close',
                                fontSize: 15,
                                fontWeight: 400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),

            isPendingTrade == true
                ? const SizedBox()
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Opacity(
                            opacity: 0.2,
                            child: ContainerWidet(
                              initialHeight: height * .055,
                              initialWidth: width * .3,
                              backgroundColor: AppColors.darkGray,
                              borderRadious: 16,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/edit.svg',
                                    height: 18,
                                  ),
                                  const GlobalTextWidget(
                                    title: 'Modify',
                                    fontWeight: 400,
                                    fontSize: 15,
                                    color: AppColors.whiteColor,
                                  )
                                ],
                              ),
                            ),
                          ),

                          //close

                          Opacity(
                            opacity: 0.2,
                            child: ContainerWidet(
                              initialHeight: height * .055,
                              initialWidth: width * .3,
                              backgroundColor: AppColors.red.withOpacity(0.9),
                              borderRadious: 16,
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.cancel_sharp,
                                    size: 20,
                                    color: AppColors.whiteColor,
                                  ),
                                  GlobalTextWidget(
                                    title: 'Close',
                                    fontWeight: 400,
                                    fontSize: 15,
                                    color: AppColors.whiteColor,
                                  )
                                ],
                              ),
                            ),
                          ),

                          //partial
                          Opacity(
                            opacity: 0.2,
                            child: ContainerWidet(
                              initialHeight: height * .055,
                              initialWidth: width * .3,
                              backgroundColor: AppColors.moreActionColor,
                              borderRadious: 16,
                              borderWidth: 1,
                              borderColor: Colors.grey.withOpacity(0.1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.cancel_sharp,
                                    size: 20,
                                    color: AppColors.darkGray.withOpacity(0.5),
                                  ),
                                  const GlobalTextWidget(
                                    title: 'Partial',
                                    fontWeight: 400,
                                    fontSize: 15,
                                    color: AppColors.darkGray,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      10.h,

                      //close button
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: ContainerWidet(
                          initialHeight: height * .06,
                          initialWidth: width * .9,
                          backgroundColor: AppColors.moreActionColor,
                          borderRadious: 16,
                          borderWidth: 1,
                          borderColor: Colors.grey.withOpacity(0.1),
                          child: const Center(
                            child: GlobalTextWidget(
                              title: 'Close',
                              fontSize: 15,
                              fontWeight: 400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

            // 15.h,
          ],
        ),
      ),
    );
  }

  String _dollarToAed(String profitLoss) {
    // Define the exchange rate (1 USD to AED)
    const double exchangeRate =
        3.672; // Update this value based on current rates

    // Convert profitLoss to a double
    double dollars = double.tryParse(profitLoss) ?? 0.0;

    // Convert to AED
    double aed = dollars * exchangeRate;

    return aed.toStringAsFixed(2);
  }
}
