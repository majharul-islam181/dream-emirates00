// trade_bloc.dart
// ignore_for_file: override_on_non_overriding_member

import 'package:bloc/bloc.dart';
import 'plvalue_event.dart';
import 'plvalue_state.dart';

class PlvalueBloc extends Bloc<PlvalueEvent, PlvalueState> {
  PlvalueBloc() : super(TradeInitial());

  @override
  Stream<PlvalueState> mapEventToState(PlvalueEvent event) async* {
    if (event is CalculatePlEvent) {
      try {
        double plValue = calculatePlValue(
          executedTradeOpenRate: event.executedTradeOpenRate,
          quantity: event.quantity,
          buyRate: event.buyRate,
          sellRate: event.sellRate,
          tradeType: event.tradeType,
        );
        yield PlCalculatedState(plValue: plValue);
      } catch (e) {
        yield TradeErrorState(error: e.toString());
      }
    }
  }

  double calculatePlValue({
    required double executedTradeOpenRate,
    required double quantity,
    required double buyRate,
    required double sellRate,
    required String tradeType,
  }) {
    double totalValue = executedTradeOpenRate * (quantity * 3.7462040);
    double ttbToOZ = (quantity * 3.7462040);
    double tradingFee = 1 * ttbToOZ;

    return tradeType == "BUY"
        ? (((sellRate * ttbToOZ) - totalValue) - tradingFee)
        : (totalValue - (buyRate * ttbToOZ)) - tradingFee;
  }
}
