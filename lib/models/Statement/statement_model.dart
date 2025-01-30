// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'statement_model.freezed.dart';
part 'statement_model.g.dart';

@freezed
class StatementModel with _$StatementModel {
  const factory StatementModel({
    @JsonKey(name: 'status') @Default(false) bool status,
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'data') @Default(StatementData()) StatementData data,
  }) = _StatementModel;

  factory StatementModel.fromJson(Map<String, dynamic> json) =>
      _$StatementModelFromJson(json);
}

@freezed
class StatementData with _$StatementData {
  const factory StatementData({
    @JsonKey(name: 'goldPrice') @Default(GoldPrice()) GoldPrice goldPrice,
    @JsonKey(name: 'summary') @Default(Summary()) Summary summary,
    @JsonKey(name: 'transactionSummary')
    @Default(TransactionSummary())
    TransactionSummary transactionSummary,
    @JsonKey(name: 'activeTradeSummary')
    @Default(ActiveTradeSummary())
    ActiveTradeSummary activeTradeSummary,
    @JsonKey(name: 'completedTradeSummary')
    @Default(CompletedTradeSummary())
    CompletedTradeSummary completedTradeSummary,
    @JsonKey(name: 'activeTradeArray')
    @Default([])
    List<ActiveTrade> activeTradeArray,
    @JsonKey(name: 'completedTradeArray')
    @Default([])
    List<CompletedTrade> completedTradeArray,
  }) = _StatementData;

  factory StatementData.fromJson(Map<String, dynamic> json) =>
      _$StatementDataFromJson(json);
}

@freezed
class GoldPrice with _$GoldPrice {
  const factory GoldPrice({
    @JsonKey(name: 'askPrice') @Default(0.0) double askPrice,
    @JsonKey(name: 'bidPrice') @Default(0.0) double bidPrice,
  }) = _GoldPrice;

  factory GoldPrice.fromJson(Map<String, dynamic> json) =>
      _$GoldPriceFromJson(json);
}

@freezed
class Summary with _$Summary {
  const factory Summary({
    // @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'vendorId') @Default(0) int vendorId,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'uid') @Default(0) int uid,
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
    @JsonKey(name: 'country') @Default('') String country,
    @JsonKey(name: 'balance') @Default(0.0) double balance,
    @JsonKey(name: 'netProfitLoss') @Default(0.0) double netProfitLoss,
    @JsonKey(name: 'path') @Default(null) String? path,
    @JsonKey(name: 'buyWeight') @Default(0.0) double buyWeight,
    @JsonKey(name: 'sellWeight') @Default(0.0) double sellWeight,
    @JsonKey(name: 'netBalance') @Default(0.0) double netBalance,
    @JsonKey(name: 'netOpenPrice') @Default(0.0) double netOpenPrice,
    @JsonKey(name: 'currentProfitLossAED')
    @Default(0.0)
    double currentProfitLossAED,
    @JsonKey(name: 'withdrawableBalance')
    @Default(0.0)
    double withdrawableBalance,
    @JsonKey(name: 'currentValueAED') @Default(0.0) double currentValueAED,
    @JsonKey(name: 'currentValueUSD') @Default(0.0) double currentValueUSD,
    @JsonKey(name: 'currentProfitLossUSD')
    @Default(0.0)
    double currentProfitLossUSD,
    @JsonKey(name: 'marginLimit') @Default(0.0) double marginLimit,
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}

@freezed
class TransactionSummary with _$TransactionSummary {
  const factory TransactionSummary({
    @JsonKey(name: 'total_deposit') @Default(0) double totalDeposit,
    @JsonKey(name: 'total_withdraw') @Default(0) double totalWithdraw,
  }) = _TransactionSummary;

  factory TransactionSummary.fromJson(Map<String, dynamic> json) =>
      _$TransactionSummaryFromJson(json);
}

@freezed
class ActiveTradeSummary with _$ActiveTradeSummary {
  const factory ActiveTradeSummary({
    @JsonKey(name: 'buyWeight') @Default(0.0) double buyWeight,
    @JsonKey(name: 'sellWeight') @Default(0.0) double sellWeight,
    @JsonKey(name: 'profitLossAED') @Default(0.0) double profitLossAED,
  }) = _ActiveTradeSummary;

  factory ActiveTradeSummary.fromJson(Map<String, dynamic> json) =>
      _$ActiveTradeSummaryFromJson(json);
}

@freezed
class CompletedTradeSummary with _$CompletedTradeSummary {
  const factory CompletedTradeSummary({
    @JsonKey(name: 'netProfit') @Default(0.0) double netProfit,
    @JsonKey(name: 'buyWeight') @Default(0.0) double buyWeight,
    @JsonKey(name: 'sellWeight') @Default(0.0) double sellWeight,
  }) = _CompletedTradeSummary;

  factory CompletedTradeSummary.fromJson(Map<String, dynamic> json) =>
      _$CompletedTradeSummaryFromJson(json);
}

@freezed
class ActiveTrade with _$ActiveTrade {
  const factory ActiveTrade({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'tick_id') @Default(null) String? tickId,
    @JsonKey(name: 'trade_type') @Default('') String tradeType,
    @JsonKey(name: 'metal_type') @Default('') String metalType,
    @JsonKey(name: 'executed_trade_open_rate')
    @Default(0.0)
    double executedTradeOpenRate,
    @JsonKey(name: 'quantity') @Default(0) int quantity,
    @JsonKey(name: 'base_metal_weight') @Default(0.0) double baseMetalWeight,
    @JsonKey(name: 'createdAt') @Default('') String createdAt,
    @JsonKey(name: 'profitLossAED') @Default(0.0) double profitLossAED,
  }) = _ActiveTrade;

  factory ActiveTrade.fromJson(Map<String, dynamic> json) =>
      _$ActiveTradeFromJson(json);
}

@freezed
class CompletedTrade with _$CompletedTrade {
  const factory CompletedTrade({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'tick_id') @Default(null) String? tickId,
    @JsonKey(name: 'executed_trade_open_rate')
    @Default(0.0)
    double executedTradeOpenRate,
    @JsonKey(name: 'executed_trade_close_rate')
    @Default(0.0)
    double executedTradeCloseRate,
    @JsonKey(name: 'quantity') @Default(0) int quantity,
    @JsonKey(name: 'trade_type') @Default('') String tradeType,
    @JsonKey(name: 'metal_type') @Default('') String metalType,
    @JsonKey(name: 'base_metal_weight') @Default(0.0) double baseMetalWeight,
    @JsonKey(name: 'createdAt') @Default('') String createdAt,
    @JsonKey(name: 'account') @Default(Account()) Account account,
  }) = _CompletedTrade;

  factory CompletedTrade.fromJson(Map<String, dynamic> json) =>
      _$CompletedTradeFromJson(json);
}

@freezed
class Account with _$Account {
  const factory Account({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'amount') @Default(0.0) double amount,
    @JsonKey(name: 'charge') @Default(0.0) double charge,
    @JsonKey(name: 'type') @Default('') String type,
    @JsonKey(name: 'createdAt') @Default('') String createdAt,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}


//flutter pub run build_runner build --delete-conflicting-outputs