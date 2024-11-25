// ignore_for_file: public_member_api_docs, sort_constructors_first
// price_event.dart
abstract class PriceEvent {}

class UpdatePriceEvent extends PriceEvent {
  final double askPrice;
  final double bidPrice;
  final double lowPrice;
  final double highPrice;

  UpdatePriceEvent({
    required this.askPrice,
    required this.bidPrice,
    required this.lowPrice,
    required this.highPrice,
  });
}

class PriceErrorEvent extends PriceEvent {
  final String message;

  PriceErrorEvent({required this.message});
}
