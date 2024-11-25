part of 'complete_trade_bloc.dart';

abstract class CompleteTradeEvent {
  const CompleteTradeEvent();
  List<Object> get props => [];
}

class FetchCompleteTradeEvent extends CompleteTradeEvent {
  final int page, pageSize;
  String vendorId;

  FetchCompleteTradeEvent(
      {this.page = 1, this.pageSize = 20, required this.vendorId});

  @override
  List<Object> get props => [page, pageSize];
}
