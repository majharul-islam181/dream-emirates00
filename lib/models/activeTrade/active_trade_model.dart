// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_trade_model.freezed.dart';
part 'active_trade_model.g.dart';

@freezed
class ActiveTradeModel with _$ActiveTradeModel {
  factory ActiveTradeModel({
    @Default(false) @JsonKey(name: 'status') bool status,
    @Default('') @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data')
    ActiveTradeData? data, // Nullable in case it's absent
  }) = _ActiveTradeModel;

  factory ActiveTradeModel.fromJson(Map<String, dynamic> json) =>
      _$ActiveTradeModelFromJson(json);
}

@freezed
class ActiveTradeData with _$ActiveTradeData {
  factory ActiveTradeData({
    @Default([]) @JsonKey(name: 'result') List<TradeResult> result,
    @JsonKey(name: 'paginate')
    Pagination? paginate, // Nullable in case it's absent
  }) = _ActiveTradeData;

  factory ActiveTradeData.fromJson(Map<String, dynamic> json) =>
      _$ActiveTradeDataFromJson(json);
}

@freezed
class TradeResult with _$TradeResult {
  factory TradeResult({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default(0.0)
    @JsonKey(name: 'executed_trade_open_rate')
    double executedTradeOpenRate,
    @Default(null)
    @JsonKey(name: 'pending_trade_trigger_rate')
    double? pendingTradeTriggerRate,
    @Default(null) @JsonKey(name: 'take_profit') double? takeProfit,
    @Default(null) @JsonKey(name: 'stop_loss') double? stopLoss,
    @Default(0) @JsonKey(name: 'quantity') int quantity,
    @Default('') @JsonKey(name: 'trade_type') String tradeType,
    @Default('') @JsonKey(name: 'metal_type') String metalType,
    @Default(0.0) @JsonKey(name: 'base_metal_weight') double baseMetalWeight,
    @Default(false) @JsonKey(name: 'isAutoClose') bool isAutoClose,
    @JsonKey(name: 'pendingAt') String? pendingAt,
    @Default('') @JsonKey(name: 'createdAt') String createdAt,
  }) = _TradeResult;

  factory TradeResult.fromJson(Map<String, dynamic> json) =>
      _$TradeResultFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  factory Pagination({
    @Default(10) @JsonKey(name: 'limit') int limit,
    @Default(0) @JsonKey(name: 'total') int total,
    @Default(0) @JsonKey(name: 'offset') int offset,
    @JsonKey(name: 'metadata')
    Metadata? metadata, // Nullable in case it's absent
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  factory Metadata({
    @Default(false) @JsonKey(name: 'hasNextPage') bool hasNextPage,
    @Default(false) @JsonKey(name: 'hasPreviousPage') bool hasPreviousPage,
    @JsonKey(name: 'list') MetadataList? list,
    @JsonKey(name: 'page') MetadataPage? page,
    @Default([]) @JsonKey(name: 'paging') List<dynamic> paging,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}

@freezed
class MetadataList with _$MetadataList {
  factory MetadataList({
    @Default(0) @JsonKey(name: 'total') int total,
    @Default(10) @JsonKey(name: 'limit') int limit,
  }) = _MetadataList;

  factory MetadataList.fromJson(Map<String, dynamic> json) =>
      _$MetadataListFromJson(json);
}

@freezed
class MetadataPage with _$MetadataPage {
  factory MetadataPage({
    @Default(1) @JsonKey(name: 'totalPage') int totalPage,
    @Default(1) @JsonKey(name: 'currentPage') int currentPage,
    @JsonKey(name: 'nextPage') int? nextPage,
    @JsonKey(name: 'previousPage') int? previousPage,
  }) = _MetadataPage;

  factory MetadataPage.fromJson(Map<String, dynamic> json) =>
      _$MetadataPageFromJson(json);
}


//flutter pub run build_runner build --delete-conflicting-outputs