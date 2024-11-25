// ignore_for_file: override_on_non_overriding_member

part of 'pending_trade_bloc.dart';

abstract class PendingTradeEvent {
  const PendingTradeEvent();
  @override
  List<Object> get props => [];
}

class FetchPendingTradeEvent extends PendingTradeEvent {
  final int page, pageSize;
  String vendorId;

  FetchPendingTradeEvent(
      {this.page = 1, this.pageSize = 20, required this.vendorId});

  @override
  List<Object> get props => [page, pageSize];
}
