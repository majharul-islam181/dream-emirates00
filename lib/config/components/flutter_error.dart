import 'package:flutter/material.dart';

class FlutterErrorWidget extends StatelessWidget {
  const FlutterErrorWidget({super.key, required this.errorDetails});
  final FlutterErrorDetails errorDetails;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Error',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Appbar'),
        ),
        body: Center(
          child: Text(
            "Some error get caught ${errorDetails.exceptionAsString()}",
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
