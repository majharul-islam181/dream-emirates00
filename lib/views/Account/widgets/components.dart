// components.dart
import 'package:dream_emirates/views/Account/account_screen.dart';
import 'package:dream_emirates/views/Account/widgets/buy_sell_pending_button_widget.dart';
import 'package:dream_emirates/views/Account/widgets/gold_view_widget.dart';
import 'package:dream_emirates/views/Account/widgets/live_buy_sell_widget.dart';
import 'package:dream_emirates/views/Account/widgets/live_low_high_rate.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

/// A reusable skeleton loading widget
class Skeleton extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;

  const Skeleton({
    Key? key,
    required this.height,
    required this.width,
    this.borderRadius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.04),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );
  }
}

/// A reusable error widget with a retry button
class ErrorWidgetWithRetry extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const ErrorWidgetWithRetry({
    Key? key,
    required this.message,
    this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message, textAlign: TextAlign.center),
          if (onRetry != null)
            TextButton(onPressed: onRetry, child: const Text("Retry")),
        ],
      ),
    );
  }
}

/// A reusable gold card row to display gold prices
class GoldCardRow extends StatelessWidget {
  final double price21k;
  final double price22k;
  final double price23k;
  final double price24k;

  const GoldCardRow({
    Key? key,
    required this.price21k,
    required this.price22k,
    required this.price23k,
    required this.price24k,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GoldViewWidget(
              title: 'Jewellery 21k • 1 GM',
              subtitle: '${price21k.toStringAsFixed(2)} AED'),
          const SizedBox(width: 8),
          GoldViewWidget(
              title: 'Jewellery 22k • 1 GM',
              subtitle: '${price22k.toStringAsFixed(2)} AED'),
          const SizedBox(width: 8),
          GoldViewWidget(
              title: 'Jewellery 23k • 1 GM',
              subtitle: '${price23k.toStringAsFixed(2)} AED'),
          const SizedBox(width: 8),
          GoldViewWidget(
              title: 'Jewellery 24k • 1 GM',
              subtitle: '${price24k.toStringAsFixed(2)} AED'),
        ],
      ),
    );
  }
}

/// A reusable chart card widget
class ChartCardWidget extends StatelessWidget {
  final List<ChartData> chartData;
  final double askPrice;
  final double bidPrice;
  final double yMin;
  final double yMax;
  final double highPrice;
  final double lowPrice;

  const ChartCardWidget({
    Key? key,
    required this.chartData,
    required this.askPrice,
    required this.bidPrice,
    required this.yMin,
    required this.yMax,
    required this.highPrice,
    required this.lowPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          LiveBuySellWidget(askPrice: askPrice, bidPrice: bidPrice),
          SfCartesianChart(
            primaryXAxis: DateTimeAxis(dateFormat: DateFormat.jm()),
            primaryYAxis: NumericAxis(minimum: yMin, maximum: yMax),
            series: <CartesianSeries>[
              SplineAreaSeries<ChartData, DateTime>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.time,
                yValueMapper: (ChartData data, _) => data.value,
                gradient: const LinearGradient(
                  colors: [Color(0xFF0088FF), Color(0x000088FF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              )
            ],
          ),
          LiveLowHighRate(highPrice: highPrice, lowPrice: lowPrice),
          const Divider(thickness: 0.5),
          const BuySellPendingButtonWidget(),
        ],
      ),
    );
  }
}
