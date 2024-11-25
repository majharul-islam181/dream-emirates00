import 'package:dream_emirates/views/Account/account_screen.dart';
import 'package:dream_emirates/views/Account/widgets/buy_sell_pending_button_widget.dart';
import 'package:dream_emirates/views/Account/widgets/live_buy_sell_widget.dart';
import 'package:dream_emirates/views/Account/widgets/live_low_high_rate.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWidget extends StatelessWidget {
  final double yMin;
  final double yMax;
  final double askPrice;
  final double bidPrice;
  final double highPrice;
  final double lowPrice;
  final List<ChartData> chartData;

  const ChartWidget({
    super.key,
    required this.yMin,
    required this.yMax,
    required this.askPrice,
    required this.bidPrice,
    required this.highPrice,
    required this.lowPrice,
    required this.chartData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Card(
        elevation: 0.5,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .55,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LiveBuySellWidget(askPrice: askPrice, bidPrice: bidPrice),
              const SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                child: SfCartesianChart(
                  borderWidth: 0,
                  borderColor: Colors.transparent,
                  primaryXAxis: DateTimeAxis(
                    axisLine:
                        const AxisLine(width: 0, color: Colors.transparent),
                    majorGridLines: const MajorGridLines(width: 0),
                    dateFormat: DateFormat.jm(),
                    // interval: 5,
                    // minimum: DateTime.now().subtract(
                    //     const Duration(minutes: 30)), // Start of the 30 minutes
                    // maximum: DateTime.now(), // End time (current time)
                  ),
                  primaryYAxis: NumericAxis(
                    axisLine:
                        const AxisLine(width: 0, color: Colors.transparent),
                    majorGridLines: const MajorGridLines(width: 0.5),
                    labelStyle: const TextStyle(
                      fontSize:
                          0, // Setting font size to 0 will effectively hide the labels
                      color: Colors
                          .transparent, // Make labels transparent as a fallback
                    ),
                    isVisible: false, // Completely hide the y-axis labels
                    minimum: yMin,
                    maximum: yMax,
                  ),
                  series: <CartesianSeries<ChartData, DateTime>>[
                    SplineAreaSeries<ChartData, DateTime>(
                      dataSource: chartData,
                      xValueMapper: (ChartData data, _) => data.time,
                      yValueMapper: (ChartData data, _) => data.value,
                      name: 'Ask Price',
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF0088FF),
                          Color.fromARGB(0, 0, 136, 255),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              LiveLowHighRate(highPrice: highPrice, lowPrice: lowPrice),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Divider(thickness: 0.5, color: Colors.grey),
              ),
              const Padding(
                padding: EdgeInsets.all(3.0),
                child: BuySellPendingButtonWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
