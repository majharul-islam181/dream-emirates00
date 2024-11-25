// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_trade_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompleteTradeModelImpl _$$CompleteTradeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompleteTradeModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : CompleteTradeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompleteTradeModelImplToJson(
        _$CompleteTradeModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$CompleteTradeDataImpl _$$CompleteTradeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CompleteTradeDataImpl(
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => TradeResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paginate: json['paginate'] == null
          ? null
          : Paginate.fromJson(json['paginate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompleteTradeDataImplToJson(
        _$CompleteTradeDataImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'paginate': instance.paginate,
    };

_$TradeResultImpl _$$TradeResultImplFromJson(Map<String, dynamic> json) =>
    _$TradeResultImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
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
          ? null
          : Account.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TradeResultImplToJson(_$TradeResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
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

_$PaginateImpl _$$PaginateImplFromJson(Map<String, dynamic> json) =>
    _$PaginateImpl(
      limit: (json['limit'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginateImplToJson(_$PaginateImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'total': instance.total,
      'offset': instance.offset,
      'metadata': instance.metadata,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl(
      hasNextPage: json['hasNextPage'] as bool? ?? false,
      hasPreviousPage: json['hasPreviousPage'] as bool? ?? false,
      list: json['list'] == null
          ? null
          : ListData.fromJson(json['list'] as Map<String, dynamic>),
      page: json['page'] == null
          ? null
          : PageData.fromJson(json['page'] as Map<String, dynamic>),
      paging: (json['paging'] as List<dynamic>?)
              ?.map((e) => Paging.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'list': instance.list,
      'page': instance.page,
      'paging': instance.paging,
    };

_$ListDataImpl _$$ListDataImplFromJson(Map<String, dynamic> json) =>
    _$ListDataImpl(
      total: (json['total'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ListDataImplToJson(_$ListDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
    };

_$PageDataImpl _$$PageDataImplFromJson(Map<String, dynamic> json) =>
    _$PageDataImpl(
      totalPage: (json['totalPage'] as num?)?.toInt() ?? 0,
      currentPage: (json['currentPage'] as num?)?.toInt() ?? 0,
      nextPage: (json['nextPage'] as num?)?.toInt(),
      previousPage: (json['previousPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PageDataImplToJson(_$PageDataImpl instance) =>
    <String, dynamic>{
      'totalPage': instance.totalPage,
      'currentPage': instance.currentPage,
      'nextPage': instance.nextPage,
      'previousPage': instance.previousPage,
    };

_$PagingImpl _$$PagingImplFromJson(Map<String, dynamic> json) => _$PagingImpl(
      active: json['active'] as bool? ?? false,
      page: (json['page'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PagingImplToJson(_$PagingImpl instance) =>
    <String, dynamic>{
      'active': instance.active,
      'page': instance.page,
    };
