import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/Account/widgets/gold_view_widget.dart';
import 'package:flutter/material.dart';

class ShowGoldCard extends StatelessWidget {
  const ShowGoldCard(
      {super.key,
      required this.priceGram21k,
      required this.priceGram22k,
      required this.priceGram23k,
      required this.priceGram24k});

  final double priceGram21k, priceGram22k, priceGram23k, priceGram24k;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            GoldViewWidget(
              title: 'Jewellery 21k • 1 GM',
              subtitle: '${priceGram21k.toStringAsFixed(2)} AED',
            ),
            8.w,
            GoldViewWidget(
              title: 'Jewellery 22k • 1 GM',
              subtitle: '${priceGram22k.toStringAsFixed(2)} AED',
            ),
            8.w,
            GoldViewWidget(
              title: 'Jewellery 23k • 1 GM',
              subtitle: '${priceGram23k.toStringAsFixed(2)} AED',
            ),
            8.w,
            GoldViewWidget(
              title: 'Jewellery 24k • 1 GM',
              subtitle: '${priceGram24k.toStringAsFixed(2)} AED',
            ),
            8.w,
          ],
        ),
      ),
    );
  }
}
