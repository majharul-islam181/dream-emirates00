// ignore_for_file: must_be_immutable

import 'package:dream_emirates/bloc/price_bloc/price_bloc.dart';
import 'package:dream_emirates/bloc/price_bloc/price_state.dart';
import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/views/BottomSheet/bottom_sheet_widget.dart';
import 'package:dream_emirates/views/Trade/widgets/trade_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabContentAction extends StatelessWidget {
  TabContentAction(
      {super.key,
      required this.id,
      required this.metalType,
      this.openingRate = '**',
      required this.openingDate,
      required this.tradeType,
      required this.liveRate,
      required this.plColor,
      required this.pLvalue,
      this.openingRateText = 'Opening rate: ',
      this.liveRateText = 'Live rate: ',
      this.isCloseTrade = false,
      this.isOpenTrade = false,
      this.isPendingTrade = false,
      this.totalValue = '0',
      this.currentValue = "0",
      this.openingRateForCloseTrade = '',
      this.closingPl = '',
      required this.quantity});
  final int id;
  final String metalType;
  final int quantity;
  String openingRate;
  final String openingDate;
  String tradeType, liveRate;
  String pLvalue;
  Color plColor;
  String openingRateText,
      liveRateText,
      totalValue,
      currentValue,
      openingRateForCloseTrade, closingPl;
  bool isOpenTrade, isCloseTrade, isPendingTrade;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PriceUpdated>(
        stream: context.read<PriceBloc>().priceStream,
        builder: (context, snapshot) {
          String liveRate =
              snapshot.hasData ? snapshot.data!.askPrice.toString() : '0';
          return GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: AppColors.backgroundColor,
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return BottomSheetWidget(
                      openingRateForCloseTrade: openingRateForCloseTrade,
                      context: context,
                      tradeId: id.toString(),
                      metalType: metalType,
                      openingRate: openingRate,
                      quantity: quantity.toString(),
                      opening_date: openingDate,
                      treadeType: tradeType,
                      livePrice: liveRate,
                      profitLoss: pLvalue,
                      isCloseTrade: isCloseTrade,
                      isOpenTrade: isOpenTrade,
                      isPendingTrade: isPendingTrade,
                      totalValue: totalValue,
                      currentValue: currentValue,
                      closingpl: closingPl,
                    );
                  },
                );
              },
              child: TradeCardWidget(
                isCloseTrade: isCloseTrade,
                isOpenTrade: isOpenTrade,
                isPendingTrade: isPendingTrade,
                liveRateText: liveRateText,
                id: id,
                metal_type: metalType,
                quantity: quantity,
                openingRate: openingRate,
                tradeType: tradeType,
                openingRateForCloseTrade: openingRateForCloseTrade,
                liveRate: isCloseTrade
                    ? openingRateForCloseTrade
                    : tradeType == 'Sell'
                        ? snapshot.hasData
                            ? snapshot.data!.askPrice.toString()
                            : '0'
                        : snapshot.hasData
                            ? snapshot.data!.bidPrice.toString()
                            : '0',
                pLvalue: pLvalue,
                color: plColor,
                openingRateText: openingRateText,
              ));
        });
  }
}
