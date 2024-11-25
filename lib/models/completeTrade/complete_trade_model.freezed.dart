// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_trade_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompleteTradeModel _$CompleteTradeModelFromJson(Map<String, dynamic> json) {
  return _CompleteTradeModel.fromJson(json);
}

/// @nodoc
mixin _$CompleteTradeModel {
  @JsonKey(name: 'status')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  CompleteTradeData? get data => throw _privateConstructorUsedError;

  /// Serializes this CompleteTradeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompleteTradeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompleteTradeModelCopyWith<CompleteTradeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteTradeModelCopyWith<$Res> {
  factory $CompleteTradeModelCopyWith(
          CompleteTradeModel value, $Res Function(CompleteTradeModel) then) =
      _$CompleteTradeModelCopyWithImpl<$Res, CompleteTradeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') CompleteTradeData? data});

  $CompleteTradeDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CompleteTradeModelCopyWithImpl<$Res, $Val extends CompleteTradeModel>
    implements $CompleteTradeModelCopyWith<$Res> {
  _$CompleteTradeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompleteTradeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompleteTradeData?,
    ) as $Val);
  }

  /// Create a copy of CompleteTradeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompleteTradeDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CompleteTradeDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompleteTradeModelImplCopyWith<$Res>
    implements $CompleteTradeModelCopyWith<$Res> {
  factory _$$CompleteTradeModelImplCopyWith(_$CompleteTradeModelImpl value,
          $Res Function(_$CompleteTradeModelImpl) then) =
      __$$CompleteTradeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') CompleteTradeData? data});

  @override
  $CompleteTradeDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CompleteTradeModelImplCopyWithImpl<$Res>
    extends _$CompleteTradeModelCopyWithImpl<$Res, _$CompleteTradeModelImpl>
    implements _$$CompleteTradeModelImplCopyWith<$Res> {
  __$$CompleteTradeModelImplCopyWithImpl(_$CompleteTradeModelImpl _value,
      $Res Function(_$CompleteTradeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompleteTradeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$CompleteTradeModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompleteTradeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompleteTradeModelImpl implements _CompleteTradeModel {
  _$CompleteTradeModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') this.data});

  factory _$CompleteTradeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompleteTradeModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool status;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'data')
  final CompleteTradeData? data;

  @override
  String toString() {
    return 'CompleteTradeModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTradeModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of CompleteTradeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteTradeModelImplCopyWith<_$CompleteTradeModelImpl> get copyWith =>
      __$$CompleteTradeModelImplCopyWithImpl<_$CompleteTradeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompleteTradeModelImplToJson(
      this,
    );
  }
}

abstract class _CompleteTradeModel implements CompleteTradeModel {
  factory _CompleteTradeModel(
          {@JsonKey(name: 'status') final bool status,
          @JsonKey(name: 'message') final String message,
          @JsonKey(name: 'data') final CompleteTradeData? data}) =
      _$CompleteTradeModelImpl;

  factory _CompleteTradeModel.fromJson(Map<String, dynamic> json) =
      _$CompleteTradeModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  CompleteTradeData? get data;

  /// Create a copy of CompleteTradeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteTradeModelImplCopyWith<_$CompleteTradeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompleteTradeData _$CompleteTradeDataFromJson(Map<String, dynamic> json) {
  return _CompleteTradeData.fromJson(json);
}

/// @nodoc
mixin _$CompleteTradeData {
  @JsonKey(name: 'result')
  List<TradeResult> get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'paginate')
  Paginate? get paginate => throw _privateConstructorUsedError;

  /// Serializes this CompleteTradeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompleteTradeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompleteTradeDataCopyWith<CompleteTradeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteTradeDataCopyWith<$Res> {
  factory $CompleteTradeDataCopyWith(
          CompleteTradeData value, $Res Function(CompleteTradeData) then) =
      _$CompleteTradeDataCopyWithImpl<$Res, CompleteTradeData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') List<TradeResult> result,
      @JsonKey(name: 'paginate') Paginate? paginate});

  $PaginateCopyWith<$Res>? get paginate;
}

