// ignore_for_file: override_on_non_overriding_member

part of 'get_user_balance_bloc.dart';

abstract class GetUserBalanceEvent {
  const GetUserBalanceEvent();
  @override
  List<Object> get props => [];
}

class FetchGetUserBalanceEvent extends GetUserBalanceEvent {
  String vendorId;
  FetchGetUserBalanceEvent({required this.vendorId});

  @override
  List<Object> get props => [vendorId];
}
