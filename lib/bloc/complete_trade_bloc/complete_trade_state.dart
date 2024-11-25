part of 'complete_trade_bloc.dart';

class CompleteTradeState extends Equatable {
  final int traderId;
  final int openingRate;
  final int quantity;
  final String metalType;
  final String tradeType;
  final PostApiStatus postApiStatus;
  final String message;
  final String openingDate;
  final bool rememberMe;
  final ApiResponse<CompleteTradeModel> allCompleteTrade;

  const CompleteTradeState(
      {required this.allCompleteTrade,
      this.traderId = 0,
      this.quantity = 0,
      this.metalType = '',
      this.tradeType = '',
      this.openingRate = 0,
      this.postApiStatus = PostApiStatus.initial,
      this.rememberMe = false,
      this.openingDate = '',
      this.message = ''});

  CompleteTradeState copyWith(
      {ApiResponse<CompleteTradeModel>? allCompleteTrade,
      int? traderId,
      int? openingRate,
      String? metalType,
      PostApiStatus? postApiStatus,
      String? tradeType,
      String? message,
      bool? rememberMe,
      String? openingDate,
      int? quantity}) {
    return CompleteTradeState(
      allCompleteTrade: allCompleteTrade ?? this.allCompleteTrade,
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
        allCompleteTrade,
        traderId,
        openingRate,
        quantity,
        metalType,
        openingDate,
        postApiStatus,
        message,
      ];
}
