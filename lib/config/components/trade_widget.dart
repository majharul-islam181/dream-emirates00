// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TradeWidget extends StatefulWidget {
  final double size;

  const TradeWidget({
    super.key,
    this.size = 80,
  });

  @override
  State<TradeWidget> createState() => _TradeWidgetState();
}

class _TradeWidgetState extends State<TradeWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
    );

    // Repeat the animation at 2x speed
    _controller.repeat(period: const Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size,
      width: widget.size,
      child: Lottie.asset(
        'assets/lottie/trade1.json',
        controller: _controller, // Attach the animation controller
        fit: BoxFit.contain,
        onLoaded: (composition) {
          // Set the duration of the animation according to the composition
          _controller.duration = composition.duration ~/ 4; // 2x speed
          _controller.repeat(); // Repeat the animation
        },
      ),
    );
  }
}
