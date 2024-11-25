import 'package:dream_emirates/data/response/api_response.dart';
import 'package:dream_emirates/models/Statement/statement_model.dart';
import 'package:dream_emirates/repository/statement_repository/get_user_statement_repo.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'statement_state.dart';
part 'statement_event.dart';

class StatementBloc extends Bloc<StatementEvent, StatementState> {
  GetUserStatementRepo getUserStatementRepo;
  StatementBloc({required this.getUserStatementRepo})
      : super(StatementState(getStatement: ApiResponse.loading())) {
    on<FetchStatementEvent>(_fetchStatementEvent);
  }

  Future<void> _fetchStatementEvent(
      FetchStatementEvent event, Emitter<StatementState> emit) async {
    emit(state.copyWith(getStatement: ApiResponse.loading()));

    try {
      final userProfileData =
          await getUserStatementRepo.getUserStatement(event.vendorId);
      emit(
          state.copyWith(getStatement: ApiResponse.completed(userProfileData)));
    } catch (e) {
      emit(state.copyWith(getStatement: ApiResponse.error(e.toString())));
    }
  }
}
