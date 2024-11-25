// price_state.dart
import 'package:dream_emirates/data/response/api_response.dart';

abstract class PriceState {}

class PriceInitial extends PriceState {}

class PriceLoading extends PriceState {}

class PriceError extends PriceState {
  final String message;

  PriceError({required this.message});
}

class PriceUpdated extends PriceState {
  final double askPrice;
  final double bidPrice;
  final double lowPrice;
  final double highPrice;

  PriceUpdated({
    required this.askPrice,
    required this.bidPrice,
    required this.lowPrice,
    required this.highPrice,
  });
}