/// @nodoc
class _$CompleteTradeDataCopyWithImpl<$Res, $Val extends CompleteTradeData>
    implements $CompleteTradeDataCopyWith<$Res> {
  _$CompleteTradeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompleteTradeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? paginate = freezed,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<TradeResult>,
      paginate: freezed == paginate
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as Paginate?,
    ) as $Val);
  }

  /// Create a copy of CompleteTradeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginateCopyWith<$Res>? get paginate {
    if (_value.paginate == null) {
      return null;
    }

    return $PaginateCopyWith<$Res>(_value.paginate!, (value) {
      return _then(_value.copyWith(paginate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompleteTradeDataImplCopyWith<$Res>
    implements $CompleteTradeDataCopyWith<$Res> {
  factory _$$CompleteTradeDataImplCopyWith(_$CompleteTradeDataImpl value,
          $Res Function(_$CompleteTradeDataImpl) then) =
      __$$CompleteTradeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') List<TradeResult> result,
      @JsonKey(name: 'paginate') Paginate? paginate});

  @override
  $PaginateCopyWith<$Res>? get paginate;
}

/// @nodoc
class __$$CompleteTradeDataImplCopyWithImpl<$Res>
    extends _$CompleteTradeDataCopyWithImpl<$Res, _$CompleteTradeDataImpl>
    implements _$$CompleteTradeDataImplCopyWith<$Res> {
  __$$CompleteTradeDataImplCopyWithImpl(_$CompleteTradeDataImpl _value,
      $Res Function(_$CompleteTradeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompleteTradeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? paginate = freezed,
  }) {
    return _then(_$CompleteTradeDataImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<TradeResult>,
      paginate: freezed == paginate
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as Paginate?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompleteTradeDataImpl implements _CompleteTradeData {
  _$CompleteTradeDataImpl(
      {@JsonKey(name: 'result') final List<TradeResult> result = const [],
      @JsonKey(name: 'paginate') this.paginate})
      : _result = result;

  factory _$CompleteTradeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompleteTradeDataImplFromJson(json);

  final List<TradeResult> _result;
  @override
  @JsonKey(name: 'result')
  List<TradeResult> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  @JsonKey(name: 'paginate')
  final Paginate? paginate;

  @override
  String toString() {
    return 'CompleteTradeData(result: $result, paginate: $paginate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTradeDataImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.paginate, paginate) ||
                other.paginate == paginate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_result), paginate);

  /// Create a copy of CompleteTradeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteTradeDataImplCopyWith<_$CompleteTradeDataImpl> get copyWith =>
      __$$CompleteTradeDataImplCopyWithImpl<_$CompleteTradeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompleteTradeDataImplToJson(
      this,
    );
  }
}

abstract class _CompleteTradeData implements CompleteTradeData {
  factory _CompleteTradeData(
          {@JsonKey(name: 'result') final List<TradeResult> result,
          @JsonKey(name: 'paginate') final Paginate? paginate}) =
      _$CompleteTradeDataImpl;

  factory _CompleteTradeData.fromJson(Map<String, dynamic> json) =
      _$CompleteTradeDataImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  List<TradeResult> get result;
  @override
  @JsonKey(name: 'paginate')
  Paginate? get paginate;

  /// Create a copy of CompleteTradeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteTradeDataImplCopyWith<_$CompleteTradeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradeResult _$TradeResultFromJson(Map<String, dynamic> json) {
  return _TradeResult.fromJson(json);
}

/// @nodoc
mixin _$TradeResult {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'executed_trade_open_rate')
  double get executedTradeOpenRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'executed_trade_close_rate')
  double get executedTradeCloseRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'trade_type')
  String get tradeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'metal_type')
  String get metalType => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_metal_weight')
  double get baseMetalWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'account')
  Account? get account => throw _privateConstructorUsedError;

  /// Serializes this TradeResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeResultCopyWith<TradeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeResultCopyWith<$Res> {
  factory $TradeResultCopyWith(
          TradeResult value, $Res Function(TradeResult) then) =
      _$TradeResultCopyWithImpl<$Res, TradeResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'executed_trade_open_rate') double executedTradeOpenRate,
      @JsonKey(name: 'executed_trade_close_rate') double executedTradeCloseRate,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'trade_type') String tradeType,
      @JsonKey(name: 'metal_type') String metalType,
      @JsonKey(name: 'base_metal_weight') double baseMetalWeight,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'account') Account? account});

  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class _$TradeResultCopyWithImpl<$Res, $Val extends TradeResult>
    implements $TradeResultCopyWith<$Res> {
  _$TradeResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? executedTradeOpenRate = null,
    Object? executedTradeCloseRate = null,
    Object? quantity = null,
    Object? tradeType = null,
    Object? metalType = null,
    Object? baseMetalWeight = null,
    Object? createdAt = null,
    Object? account = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      executedTradeOpenRate: null == executedTradeOpenRate
          ? _value.executedTradeOpenRate
          : executedTradeOpenRate // ignore: cast_nullable_to_non_nullable
              as double,
      executedTradeCloseRate: null == executedTradeCloseRate
          ? _value.executedTradeCloseRate
          : executedTradeCloseRate // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      tradeType: null == tradeType
          ? _value.tradeType
          : tradeType // ignore: cast_nullable_to_non_nullable
              as String,
      metalType: null == metalType
          ? _value.metalType
          : metalType // ignore: cast_nullable_to_non_nullable
              as String,
      baseMetalWeight: null == baseMetalWeight
          ? _value.baseMetalWeight
          : baseMetalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
    ) as $Val);
  }

  /// Create a copy of TradeResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TradeResultImplCopyWith<$Res>
    implements $TradeResultCopyWith<$Res> {
  factory _$$TradeResultImplCopyWith(
          _$TradeResultImpl value, $Res Function(_$TradeResultImpl) then) =
      __$$TradeResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'executed_trade_open_rate') double executedTradeOpenRate,
      @JsonKey(name: 'executed_trade_close_rate') double executedTradeCloseRate,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'trade_type') String tradeType,
      @JsonKey(name: 'metal_type') String metalType,
      @JsonKey(name: 'base_metal_weight') double baseMetalWeight,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'account') Account? account});

  @override
  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class __$$TradeResultImplCopyWithImpl<$Res>
    extends _$TradeResultCopyWithImpl<$Res, _$TradeResultImpl>
    implements _$$TradeResultImplCopyWith<$Res> {
  __$$TradeResultImplCopyWithImpl(
      _$TradeResultImpl _value, $Res Function(_$TradeResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? executedTradeOpenRate = null,
    Object? executedTradeCloseRate = null,
    Object? quantity = null,
    Object? tradeType = null,
    Object? metalType = null,
    Object? baseMetalWeight = null,
    Object? createdAt = null,
    Object? account = freezed,
  }) {
    return _then(_$TradeResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      executedTradeOpenRate: null == executedTradeOpenRate
          ? _value.executedTradeOpenRate
          : executedTradeOpenRate // ignore: cast_nullable_to_non_nullable
              as double,
      executedTradeCloseRate: null == executedTradeCloseRate
          ? _value.executedTradeCloseRate
          : executedTradeCloseRate // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      tradeType: null == tradeType
          ? _value.tradeType
          : tradeType // ignore: cast_nullable_to_non_nullable
              as String,
      metalType: null == metalType
          ? _value.metalType
          : metalType // ignore: cast_nullable_to_non_nullable
              as String,
      baseMetalWeight: null == baseMetalWeight
          ? _value.baseMetalWeight
          : baseMetalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeResultImpl implements _TradeResult {
  _$TradeResultImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'executed_trade_open_rate')
      this.executedTradeOpenRate = 0.0,
      @JsonKey(name: 'executed_trade_close_rate')
      this.executedTradeCloseRate = 0.0,
      @JsonKey(name: 'quantity') this.quantity = 0,
      @JsonKey(name: 'trade_type') this.tradeType = '',
      @JsonKey(name: 'metal_type') this.metalType = '',
      @JsonKey(name: 'base_metal_weight') this.baseMetalWeight = 0.0,
      @JsonKey(name: 'createdAt') this.createdAt = '',
      @JsonKey(name: 'account') this.account});

  factory _$TradeResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeResultImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'executed_trade_open_rate')
  final double executedTradeOpenRate;
  @override
  @JsonKey(name: 'executed_trade_close_rate')
  final double executedTradeCloseRate;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'trade_type')
  final String tradeType;
  @override
  @JsonKey(name: 'metal_type')
  final String metalType;
  @override
  @JsonKey(name: 'base_metal_weight')
  final double baseMetalWeight;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'account')
  final Account? account;

  @override
  String toString() {
    return 'TradeResult(id: $id, executedTradeOpenRate: $executedTradeOpenRate, executedTradeCloseRate: $executedTradeCloseRate, quantity: $quantity, tradeType: $tradeType, metalType: $metalType, baseMetalWeight: $baseMetalWeight, createdAt: $createdAt, account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.executedTradeOpenRate, executedTradeOpenRate) ||
                other.executedTradeOpenRate == executedTradeOpenRate) &&
            (identical(other.executedTradeCloseRate, executedTradeCloseRate) ||
                other.executedTradeCloseRate == executedTradeCloseRate) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.tradeType, tradeType) ||
                other.tradeType == tradeType) &&
            (identical(other.metalType, metalType) ||
                other.metalType == metalType) &&
            (identical(other.baseMetalWeight, baseMetalWeight) ||
                other.baseMetalWeight == baseMetalWeight) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      executedTradeOpenRate,
      executedTradeCloseRate,
      quantity,
      tradeType,
      metalType,
      baseMetalWeight,
      createdAt,
      account);

  /// Create a copy of TradeResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeResultImplCopyWith<_$TradeResultImpl> get copyWith =>
      __$$TradeResultImplCopyWithImpl<_$TradeResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeResultImplToJson(
      this,
    );
  }
}

