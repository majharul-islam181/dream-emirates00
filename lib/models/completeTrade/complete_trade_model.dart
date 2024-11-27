// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_trade_model.freezed.dart';
part 'complete_trade_model.g.dart';

@freezed
class CompleteTradeModel with _$CompleteTradeModel {
  factory CompleteTradeModel({
    @Default(false) @JsonKey(name: 'status') bool status,
    @Default('') @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') CompleteTradeData? data,
  }) = _CompleteTradeModel;

  factory CompleteTradeModel.fromJson(Map<String, dynamic> json) =>
      _$CompleteTradeModelFromJson(json);
}

@freezed
class CompleteTradeData with _$CompleteTradeData {
  factory CompleteTradeData({
    @Default([]) @JsonKey(name: 'result') List<CompleteTradeResult> result,
    @JsonKey(name: 'paginate') Paginate? paginate,
  }) = _CompleteTradeData;

  factory CompleteTradeData.fromJson(Map<String, dynamic> json) =>
      _$CompleteTradeDataFromJson(json);
}

@freezed
class CompleteTradeResult with _$CompleteTradeResult {
  factory CompleteTradeResult({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default(0.0)
    @JsonKey(name: 'executed_trade_open_rate')
    double executedTradeOpenRate,
    @Default(0.0)
    @JsonKey(name: 'executed_trade_close_rate')
    double executedTradeCloseRate,
    @Default(0) @JsonKey(name: 'quantity') int quantity,
    @Default('') @JsonKey(name: 'trade_type') String tradeType,
    @Default('') @JsonKey(name: 'metal_type') String metalType,
    @Default(0.0) @JsonKey(name: 'base_metal_weight') double baseMetalWeight,
    @Default('') @JsonKey(name: 'createdAt') String createdAt,
    @JsonKey(name: 'account') Account? account,
  }) = _CompleteTradeResult;

  factory CompleteTradeResult.fromJson(Map<String, dynamic> json) =>
      _$CompleteTradeResultFromJson(json);
}

@freezed
class Account with _$Account {
  factory Account({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default(0.0) @JsonKey(name: 'amount') double amount,
    @Default(0.0) @JsonKey(name: 'charge') double charge,
    @Default('') @JsonKey(name: 'type') String type,
    @Default('') @JsonKey(name: 'createdAt') String createdAt,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
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

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}
