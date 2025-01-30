// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pending_trade_model.freezed.dart';
part 'pending_trade_model.g.dart';

@freezed
class PendingTradeModel with _$PendingTradeModel {
  factory PendingTradeModel({
    @Default(false) @JsonKey(name: 'status') bool status,
    @Default('') @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') PendingTradeData? data,
  }) = _PendingTradeModel;

  factory PendingTradeModel.fromJson(Map<String, dynamic> json) =>
      _$PendingTradeModelFromJson(json);
}

@freezed
class PendingTradeData with _$PendingTradeData {
  factory PendingTradeData({
    @Default([]) @JsonKey(name: 'result') List<PendingTradeResult> result,
    @JsonKey(name: 'paginate') Paginate? paginate,
  }) = _PendingTradeData;

  factory PendingTradeData.fromJson(Map<String, dynamic> json) =>
      _$PendingTradeDataFromJson(json);
}

@freezed
class PendingTradeResult with _$PendingTradeResult {
  factory PendingTradeResult({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default(0.0) @JsonKey(name: 'pending_trade_trigger_rate') double pendingTradeTriggerRate,
    @Default(0) @JsonKey(name: 'quantity') int quantity,
    @Default('') @JsonKey(name: 'trade_type') String tradeType,
    @Default('') @JsonKey(name: 'pending_trade_type') String pendingTradeType,
    @Default('') @JsonKey(name: 'metal_type') String metalType,
    @Default(0.0) @JsonKey(name: 'base_metal_weight') double baseMetalWeight,
    @Default('') @JsonKey(name: 'createdAt') String createdAt,
  }) = _PendingTradeResult;

  factory PendingTradeResult.fromJson(Map<String, dynamic> json) =>
      _$PendingTradeResultFromJson(json);
}

@freezed
class Paginate with _$Paginate {
  factory Paginate({
    @Default(0) @JsonKey(name: 'limit') int limit,
    @Default(0) @JsonKey(name: 'total') int total,
    @Default(0) @JsonKey(name: 'offset') int offset,
    @JsonKey(name: 'metadata') Metadata? metadata,
  }) = _Paginate;

  factory Paginate.fromJson(Map<String, dynamic> json) =>
      _$PaginateFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  factory Metadata({
    @Default(false) @JsonKey(name: 'hasNextPage') bool hasNextPage,
    @Default(false) @JsonKey(name: 'hasPreviousPage') bool hasPreviousPage,
    @JsonKey(name: 'list') ListData? list,
    @JsonKey(name: 'page') PageData? page,
    @Default([]) @JsonKey(name: 'paging') List<Paging> paging,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}

@freezed
class ListData with _$ListData {
  factory ListData({
    @Default(0) @JsonKey(name: 'total') int total,
    @Default(0) @JsonKey(name: 'limit') int limit,
  }) = _ListData;

  factory ListData.fromJson(Map<String, dynamic> json) =>
      _$ListDataFromJson(json);
}

@freezed
class PageData with _$PageData {
  factory PageData({
    @Default(0) @JsonKey(name: 'totalPage') int totalPage,
    @Default(0) @JsonKey(name: 'currentPage') int currentPage,
    @JsonKey(name: 'nextPage') int? nextPage,
    @JsonKey(name: 'previousPage') int? previousPage,
  }) = _PageData;

  factory PageData.fromJson(Map<String, dynamic> json) =>
      _$PageDataFromJson(json);
}

@freezed
class Paging with _$Paging {
  factory Paging({
    @Default(false) @JsonKey(name: 'active') bool active,
    @Default(0) @JsonKey(name: 'page') int page,
  }) = _Paging;

  factory Paging.fromJson(Map<String, dynamic> json) =>
      _$PagingFromJson(json);
}


//flutter pub run build_runner build --delete-conflicting-outputs