abstract class _TradeResult implements TradeResult {
  factory _TradeResult(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'executed_trade_open_rate')
      final double executedTradeOpenRate,
      @JsonKey(name: 'executed_trade_close_rate')
      final double executedTradeCloseRate,
      @JsonKey(name: 'quantity') final int quantity,
      @JsonKey(name: 'trade_type') final String tradeType,
      @JsonKey(name: 'metal_type') final String metalType,
      @JsonKey(name: 'base_metal_weight') final double baseMetalWeight,
      @JsonKey(name: 'createdAt') final String createdAt,
      @JsonKey(name: 'account') final Account? account}) = _$TradeResultImpl;

  factory _TradeResult.fromJson(Map<String, dynamic> json) =
      _$TradeResultImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'executed_trade_open_rate')
  double get executedTradeOpenRate;
  @override
  @JsonKey(name: 'executed_trade_close_rate')
  double get executedTradeCloseRate;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;
  @override
  @JsonKey(name: 'trade_type')
  String get tradeType;
  @override
  @JsonKey(name: 'metal_type')
  String get metalType;
  @override
  @JsonKey(name: 'base_metal_weight')
  double get baseMetalWeight;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'account')
  Account? get account;

  /// Create a copy of TradeResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeResultImplCopyWith<_$TradeResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'charge')
  double get charge => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'charge') double charge,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? charge = null,
    Object? type = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'charge') double charge,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? charge = null,
    Object? type = null,
    Object? createdAt = null,
  }) {
    return _then(_$AccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl implements _Account {
  _$AccountImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'amount') this.amount = 0.0,
      @JsonKey(name: 'charge') this.charge = 0.0,
      @JsonKey(name: 'type') this.type = '',
      @JsonKey(name: 'createdAt') this.createdAt = ''});

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'amount')
  final double amount;
  @override
  @JsonKey(name: 'charge')
  final double charge;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;

  @override
  String toString() {
    return 'Account(id: $id, amount: $amount, charge: $charge, type: $type, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.charge, charge) || other.charge == charge) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, charge, type, createdAt);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  factory _Account(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'amount') final double amount,
      @JsonKey(name: 'charge') final double charge,
      @JsonKey(name: 'type') final String type,
      @JsonKey(name: 'createdAt') final String createdAt}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'amount')
  double get amount;
  @override
  @JsonKey(name: 'charge')
  double get charge;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Paginate _$PaginateFromJson(Map<String, dynamic> json) {
  return _Paginate.fromJson(json);
}

