import 'package:dream_emirates/data/response/api_response.dart';
import 'package:dream_emirates/models/activeTrade/active_trade_model.dart';
import 'package:dream_emirates/repository/activeTrade/active_trade_repository.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'active_trade_event.dart';
part 'active_trade_state.dart';

class ActiveTradeBloc extends Bloc<ActiveTradeEvent, ActiveTradeState> {
  ActiveTradeRepository activeTradeRepository;
  ActiveTradeBloc({required this.activeTradeRepository})
      : super(ActiveTradeState(allActiveTrade: ApiResponse.loading())) {
    on<FetchActiveTradeEvent>(_fetchActiveTradeEvent);
  }

  Future<void> _fetchActiveTradeEvent(
      FetchActiveTradeEvent event, Emitter<ActiveTradeState> emit) async {
    emit(state.copyWith(allActiveTrade: ApiResponse.loading()));

    try {
      final activeTrade = await activeTradeRepository.getActiveTrades(
          event.page, event.pageSize, event.vendorId);
      emit(state.copyWith(allActiveTrade: ApiResponse.completed(activeTrade)));
    } catch (e) {
      emit(state.copyWith(allActiveTrade: ApiResponse.error(e.toString())));
    }
  }
}
