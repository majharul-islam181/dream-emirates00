// trade_state.dart
abstract class PlvalueState {}

class TradeInitial extends PlvalueState {}

class PlCalculatedState extends PlvalueState {
  final double plValue;

  PlCalculatedState({required this.plValue});
}

class TradeErrorState extends PlvalueState {
  final String error;

  TradeErrorState({required this.error});
}
