// trade_event.dart
abstract class PlvalueEvent {}

class CalculatePlEvent extends PlvalueEvent {
  final double executedTradeOpenRate;
  final double quantity;
  final double buyRate;
  final double sellRate;
  final String tradeType;

  CalculatePlEvent({
    required this.executedTradeOpenRate,
    required this.quantity,
    required this.buyRate,
    required this.sellRate,
    required this.tradeType,
  });
}