/// @nodoc
mixin _$Paginate {
  @JsonKey(name: 'limit')
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'offset')
  int get offset => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  Metadata? get metadata => throw _privateConstructorUsedError;

  /// Serializes this Paginate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Paginate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginateCopyWith<Paginate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginateCopyWith<$Res> {
  factory $PaginateCopyWith(Paginate value, $Res Function(Paginate) then) =
      _$PaginateCopyWithImpl<$Res, Paginate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'metadata') Metadata? metadata});

  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$PaginateCopyWithImpl<$Res, $Val extends Paginate>
    implements $PaginateCopyWith<$Res> {
  _$PaginateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Paginate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? total = null,
    Object? offset = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
    ) as $Val);
  }

  /// Create a copy of Paginate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginateImplCopyWith<$Res>
    implements $PaginateCopyWith<$Res> {
  factory _$$PaginateImplCopyWith(
          _$PaginateImpl value, $Res Function(_$PaginateImpl) then) =
      __$$PaginateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'metadata') Metadata? metadata});

  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$PaginateImplCopyWithImpl<$Res>
    extends _$PaginateCopyWithImpl<$Res, _$PaginateImpl>
    implements _$$PaginateImplCopyWith<$Res> {
  __$$PaginateImplCopyWithImpl(
      _$PaginateImpl _value, $Res Function(_$PaginateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Paginate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? total = null,
    Object? offset = null,
    Object? metadata = freezed,
  }) {
    return _then(_$PaginateImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginateImpl implements _Paginate {
  _$PaginateImpl(
      {@JsonKey(name: 'limit') this.limit = 0,
      @JsonKey(name: 'total') this.total = 0,
      @JsonKey(name: 'offset') this.offset = 0,
      @JsonKey(name: 'metadata') this.metadata});

  factory _$PaginateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginateImplFromJson(json);

  @override
  @JsonKey(name: 'limit')
  final int limit;
  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'offset')
  final int offset;
  @override
  @JsonKey(name: 'metadata')
  final Metadata? metadata;

  @override
  String toString() {
    return 'Paginate(limit: $limit, total: $total, offset: $offset, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginateImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, total, offset, metadata);

  /// Create a copy of Paginate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginateImplCopyWith<_$PaginateImpl> get copyWith =>
      __$$PaginateImplCopyWithImpl<_$PaginateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginateImplToJson(
      this,
    );
  }
}

abstract class _Paginate implements Paginate {
  factory _Paginate(
      {@JsonKey(name: 'limit') final int limit,
      @JsonKey(name: 'total') final int total,
      @JsonKey(name: 'offset') final int offset,
      @JsonKey(name: 'metadata') final Metadata? metadata}) = _$PaginateImpl;

  factory _Paginate.fromJson(Map<String, dynamic> json) =
      _$PaginateImpl.fromJson;

  @override
  @JsonKey(name: 'limit')
  int get limit;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'offset')
  int get offset;
  @override
  @JsonKey(name: 'metadata')
  Metadata? get metadata;

  /// Create a copy of Paginate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginateImplCopyWith<_$PaginateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  @JsonKey(name: 'hasNextPage')
  bool get hasNextPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasPreviousPage')
  bool get hasPreviousPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  ListData? get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  PageData? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'paging')
  List<Paging> get paging => throw _privateConstructorUsedError;

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hasNextPage') bool hasNextPage,
      @JsonKey(name: 'hasPreviousPage') bool hasPreviousPage,
      @JsonKey(name: 'list') ListData? list,
      @JsonKey(name: 'page') PageData? page,
      @JsonKey(name: 'paging') List<Paging> paging});

  $ListDataCopyWith<$Res>? get list;
  $PageDataCopyWith<$Res>? get page;
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNextPage = null,
    Object? hasPreviousPage = null,
    Object? list = freezed,
    Object? page = freezed,
    Object? paging = null,
  }) {
    return _then(_value.copyWith(
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPreviousPage: null == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListData?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageData?,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as List<Paging>,
    ) as $Val);
  }

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListDataCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $ListDataCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageDataCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $PageDataCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
          _$MetadataImpl value, $Res Function(_$MetadataImpl) then) =
      __$$MetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hasNextPage') bool hasNextPage,
      @JsonKey(name: 'hasPreviousPage') bool hasPreviousPage,
      @JsonKey(name: 'list') ListData? list,
      @JsonKey(name: 'page') PageData? page,
      @JsonKey(name: 'paging') List<Paging> paging});

  @override
  $ListDataCopyWith<$Res>? get list;
  @override
  $PageDataCopyWith<$Res>? get page;
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
      _$MetadataImpl _value, $Res Function(_$MetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNextPage = null,
    Object? hasPreviousPage = null,
    Object? list = freezed,
    Object? page = freezed,
    Object? paging = null,
  }) {
    return _then(_$MetadataImpl(
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPreviousPage: null == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListData?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PageData?,
      paging: null == paging
          ? _value._paging
          : paging // ignore: cast_nullable_to_non_nullable
              as List<Paging>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl implements _Metadata {
  _$MetadataImpl(
      {@JsonKey(name: 'hasNextPage') this.hasNextPage = false,
      @JsonKey(name: 'hasPreviousPage') this.hasPreviousPage = false,
      @JsonKey(name: 'list') this.list,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'paging') final List<Paging> paging = const []})
      : _paging = paging;

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  @JsonKey(name: 'hasNextPage')
  final bool hasNextPage;
  @override
  @JsonKey(name: 'hasPreviousPage')
  final bool hasPreviousPage;
  @override
  @JsonKey(name: 'list')
  final ListData? list;
  @override
  @JsonKey(name: 'page')
  final PageData? page;
  final List<Paging> _paging;
  @override
  @JsonKey(name: 'paging')
  List<Paging> get paging {
    if (_paging is EqualUnmodifiableListView) return _paging;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paging);
  }

  @override
  String toString() {
    return 'Metadata(hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, list: $list, page: $page, paging: $paging)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataImpl &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._paging, _paging));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hasNextPage, hasPreviousPage,
      list, page, const DeepCollectionEquality().hash(_paging));

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      __$$MetadataImplCopyWithImpl<_$MetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  factory _Metadata(
      {@JsonKey(name: 'hasNextPage') final bool hasNextPage,
      @JsonKey(name: 'hasPreviousPage') final bool hasPreviousPage,
      @JsonKey(name: 'list') final ListData? list,
      @JsonKey(name: 'page') final PageData? page,
      @JsonKey(name: 'paging') final List<Paging> paging}) = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;

  @override
  @JsonKey(name: 'hasNextPage')
  bool get hasNextPage;
  @override
  @JsonKey(name: 'hasPreviousPage')
  bool get hasPreviousPage;
  @override
  @JsonKey(name: 'list')
  ListData? get list;
  @override
  @JsonKey(name: 'page')
  PageData? get page;
  @override
  @JsonKey(name: 'paging')
  List<Paging> get paging;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListData _$ListDataFromJson(Map<String, dynamic> json) {
  return _ListData.fromJson(json);
}

/// @nodoc
mixin _$ListData {
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this ListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListDataCopyWith<ListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDataCopyWith<$Res> {
  factory $ListDataCopyWith(ListData value, $Res Function(ListData) then) =
      _$ListDataCopyWithImpl<$Res, ListData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total, @JsonKey(name: 'limit') int limit});
}

/// @nodoc
class _$ListDataCopyWithImpl<$Res, $Val extends ListData>
    implements $ListDataCopyWith<$Res> {
  _$ListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListDataImplCopyWith<$Res>
    implements $ListDataCopyWith<$Res> {
  factory _$$ListDataImplCopyWith(
          _$ListDataImpl value, $Res Function(_$ListDataImpl) then) =
      __$$ListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total, @JsonKey(name: 'limit') int limit});
}

