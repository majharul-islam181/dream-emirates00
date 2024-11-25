// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_balance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserBalanceModelImpl _$$GetUserBalanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserBalanceModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : UserBalanceData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetUserBalanceModelImplToJson(
        _$GetUserBalanceModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$UserBalanceDataImpl _$$UserBalanceDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserBalanceDataImpl(
      currency: json['currency'] as String? ?? '',
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
      income: (json['income'] as num?)?.toDouble() ?? 0,
      fixunfix: (json['fixunfix'] as num?)?.toDouble() ?? 0,
      virtualTrading: (json['virtual_trading'] as num?)?.toDouble() ?? 0,
      pending: (json['pending'] as num?)?.toDouble() ?? 0,
      netFixunfixProfit: (json['net_fixunfix_profit'] as num?)?.toDouble() ?? 0,
      netVirtualTradingProfit:
          (json['net_virtual_trading_profit'] as num?)?.toDouble() ?? 0,
      netAffiliateAmount:
          (json['net_affiliate_amount'] as num?)?.toDouble() ?? 0,
      virtualTradingBonus:
          (json['virtual_trading_bonus'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$UserBalanceDataImplToJson(
        _$UserBalanceDataImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'balance': instance.balance,
      'income': instance.income,
      'fixunfix': instance.fixunfix,
      'virtual_trading': instance.virtualTrading,
      'pending': instance.pending,
      'net_fixunfix_profit': instance.netFixunfixProfit,
      'net_virtual_trading_profit': instance.netVirtualTradingProfit,
      'net_affiliate_amount': instance.netAffiliateAmount,
      'virtual_trading_bonus': instance.virtualTradingBonus,
    };
