// ignore_for_file: must_be_immutable, non_constant_identifier_names
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets.dart';

class TradeCardWidgetPending extends StatelessWidget {
  TradeCardWidgetPending(
      {super.key,
      required this.id,
      required this.metal_type,
      required this.triggaredRate,
      required this.tradeType,
      required this.liveRate,
      required this.pLvalue,
      required this.color,
      required this.quantity});
  late double height;
  late double width;
  int id;
  String metal_type;
  int quantity;
  String triggaredRate;
  String tradeType;
  String liveRate;
  String pLvalue;
  Color color;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 07.0, right: 12, left: 12),
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

                    Row(
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
                    ),
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
                        const GlobalTextWidget(
                          title: 'Live rate: ',
                          fontSize: 14,
                          fontWeight: 500,
                          opacity: 0.5,
                        ),
                        8.w,
                        GlobalTextWidget(
                          title: liveRate,
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
                        const GlobalTextWidget(
                          title: 'Triggared rate: ',
                          fontSize: 14,
                          fontWeight: 500,
                        ),
                        8.w,
                        GlobalTextWidget(
                          title: triggaredRate,
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
                        // Conditional rendering based on tradeType
                        if (tradeType == 'BUY') ...[
                          OpenWidget(),
                          8.w,
                          BuyWidget(),
                        ] else if (tradeType == 'SELL') ...[
                          OpenWidget(), 8.w,
                          SellWidget(), // Assuming you want a SellWidget for SELL type
                        ] else ...[
                          // You can add more conditions or default cases here
                          ClosedWidget(), // For other trade types
                        ],

                        8.w,

                        // Common widgets that are always displayed
                        //  BuyWidget(), // This is shown regardless of tradeType
                        //                OpenWidget(),
                        // 8.w,
                        //BuyWidget(),
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
