// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatementModelImpl _$$StatementModelImplFromJson(Map<String, dynamic> json) =>
    _$StatementModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const StatementData()
          : StatementData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatementModelImplToJson(
        _$StatementModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$StatementDataImpl _$$StatementDataImplFromJson(Map<String, dynamic> json) =>
    _$StatementDataImpl(
      goldPrice: json['goldPrice'] == null
          ? const GoldPrice()
          : GoldPrice.fromJson(json['goldPrice'] as Map<String, dynamic>),
      summary: json['summary'] == null
          ? const Summary()
          : Summary.fromJson(json['summary'] as Map<String, dynamic>),
      transactionSummary: json['transactionSummary'] == null
          ? const TransactionSummary()
          : TransactionSummary.fromJson(
              json['transactionSummary'] as Map<String, dynamic>),
      activeTradeSummary: json['activeTradeSummary'] == null
          ? const ActiveTradeSummary()
          : ActiveTradeSummary.fromJson(
              json['activeTradeSummary'] as Map<String, dynamic>),
      completedTradeSummary: json['completedTradeSummary'] == null
          ? const CompletedTradeSummary()
          : CompletedTradeSummary.fromJson(
              json['completedTradeSummary'] as Map<String, dynamic>),
      activeTradeArray: (json['activeTradeArray'] as List<dynamic>?)
              ?.map((e) => ActiveTrade.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      completedTradeArray: (json['completedTradeArray'] as List<dynamic>?)
              ?.map((e) => CompletedTrade.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$StatementDataImplToJson(_$StatementDataImpl instance) =>
    <String, dynamic>{
      'goldPrice': instance.goldPrice,
      'summary': instance.summary,
      'transactionSummary': instance.transactionSummary,
      'activeTradeSummary': instance.activeTradeSummary,
      'completedTradeSummary': instance.completedTradeSummary,
      'activeTradeArray': instance.activeTradeArray,
      'completedTradeArray': instance.completedTradeArray,
    };

_$GoldPriceImpl _$$GoldPriceImplFromJson(Map<String, dynamic> json) =>
    _$GoldPriceImpl(
      askPrice: (json['askPrice'] as num?)?.toDouble() ?? 0.0,
      bidPrice: (json['bidPrice'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$GoldPriceImplToJson(_$GoldPriceImpl instance) =>
    <String, dynamic>{
      'askPrice': instance.askPrice,
      'bidPrice': instance.bidPrice,
    };

_$SummaryImpl _$$SummaryImplFromJson(Map<String, dynamic> json) =>
    _$SummaryImpl(
      vendorId: (json['vendorId'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      uid: (json['uid'] as num?)?.toInt() ?? 0,
      phoneNumber: json['phone_number'] as String? ?? '',
      country: json['country'] as String? ?? '',
      balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
      netProfitLoss: (json['netProfitLoss'] as num?)?.toDouble() ?? 0.0,
      path: json['path'] as String? ?? null,
      buyWeight: (json['buyWeight'] as num?)?.toDouble() ?? 0.0,
      sellWeight: (json['sellWeight'] as num?)?.toDouble() ?? 0.0,
      netBalance: (json['netBalance'] as num?)?.toDouble() ?? 0.0,
      netOpenPrice: (json['netOpenPrice'] as num?)?.toDouble() ?? 0.0,
      currentProfitLossAED:
          (json['currentProfitLossAED'] as num?)?.toDouble() ?? 0.0,
      withdrawableBalance:
          (json['withdrawableBalance'] as num?)?.toDouble() ?? 0.0,
      currentValueAED: (json['currentValueAED'] as num?)?.toDouble() ?? 0.0,
      currentValueUSD: (json['currentValueUSD'] as num?)?.toDouble() ?? 0.0,
      currentProfitLossUSD:
          (json['currentProfitLossUSD'] as num?)?.toDouble() ?? 0.0,
      marginLimit: (json['marginLimit'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$SummaryImplToJson(_$SummaryImpl instance) =>
    <String, dynamic>{
      'vendorId': instance.vendorId,
      'name': instance.name,
      'uid': instance.uid,
      'phone_number': instance.phoneNumber,
      'country': instance.country,
      'balance': instance.balance,
      'netProfitLoss': instance.netProfitLoss,
      'path': instance.path,
      'buyWeight': instance.buyWeight,
      'sellWeight': instance.sellWeight,
      'netBalance': instance.netBalance,
      'netOpenPrice': instance.netOpenPrice,
      'currentProfitLossAED': instance.currentProfitLossAED,
      'withdrawableBalance': instance.withdrawableBalance,
      'currentValueAED': instance.currentValueAED,
      'currentValueUSD': instance.currentValueUSD,
      'currentProfitLossUSD': instance.currentProfitLossUSD,
      'marginLimit': instance.marginLimit,
    };

_$TransactionSummaryImpl _$$TransactionSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionSummaryImpl(
      totalDeposit: (json['total_deposit'] as num?)?.toDouble() ?? 0,
      totalWithdraw: (json['total_withdraw'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$TransactionSummaryImplToJson(
        _$TransactionSummaryImpl instance) =>
    <String, dynamic>{
      'total_deposit': instance.totalDeposit,
      'total_withdraw': instance.totalWithdraw,
    };

_$ActiveTradeSummaryImpl _$$ActiveTradeSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveTradeSummaryImpl(
      buyWeight: (json['buyWeight'] as num?)?.toDouble() ?? 0.0,
      sellWeight: (json['sellWeight'] as num?)?.toDouble() ?? 0.0,
      profitLossAED: (json['profitLossAED'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$ActiveTradeSummaryImplToJson(
        _$ActiveTradeSummaryImpl instance) =>
    <String, dynamic>{
      'buyWeight': instance.buyWeight,
      'sellWeight': instance.sellWeight,
      'profitLossAED': instance.profitLossAED,
    };

_$CompletedTradeSummaryImpl _$$CompletedTradeSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedTradeSummaryImpl(
      netProfit: (json['netProfit'] as num?)?.toDouble() ?? 0.0,
      buyWeight: (json['buyWeight'] as num?)?.toDouble() ?? 0.0,
      sellWeight: (json['sellWeight'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$CompletedTradeSummaryImplToJson(
        _$CompletedTradeSummaryImpl instance) =>
    <String, dynamic>{
      'netProfit': instance.netProfit,
      'buyWeight': instance.buyWeight,
      'sellWeight': instance.sellWeight,
    };

_$ActiveTradeImpl _$$ActiveTradeImplFromJson(Map<String, dynamic> json) =>
    _$ActiveTradeImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      tickId: json['tick_id'] as String? ?? null,
      tradeType: json['trade_type'] as String? ?? '',
      metalType: json['metal_type'] as String? ?? '',
      executedTradeOpenRate:
          (json['executed_trade_open_rate'] as num?)?.toDouble() ?? 0.0,
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      baseMetalWeight: (json['base_metal_weight'] as num?)?.toDouble() ?? 0.0,
      createdAt: json['createdAt'] as String? ?? '',
      profitLossAED: (json['profitLossAED'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$ActiveTradeImplToJson(_$ActiveTradeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tick_id': instance.tickId,
      'trade_type': instance.tradeType,
      'metal_type': instance.metalType,
      'executed_trade_open_rate': instance.executedTradeOpenRate,
      'quantity': instance.quantity,
      'base_metal_weight': instance.baseMetalWeight,
      'createdAt': instance.createdAt,
      'profitLossAED': instance.profitLossAED,
    };

_$CompletedTradeImpl _$$CompletedTradeImplFromJson(Map<String, dynamic> json) =>
    _$CompletedTradeImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      tickId: json['tick_id'] as String? ?? null,
      executedTradeOpenRate:
          (json['executed_trade_open_rate'] as num?)?.toDouble() ?? 0.0,
      executedTradeCloseRate:
          (json['executed_trade_close_rate'] as num?)?.toDouble() ?? 0.0,
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      tradeType: json['trade_type'] as String? ?? '',
      metalType: json['metal_type'] as String? ?? '',
      baseMetalWeight: (json['base_metal_weight'] as num?)?.toDouble() ?? 0.0,
      createdAt: json['createdAt'] as String? ?? '',
      account: json['account'] == null
          ? const Account()
          : Account.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompletedTradeImplToJson(
        _$CompletedTradeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tick_id': instance.tickId,
      'executed_trade_open_rate': instance.executedTradeOpenRate,
      'executed_trade_close_rate': instance.executedTradeCloseRate,
      'quantity': instance.quantity,
      'trade_type': instance.tradeType,
      'metal_type': instance.metalType,
      'base_metal_weight': instance.baseMetalWeight,
      'createdAt': instance.createdAt,
      'account': instance.account,
    };

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      charge: (json['charge'] as num?)?.toDouble() ?? 0.0,
      type: json['type'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'charge': instance.charge,
      'type': instance.type,
      'createdAt': instance.createdAt,
    };
