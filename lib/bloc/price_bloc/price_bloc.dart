// // price_bloc.dart
// import 'dart:async';
// import 'dart:convert';
// import 'package:bloc/bloc.dart';
// import 'package:web_socket_channel/io.dart';
// import 'price_event.dart';
// import 'price_state.dart';

// class PriceBloc extends Bloc<PriceEvent, PriceState> {
//   final IOWebSocketChannel channel = IOWebSocketChannel.connect(
//       'wss://staging.karnaphulijewellery.com/api/test');

//   PriceBloc() : super(PriceInitial()) {
//     // Listen to WebSocket stream for updates
//     _listenToWebSocket();

//     on<UpdatePriceEvent>((event, emit) {
//       emit(PriceUpdated(
//         event.askPrice,
//         event.bidPrice,
//         event.lowPrice,
//         event.highPrice,
//       ));
//     });
//     on<Eroo>((event, emit) {
//       emit(PriceUpdated(
//         event.askPrice,
//         event.bidPrice,
//         event.lowPrice,
//         event.highPrice,
//       ));
//     });
//   }

//   void _listenToWebSocket() {
//     channel.stream.listen((message) {
//       Map<String, dynamic> getData = jsonDecode(message);

//       final double askPrice = (getData['askPrice'] is int)
//           ? (getData['askPrice'] as int).toDouble()
//           : (getData['askPrice'] as double);

//       final double bidPrice = (getData['bidPrice'] is int)
//           ? (getData['bidPrice'] as int).toDouble()
//           : (getData['bidPrice'] as double);

//       final double lowPrice = (getData['lowPrice'] is int)
//           ? (getData['lowPrice'] as int).toDouble()
//           : (getData['lowPrice'] as double);

//       final double highPrice = (getData['highPrice'] is int)
//           ? (getData['highPrice'] as int).toDouble()
//           : (getData['highPrice'] as double);

//       // Add an event to update the state
//       add(UpdatePriceEvent(askPrice, bidPrice, lowPrice, highPrice));
//     });
//   }

//   @override
//   Future<void> close() {
//     channel.sink.close();
//     return super.close();
//   }
// }

import 'dart:async';

import 'package:dream_emirates/bloc/price_bloc/price_event.dart';
import 'package:dream_emirates/bloc/price_bloc/price_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/io.dart';
import 'dart:convert';

class PriceBloc extends Bloc<PriceEvent, PriceState> {
  final IOWebSocketChannel channel = IOWebSocketChannel.connect(
      'wss://staging.karnaphulijewellery.com/api/test');

  // StreamController for live prices
  final StreamController<PriceUpdated> _priceStreamController =
      StreamController<PriceUpdated>.broadcast();

  PriceBloc() : super(PriceInitial()) {
    // Listen to WebSocket stream for updates
    _listenToWebSocket();

    on<UpdatePriceEvent>((event, emit) {
      final priceUpdate = PriceUpdated(
        askPrice: event.askPrice,
        bidPrice: event.bidPrice,
        lowPrice: event.lowPrice,
        highPrice: event.highPrice,
      );
      emit(priceUpdate);
      _priceStreamController.add(priceUpdate); // Emit to the stream
    });

    on<PriceErrorEvent>((event, emit) {
      emit(PriceError(message: event.message));
    });
  }

  void _listenToWebSocket() {
    channel.stream.listen((message) {
      try {
        final dynamic decodedMessage = jsonDecode(message);

        // Check if decodedMessage is a List
        if (decodedMessage is List) {
          final Map<String, dynamic> getData = decodedMessage.first;

          final double askPrice = (getData['askPrice'] is int)
              ? (getData['askPrice'] as int).toDouble()
              : (getData['askPrice'] as double);

          final double bidPrice = (getData['bidPrice'] is int)
              ? (getData['bidPrice'] as int).toDouble()
              : (getData['bidPrice'] as double);

          final double lowPrice = (getData['lowPrice'] is int)
              ? (getData['lowPrice'] as int).toDouble()
              : (getData['lowPrice'] as double);

          final double highPrice = (getData['highPrice'] is int)
              ? (getData['highPrice'] as int).toDouble()
              : (getData['highPrice'] as double);

          // Add an event to update the state
          add(UpdatePriceEvent(
            askPrice: askPrice,
            bidPrice: bidPrice,
            lowPrice: lowPrice,
            highPrice: highPrice,
          ));
        } else if (decodedMessage is Map<String, dynamic>) {
          final Map<String, dynamic> getData = decodedMessage;

          final double askPrice = (getData['askPrice'] is int)
              ? (getData['askPrice'] as int).toDouble()
              : (getData['askPrice'] as double);

          final double bidPrice = (getData['bidPrice'] is int)
              ? (getData['bidPrice'] as int).toDouble()
              : (getData['bidPrice'] as double);

          final double lowPrice = (getData['lowPrice'] is int)
              ? (getData['lowPrice'] as int).toDouble()
              : (getData['lowPrice'] as double);

          final double highPrice = (getData['highPrice'] is int)
              ? (getData['highPrice'] as int).toDouble()
              : (getData['highPrice'] as double);

          // Add an event to update the state
          add(UpdatePriceEvent(
            askPrice: askPrice,
            bidPrice: bidPrice,
            lowPrice: lowPrice,
            highPrice: highPrice,
          ));
        } else {
          add(PriceErrorEvent(
              message: 'Unexpected data format: $decodedMessage'));
        }
      } catch (e) {
        add(PriceErrorEvent(message: 'Failed to parse price data: $e'));
      }
    });
  }

  // New method to expose the price stream
  Stream<PriceUpdated> get priceStream => _priceStreamController.stream;

  @override
  Future<void> close() {
    channel.sink.close();
    _priceStreamController.close(); // Close the stream controller
    return super.close();
  }
}
