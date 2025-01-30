// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_balance_model.freezed.dart';
part 'get_user_balance_model.g.dart';

@freezed
class GetUserBalanceModel with _$GetUserBalanceModel {
  factory GetUserBalanceModel({
    @Default(false) @JsonKey(name: 'status') bool status,
    @Default('') @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') UserBalanceData? data,
  }) = _GetUserBalanceModel;

  factory GetUserBalanceModel.fromJson(Map<String, dynamic> json) =>
      _$GetUserBalanceModelFromJson(json);
}

@freezed
class UserBalanceData with _$UserBalanceData {
  factory UserBalanceData({
    @Default('') @JsonKey(name: 'currency') String currency,
    @Default(0) @JsonKey(name: 'balance') double balance,
    @Default(0) @JsonKey(name: 'income') double income,
    @Default(0) @JsonKey(name: 'fixunfix') double fixunfix,
    @Default(0) @JsonKey(name: 'virtual_trading') double virtualTrading,
    @Default(0) @JsonKey(name: 'pending') double pending,
    @Default(0) @JsonKey(name: 'net_fixunfix_profit') double netFixunfixProfit,
    @Default(0)
    @JsonKey(name: 'net_virtual_trading_profit')
    double netVirtualTradingProfit,
    @Default(0)
    @JsonKey(name: 'net_affiliate_amount')
    double netAffiliateAmount,
    @Default(0)
    @JsonKey(name: 'virtual_trading_bonus')
    double virtualTradingBonus,
  }) = _UserBalanceData;

  factory UserBalanceData.fromJson(Map<String, dynamic> json) =>
      _$UserBalanceDataFromJson(json);
}
