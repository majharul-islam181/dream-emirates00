import 'package:dream_emirates/data/response/api_response.dart';
import 'package:dream_emirates/models/vendors/vendors_model.dart';
import 'package:dream_emirates/repository/vendorsRepo/vendors_repository.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'vendors_account_event.dart';
part 'vendors_account_state.dart';

class VendorsAccountBloc
    extends Bloc<VendorsAccountEvent, VendorsAccountState> {
  VendorsRepository vendorsRepository;
  VendorsAccountBloc({required this.vendorsRepository})
      : super(
            VendorsAccountState(allVendorAccountList: ApiResponse.loading())) {
    on<FetchVendorsAccountEvent>(_fetchVendorsAccountEvent);
  }

  Future<void> _fetchVendorsAccountEvent(
      FetchVendorsAccountEvent event, Emitter<VendorsAccountState> emit) async {
    emit(state.copyWith(allVendorAccountList: ApiResponse.loading()));

    try {
      final completeTrade = await vendorsRepository.getVendorsAccount();
      emit(state.copyWith(
          allVendorAccountList: ApiResponse.completed(completeTrade)));
    } catch (e) {
      emit(state.copyWith(
          allVendorAccountList: ApiResponse.error(e.toString())));
    }
  }
}
