// ignore_for_file: override_on_non_overriding_member

part of 'active_trade_bloc.dart';

abstract class ActiveTradeEvent {
  const ActiveTradeEvent();
  @override
  List<Object> get props => [];
}

class FetchActiveTradeEvent extends ActiveTradeEvent {
  final int page, pageSize;
  String vendorId;

  FetchActiveTradeEvent(
      {this.page = 1, this.pageSize = 20, required this.vendorId});

  @override
  List<Object> get props => [page, pageSize, vendorId];
}