/// @nodoc
class __$$ListDataImplCopyWithImpl<$Res>
    extends _$ListDataCopyWithImpl<$Res, _$ListDataImpl>
    implements _$$ListDataImplCopyWith<$Res> {
  __$$ListDataImplCopyWithImpl(
      _$ListDataImpl _value, $Res Function(_$ListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? limit = null,
  }) {
    return _then(_$ListDataImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListDataImpl implements _ListData {
  _$ListDataImpl(
      {@JsonKey(name: 'total') this.total = 0,
      @JsonKey(name: 'limit') this.limit = 0});

  factory _$ListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListDataImplFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'limit')
  final int limit;

  @override
  String toString() {
    return 'ListData(total: $total, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, limit);

  /// Create a copy of ListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListDataImplCopyWith<_$ListDataImpl> get copyWith =>
      __$$ListDataImplCopyWithImpl<_$ListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListDataImplToJson(
      this,
    );
  }
}

abstract class _ListData implements ListData {
  factory _ListData(
      {@JsonKey(name: 'total') final int total,
      @JsonKey(name: 'limit') final int limit}) = _$ListDataImpl;

  factory _ListData.fromJson(Map<String, dynamic> json) =
      _$ListDataImpl.fromJson;

  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'limit')
  int get limit;

  /// Create a copy of ListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListDataImplCopyWith<_$ListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageData _$PageDataFromJson(Map<String, dynamic> json) {
  return _PageData.fromJson(json);
}

/// @nodoc
mixin _$PageData {
  @JsonKey(name: 'totalPage')
  int get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPage')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'nextPage')
  int? get nextPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'previousPage')
  int? get previousPage => throw _privateConstructorUsedError;

  /// Serializes this PageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageDataCopyWith<PageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageDataCopyWith<$Res> {
  factory $PageDataCopyWith(PageData value, $Res Function(PageData) then) =
      _$PageDataCopyWithImpl<$Res, PageData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'nextPage') int? nextPage,
      @JsonKey(name: 'previousPage') int? previousPage});
}

