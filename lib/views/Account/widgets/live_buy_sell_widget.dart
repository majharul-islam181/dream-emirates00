import 'package:flutter/material.dart';

class LiveBuySellWidget extends StatelessWidget {
  const LiveBuySellWidget(
      {super.key, required this.askPrice, required this.bidPrice});
  final double askPrice, bidPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                r'$ Buy (Oz)',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                askPrice.toStringAsFixed(2),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                r'$ Sell (Oz)',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                bidPrice.toStringAsFixed(2),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ],
      ),
    );
  }
}
