import 'package:dream_emirates/data/response/api_response.dart';
import 'package:dream_emirates/models/completeTrade/complete_trade_model.dart';
import 'package:dream_emirates/repository/completeTrade/complete_trade_repository.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'complete_trade_event.dart';
part 'complete_trade_state.dart';

class CompleteTradeBloc extends Bloc<CompleteTradeEvent, CompleteTradeState> {
  CompleteTradeRepository completeTradeRepository;
  CompleteTradeBloc({required this.completeTradeRepository})
      : super(CompleteTradeState(allCompleteTrade: ApiResponse.loading())) {
    on<FetchCompleteTradeEvent>(_fetchCompleteTradeEvent);
  }

  Future<void> _fetchCompleteTradeEvent(
      FetchCompleteTradeEvent event, Emitter<CompleteTradeState> emit) async {
    emit(state.copyWith(allCompleteTrade: ApiResponse.loading()));

    try {
      final completeTrade = await completeTradeRepository.getCompleteTrades(
          event.page, event.pageSize, event.vendorId);
      emit(state.copyWith(
          allCompleteTrade: ApiResponse.completed(completeTrade)));
    } catch (e) {
      emit(state.copyWith(allCompleteTrade: ApiResponse.error(e.toString())));
    }
  }
}