/// @nodoc
class _$PageDataCopyWithImpl<$Res, $Val extends PageData>
    implements $PageDataCopyWith<$Res> {
  _$PageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? currentPage = null,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
  }) {
    return _then(_value.copyWith(
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      previousPage: freezed == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageDataImplCopyWith<$Res>
    implements $PageDataCopyWith<$Res> {
  factory _$$PageDataImplCopyWith(
          _$PageDataImpl value, $Res Function(_$PageDataImpl) then) =
      __$$PageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'nextPage') int? nextPage,
      @JsonKey(name: 'previousPage') int? previousPage});
}

/// @nodoc
class __$$PageDataImplCopyWithImpl<$Res>
    extends _$PageDataCopyWithImpl<$Res, _$PageDataImpl>
    implements _$$PageDataImplCopyWith<$Res> {
  __$$PageDataImplCopyWithImpl(
      _$PageDataImpl _value, $Res Function(_$PageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? currentPage = null,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
  }) {
    return _then(_$PageDataImpl(
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      previousPage: freezed == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageDataImpl implements _PageData {
  _$PageDataImpl(
      {@JsonKey(name: 'totalPage') this.totalPage = 0,
      @JsonKey(name: 'currentPage') this.currentPage = 0,
      @JsonKey(name: 'nextPage') this.nextPage,
      @JsonKey(name: 'previousPage') this.previousPage});

  factory _$PageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageDataImplFromJson(json);

  @override
  @JsonKey(name: 'totalPage')
  final int totalPage;
  @override
  @JsonKey(name: 'currentPage')
  final int currentPage;
  @override
  @JsonKey(name: 'nextPage')
  final int? nextPage;
  @override
  @JsonKey(name: 'previousPage')
  final int? previousPage;

  @override
  String toString() {
    return 'PageData(totalPage: $totalPage, currentPage: $currentPage, nextPage: $nextPage, previousPage: $previousPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageDataImpl &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.previousPage, previousPage) ||
                other.previousPage == previousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalPage, currentPage, nextPage, previousPage);

  /// Create a copy of PageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageDataImplCopyWith<_$PageDataImpl> get copyWith =>
      __$$PageDataImplCopyWithImpl<_$PageDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageDataImplToJson(
      this,
    );
  }
}

abstract class _PageData implements PageData {
  factory _PageData(
      {@JsonKey(name: 'totalPage') final int totalPage,
      @JsonKey(name: 'currentPage') final int currentPage,
      @JsonKey(name: 'nextPage') final int? nextPage,
      @JsonKey(name: 'previousPage') final int? previousPage}) = _$PageDataImpl;

  factory _PageData.fromJson(Map<String, dynamic> json) =
      _$PageDataImpl.fromJson;

  @override
  @JsonKey(name: 'totalPage')
  int get totalPage;
  @override
  @JsonKey(name: 'currentPage')
  int get currentPage;
  @override
  @JsonKey(name: 'nextPage')
  int? get nextPage;
  @override
  @JsonKey(name: 'previousPage')
  int? get previousPage;

  /// Create a copy of PageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageDataImplCopyWith<_$PageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Paging _$PagingFromJson(Map<String, dynamic> json) {
  return _Paging.fromJson(json);
}

/// @nodoc
mixin _$Paging {
  @JsonKey(name: 'active')
  bool get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;

  /// Serializes this Paging to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Paging
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PagingCopyWith<Paging> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingCopyWith<$Res> {
  factory $PagingCopyWith(Paging value, $Res Function(Paging) then) =
      _$PagingCopyWithImpl<$Res, Paging>;
  @useResult
  $Res call(
      {@JsonKey(name: 'active') bool active, @JsonKey(name: 'page') int page});
}

/// @nodoc
class _$PagingCopyWithImpl<$Res, $Val extends Paging>
    implements $PagingCopyWith<$Res> {
  _$PagingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Paging
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagingImplCopyWith<$Res> implements $PagingCopyWith<$Res> {
  factory _$$PagingImplCopyWith(
          _$PagingImpl value, $Res Function(_$PagingImpl) then) =
      __$$PagingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'active') bool active, @JsonKey(name: 'page') int page});
}

/// @nodoc
class __$$PagingImplCopyWithImpl<$Res>
    extends _$PagingCopyWithImpl<$Res, _$PagingImpl>
    implements _$$PagingImplCopyWith<$Res> {
  __$$PagingImplCopyWithImpl(
      _$PagingImpl _value, $Res Function(_$PagingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Paging
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? page = null,
  }) {
    return _then(_$PagingImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagingImpl implements _Paging {
  _$PagingImpl(
      {@JsonKey(name: 'active') this.active = false,
      @JsonKey(name: 'page') this.page = 0});

  factory _$PagingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagingImplFromJson(json);

  @override
  @JsonKey(name: 'active')
  final bool active;
  @override
  @JsonKey(name: 'page')
  final int page;

  @override
  String toString() {
    return 'Paging(active: $active, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagingImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, active, page);

  /// Create a copy of Paging
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PagingImplCopyWith<_$PagingImpl> get copyWith =>
      __$$PagingImplCopyWithImpl<_$PagingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagingImplToJson(
      this,
    );
  }
}

abstract class _Paging implements Paging {
  factory _Paging(
      {@JsonKey(name: 'active') final bool active,
      @JsonKey(name: 'page') final int page}) = _$PagingImpl;

  factory _Paging.fromJson(Map<String, dynamic> json) = _$PagingImpl.fromJson;

  @override
  @JsonKey(name: 'active')
  bool get active;
  @override
  @JsonKey(name: 'page')
  int get page;

  /// Create a copy of Paging
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PagingImplCopyWith<_$PagingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
