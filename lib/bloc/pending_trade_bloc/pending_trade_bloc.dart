import 'package:dream_emirates/data/response/api_response.dart';
import 'package:dream_emirates/models/pendingTrade/pending_trade_model.dart';
import 'package:dream_emirates/repository/pendingTrade/pending_trade_repository.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'pending_trade_state.dart';
part 'pending_trade_event.dart';

class PendingTradeBloc extends Bloc<PendingTradeEvent, PendingTradeState> {
  PendingTradeRepository pendingTradeRepository;
  PendingTradeBloc({required this.pendingTradeRepository})
      : super(PendingTradeState(allPendingTrade: ApiResponse.loading())) {
    on<FetchPendingTradeEvent>(_fetchPendingTradeEvent);
  }

  Future<void> _fetchPendingTradeEvent(
      FetchPendingTradeEvent event, Emitter<PendingTradeState> emit) async {
    emit(state.copyWith(allPendingTrade: ApiResponse.loading()));

    try {
      final pendingTrade = await pendingTradeRepository.getPendingTrades(
          event.page, event.pageSize, event.vendorId);
      emit(
          state.copyWith(allPendingTrade: ApiResponse.completed(pendingTrade)));
    } catch (e) {
      emit(state.copyWith(allPendingTrade: ApiResponse.error(e.toString())));
    }
  }
}
