import 'package:dream_emirates/data/response/api_response.dart';
import 'package:dream_emirates/models/getUserBalance/get_user_balance_model.dart';
import 'package:dream_emirates/repository/getUserbalance/get_user_balance_repo.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'get_user_balance_state.dart';
part 'get_user_balance_event.dart';

class GetUserBalanceBloc
    extends Bloc<GetUserBalanceEvent, GetUserBalanceState> {
  GetUserBalanceRepo getUserBalanceRepo;
  GetUserBalanceBloc({required this.getUserBalanceRepo})
      : super(
            GetUserBalanceState(getUserProfileBalance: ApiResponse.loading())) {
    on<FetchGetUserBalanceEvent>(_fetchGetUserBalanceEvent);
  }

  Future<void> _fetchGetUserBalanceEvent(
      FetchGetUserBalanceEvent event, Emitter<GetUserBalanceState> emit) async {
    emit(state.copyWith(getUserProfileBalance: ApiResponse.loading()));

    try {
      final userProfileData =
          await getUserBalanceRepo.getUserBalance(event.vendorId);
      emit(state.copyWith(
          getUserProfileBalance: ApiResponse.completed(userProfileData)));
    } catch (e) {
      emit(state.copyWith(
          getUserProfileBalance: ApiResponse.error(e.toString())));
    }
  }
}
