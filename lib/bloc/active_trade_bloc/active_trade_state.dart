part of 'active_trade_bloc.dart';

class ActiveTradeState extends Equatable {
  final int traderId;
  final int openingRate;
  final int quantity;
  final String metalType;
  final String tradeType;
  final PostApiStatus postApiStatus;
  final String message;
  final String openingDate;
  final bool rememberMe;
  final ApiResponse<ActiveTradeModel> allActiveTrade;

  const ActiveTradeState(
      {required this.allActiveTrade,
      this.traderId = 0,
      this.quantity = 0,
      this.metalType = '',
      this.tradeType = '',
      this.openingRate = 0,
      this.postApiStatus = PostApiStatus.initial,
      this.rememberMe = false,
      this.openingDate = '',
      this.message = ''});

  ActiveTradeState copyWith(
      {ApiResponse<ActiveTradeModel>? allActiveTrade,
      int? traderId,
      int? openingRate,
      String? metalType,
      PostApiStatus? postApiStatus,
      String? tradeType,
      String? message,
      bool? rememberMe,
      String? openingDate,
      int? quantity}) {
    return ActiveTradeState(
      allActiveTrade: allActiveTrade ?? this.allActiveTrade,
      traderId: traderId ?? this.traderId,
      openingRate: openingRate ?? this.openingRate,
      metalType: metalType ?? this.metalType,
      quantity: quantity ?? this.quantity,
      tradeType: tradeType ?? this.tradeType,
      openingDate: openingDate ?? this.openingDate,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      message: message ?? this.message,
      rememberMe: rememberMe ?? this.rememberMe,
    );
  }

  @override
  List<Object?> get props => [
        allActiveTrade,
        traderId,
        openingRate,
        quantity,
        metalType,
        openingDate,
        postApiStatus,
        message,
      ];
}
