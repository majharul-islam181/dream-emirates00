import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class LiveLowHighRate extends StatelessWidget {
  const LiveLowHighRate(
      {super.key, required this.highPrice, required this.lowPrice});
  final double lowPrice, highPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GlobalTextWidget(
                title: 'Low',
                fontWeight: 400,
                fontSize: 12,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              GlobalTextWidget(
                title: r'$ ' + lowPrice.toString(),
                fontWeight: 700,
                fontSize: 12,
                color: Colors.grey,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GlobalTextWidget(
                title: 'High',
                fontWeight: 400,
                fontSize: 12,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              GlobalTextWidget(
                title: r'$ ' + highPrice.toString(),
                fontWeight: 700,
                fontSize: 12,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
