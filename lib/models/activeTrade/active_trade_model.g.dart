// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_trade_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActiveTradeModelImpl _$$ActiveTradeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveTradeModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : ActiveTradeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActiveTradeModelImplToJson(
        _$ActiveTradeModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ActiveTradeDataImpl _$$ActiveTradeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveTradeDataImpl(
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => TradeResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paginate: json['paginate'] == null
          ? null
          : Pagination.fromJson(json['paginate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActiveTradeDataImplToJson(
        _$ActiveTradeDataImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'paginate': instance.paginate,
    };

_$TradeResultImpl _$$TradeResultImplFromJson(Map<String, dynamic> json) =>
    _$TradeResultImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      executedTradeOpenRate:
          (json['executed_trade_open_rate'] as num?)?.toDouble() ?? 0.0,
      pendingTradeTriggerRate:
          (json['pending_trade_trigger_rate'] as num?)?.toDouble() ?? null,
      takeProfit: (json['take_profit'] as num?)?.toDouble() ?? null,
      stopLoss: (json['stop_loss'] as num?)?.toDouble() ?? null,
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      tradeType: json['trade_type'] as String? ?? '',
      metalType: json['metal_type'] as String? ?? '',
      baseMetalWeight: (json['base_metal_weight'] as num?)?.toDouble() ?? 0.0,
      isAutoClose: json['isAutoClose'] as bool? ?? false,
      pendingAt: json['pendingAt'] as String?,
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$TradeResultImplToJson(_$TradeResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'executed_trade_open_rate': instance.executedTradeOpenRate,
      'pending_trade_trigger_rate': instance.pendingTradeTriggerRate,
      'take_profit': instance.takeProfit,
      'stop_loss': instance.stopLoss,
      'quantity': instance.quantity,
      'trade_type': instance.tradeType,
      'metal_type': instance.metalType,
      'base_metal_weight': instance.baseMetalWeight,
      'isAutoClose': instance.isAutoClose,
      'pendingAt': instance.pendingAt,
      'createdAt': instance.createdAt,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      total: (json['total'] as num?)?.toInt() ?? 0,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
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
          : MetadataList.fromJson(json['list'] as Map<String, dynamic>),
      page: json['page'] == null
          ? null
          : MetadataPage.fromJson(json['page'] as Map<String, dynamic>),
      paging: json['paging'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'list': instance.list,
      'page': instance.page,
      'paging': instance.paging,
    };

_$MetadataListImpl _$$MetadataListImplFromJson(Map<String, dynamic> json) =>
    _$MetadataListImpl(
      total: (json['total'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$MetadataListImplToJson(_$MetadataListImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
    };

_$MetadataPageImpl _$$MetadataPageImplFromJson(Map<String, dynamic> json) =>
    _$MetadataPageImpl(
      totalPage: (json['totalPage'] as num?)?.toInt() ?? 1,
      currentPage: (json['currentPage'] as num?)?.toInt() ?? 1,
      nextPage: (json['nextPage'] as num?)?.toInt(),
      previousPage: (json['previousPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MetadataPageImplToJson(_$MetadataPageImpl instance) =>
    <String, dynamic>{
      'totalPage': instance.totalPage,
      'currentPage': instance.currentPage,
      'nextPage': instance.nextPage,
      'previousPage': instance.previousPage,
    };
