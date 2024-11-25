// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_trade_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActiveTradeModel _$ActiveTradeModelFromJson(Map<String, dynamic> json) {
  return _ActiveTradeModel.fromJson(json);
}

/// @nodoc
mixin _$ActiveTradeModel {
  @JsonKey(name: 'status')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  ActiveTradeData? get data => throw _privateConstructorUsedError;

  /// Serializes this ActiveTradeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveTradeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveTradeModelCopyWith<ActiveTradeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveTradeModelCopyWith<$Res> {
  factory $ActiveTradeModelCopyWith(
          ActiveTradeModel value, $Res Function(ActiveTradeModel) then) =
      _$ActiveTradeModelCopyWithImpl<$Res, ActiveTradeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') ActiveTradeData? data});

  $ActiveTradeDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ActiveTradeModelCopyWithImpl<$Res, $Val extends ActiveTradeModel>
    implements $ActiveTradeModelCopyWith<$Res> {
  _$ActiveTradeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveTradeModel
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
              as ActiveTradeData?,
    ) as $Val);
  }

  /// Create a copy of ActiveTradeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActiveTradeDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ActiveTradeDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActiveTradeModelImplCopyWith<$Res>
    implements $ActiveTradeModelCopyWith<$Res> {
  factory _$$ActiveTradeModelImplCopyWith(_$ActiveTradeModelImpl value,
          $Res Function(_$ActiveTradeModelImpl) then) =
      __$$ActiveTradeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') ActiveTradeData? data});

  @override
  $ActiveTradeDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ActiveTradeModelImplCopyWithImpl<$Res>
    extends _$ActiveTradeModelCopyWithImpl<$Res, _$ActiveTradeModelImpl>
    implements _$$ActiveTradeModelImplCopyWith<$Res> {
  __$$ActiveTradeModelImplCopyWithImpl(_$ActiveTradeModelImpl _value,
      $Res Function(_$ActiveTradeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveTradeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$ActiveTradeModelImpl(
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
              as ActiveTradeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveTradeModelImpl implements _ActiveTradeModel {
  _$ActiveTradeModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') this.data});

  factory _$ActiveTradeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveTradeModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool status;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'data')
  final ActiveTradeData? data;

  @override
  String toString() {
    return 'ActiveTradeModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveTradeModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of ActiveTradeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveTradeModelImplCopyWith<_$ActiveTradeModelImpl> get copyWith =>
      __$$ActiveTradeModelImplCopyWithImpl<_$ActiveTradeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveTradeModelImplToJson(
      this,
    );
  }
}

abstract class _ActiveTradeModel implements ActiveTradeModel {
  factory _ActiveTradeModel(
          {@JsonKey(name: 'status') final bool status,
          @JsonKey(name: 'message') final String message,
          @JsonKey(name: 'data') final ActiveTradeData? data}) =
      _$ActiveTradeModelImpl;

  factory _ActiveTradeModel.fromJson(Map<String, dynamic> json) =
      _$ActiveTradeModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  ActiveTradeData? get data;

  /// Create a copy of ActiveTradeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveTradeModelImplCopyWith<_$ActiveTradeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActiveTradeData _$ActiveTradeDataFromJson(Map<String, dynamic> json) {
  return _ActiveTradeData.fromJson(json);
}

/// @nodoc
mixin _$ActiveTradeData {
  @JsonKey(name: 'result')
  List<TradeResult> get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'paginate')
  Pagination? get paginate => throw _privateConstructorUsedError;

  /// Serializes this ActiveTradeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveTradeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveTradeDataCopyWith<ActiveTradeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveTradeDataCopyWith<$Res> {
  factory $ActiveTradeDataCopyWith(
          ActiveTradeData value, $Res Function(ActiveTradeData) then) =
      _$ActiveTradeDataCopyWithImpl<$Res, ActiveTradeData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') List<TradeResult> result,
      @JsonKey(name: 'paginate') Pagination? paginate});

  $PaginationCopyWith<$Res>? get paginate;
}

/// @nodoc
class _$ActiveTradeDataCopyWithImpl<$Res, $Val extends ActiveTradeData>
    implements $ActiveTradeDataCopyWith<$Res> {
  _$ActiveTradeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveTradeData
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
              as Pagination?,
    ) as $Val);
  }

  /// Create a copy of ActiveTradeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get paginate {
    if (_value.paginate == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.paginate!, (value) {
      return _then(_value.copyWith(paginate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActiveTradeDataImplCopyWith<$Res>
    implements $ActiveTradeDataCopyWith<$Res> {
  factory _$$ActiveTradeDataImplCopyWith(_$ActiveTradeDataImpl value,
          $Res Function(_$ActiveTradeDataImpl) then) =
      __$$ActiveTradeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') List<TradeResult> result,
      @JsonKey(name: 'paginate') Pagination? paginate});

  @override
  $PaginationCopyWith<$Res>? get paginate;
}

/// @nodoc
class __$$ActiveTradeDataImplCopyWithImpl<$Res>
    extends _$ActiveTradeDataCopyWithImpl<$Res, _$ActiveTradeDataImpl>
    implements _$$ActiveTradeDataImplCopyWith<$Res> {
  __$$ActiveTradeDataImplCopyWithImpl(
      _$ActiveTradeDataImpl _value, $Res Function(_$ActiveTradeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveTradeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? paginate = freezed,
  }) {
    return _then(_$ActiveTradeDataImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<TradeResult>,
      paginate: freezed == paginate
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveTradeDataImpl implements _ActiveTradeData {
  _$ActiveTradeDataImpl(
      {@JsonKey(name: 'result') final List<TradeResult> result = const [],
      @JsonKey(name: 'paginate') this.paginate})
      : _result = result;

  factory _$ActiveTradeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveTradeDataImplFromJson(json);

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
  final Pagination? paginate;

  @override
  String toString() {
    return 'ActiveTradeData(result: $result, paginate: $paginate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveTradeDataImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.paginate, paginate) ||
                other.paginate == paginate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_result), paginate);

  /// Create a copy of ActiveTradeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveTradeDataImplCopyWith<_$ActiveTradeDataImpl> get copyWith =>
      __$$ActiveTradeDataImplCopyWithImpl<_$ActiveTradeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveTradeDataImplToJson(
      this,
    );
  }
}

abstract class _ActiveTradeData implements ActiveTradeData {
  factory _ActiveTradeData(
          {@JsonKey(name: 'result') final List<TradeResult> result,
          @JsonKey(name: 'paginate') final Pagination? paginate}) =
      _$ActiveTradeDataImpl;

  factory _ActiveTradeData.fromJson(Map<String, dynamic> json) =
      _$ActiveTradeDataImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  List<TradeResult> get result;
  @override
  @JsonKey(name: 'paginate')
  Pagination? get paginate;

  /// Create a copy of ActiveTradeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveTradeDataImplCopyWith<_$ActiveTradeDataImpl> get copyWith =>
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
  @JsonKey(name: 'pending_trade_trigger_rate')
  double? get pendingTradeTriggerRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'take_profit')
  double? get takeProfit => throw _privateConstructorUsedError;
  @JsonKey(name: 'stop_loss')
  double? get stopLoss => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'trade_type')
  String get tradeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'metal_type')
  String get metalType => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_metal_weight')
  double get baseMetalWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'isAutoClose')
  bool get isAutoClose => throw _privateConstructorUsedError;
  @JsonKey(name: 'pendingAt')
  String? get pendingAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'pending_trade_trigger_rate')
      double? pendingTradeTriggerRate,
      @JsonKey(name: 'take_profit') double? takeProfit,
      @JsonKey(name: 'stop_loss') double? stopLoss,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'trade_type') String tradeType,
      @JsonKey(name: 'metal_type') String metalType,
      @JsonKey(name: 'base_metal_weight') double baseMetalWeight,
      @JsonKey(name: 'isAutoClose') bool isAutoClose,
      @JsonKey(name: 'pendingAt') String? pendingAt,
      @JsonKey(name: 'createdAt') String createdAt});
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
    Object? pendingTradeTriggerRate = freezed,
    Object? takeProfit = freezed,
    Object? stopLoss = freezed,
    Object? quantity = null,
    Object? tradeType = null,
    Object? metalType = null,
    Object? baseMetalWeight = null,
    Object? isAutoClose = null,
    Object? pendingAt = freezed,
    Object? createdAt = null,
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
      pendingTradeTriggerRate: freezed == pendingTradeTriggerRate
          ? _value.pendingTradeTriggerRate
          : pendingTradeTriggerRate // ignore: cast_nullable_to_non_nullable
              as double?,
      takeProfit: freezed == takeProfit
          ? _value.takeProfit
          : takeProfit // ignore: cast_nullable_to_non_nullable
              as double?,
      stopLoss: freezed == stopLoss
          ? _value.stopLoss
          : stopLoss // ignore: cast_nullable_to_non_nullable
              as double?,
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
      isAutoClose: null == isAutoClose
          ? _value.isAutoClose
          : isAutoClose // ignore: cast_nullable_to_non_nullable
              as bool,
      pendingAt: freezed == pendingAt
          ? _value.pendingAt
          : pendingAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
      @JsonKey(name: 'pending_trade_trigger_rate')
      double? pendingTradeTriggerRate,
      @JsonKey(name: 'take_profit') double? takeProfit,
      @JsonKey(name: 'stop_loss') double? stopLoss,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'trade_type') String tradeType,
      @JsonKey(name: 'metal_type') String metalType,
      @JsonKey(name: 'base_metal_weight') double baseMetalWeight,
      @JsonKey(name: 'isAutoClose') bool isAutoClose,
      @JsonKey(name: 'pendingAt') String? pendingAt,
      @JsonKey(name: 'createdAt') String createdAt});
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
    Object? pendingTradeTriggerRate = freezed,
    Object? takeProfit = freezed,
    Object? stopLoss = freezed,
    Object? quantity = null,
    Object? tradeType = null,
    Object? metalType = null,
    Object? baseMetalWeight = null,
    Object? isAutoClose = null,
    Object? pendingAt = freezed,
    Object? createdAt = null,
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
      pendingTradeTriggerRate: freezed == pendingTradeTriggerRate
          ? _value.pendingTradeTriggerRate
          : pendingTradeTriggerRate // ignore: cast_nullable_to_non_nullable
              as double?,
      takeProfit: freezed == takeProfit
          ? _value.takeProfit
          : takeProfit // ignore: cast_nullable_to_non_nullable
              as double?,
      stopLoss: freezed == stopLoss
          ? _value.stopLoss
          : stopLoss // ignore: cast_nullable_to_non_nullable
              as double?,
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
      isAutoClose: null == isAutoClose
          ? _value.isAutoClose
          : isAutoClose // ignore: cast_nullable_to_non_nullable
              as bool,
      pendingAt: freezed == pendingAt
          ? _value.pendingAt
          : pendingAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: 'pending_trade_trigger_rate')
      this.pendingTradeTriggerRate = null,
      @JsonKey(name: 'take_profit') this.takeProfit = null,
      @JsonKey(name: 'stop_loss') this.stopLoss = null,
      @JsonKey(name: 'quantity') this.quantity = 0,
      @JsonKey(name: 'trade_type') this.tradeType = '',
      @JsonKey(name: 'metal_type') this.metalType = '',
      @JsonKey(name: 'base_metal_weight') this.baseMetalWeight = 0.0,
      @JsonKey(name: 'isAutoClose') this.isAutoClose = false,
      @JsonKey(name: 'pendingAt') this.pendingAt,
      @JsonKey(name: 'createdAt') this.createdAt = ''});

  factory _$TradeResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeResultImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'executed_trade_open_rate')
  final double executedTradeOpenRate;
  @override
  @JsonKey(name: 'pending_trade_trigger_rate')
  final double? pendingTradeTriggerRate;
  @override
  @JsonKey(name: 'take_profit')
  final double? takeProfit;
  @override
  @JsonKey(name: 'stop_loss')
  final double? stopLoss;
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
  @JsonKey(name: 'isAutoClose')
  final bool isAutoClose;
  @override
  @JsonKey(name: 'pendingAt')
  final String? pendingAt;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;

  @override
  String toString() {
    return 'TradeResult(id: $id, executedTradeOpenRate: $executedTradeOpenRate, pendingTradeTriggerRate: $pendingTradeTriggerRate, takeProfit: $takeProfit, stopLoss: $stopLoss, quantity: $quantity, tradeType: $tradeType, metalType: $metalType, baseMetalWeight: $baseMetalWeight, isAutoClose: $isAutoClose, pendingAt: $pendingAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.executedTradeOpenRate, executedTradeOpenRate) ||
                other.executedTradeOpenRate == executedTradeOpenRate) &&
            (identical(
                    other.pendingTradeTriggerRate, pendingTradeTriggerRate) ||
                other.pendingTradeTriggerRate == pendingTradeTriggerRate) &&
            (identical(other.takeProfit, takeProfit) ||
                other.takeProfit == takeProfit) &&
            (identical(other.stopLoss, stopLoss) ||
                other.stopLoss == stopLoss) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.tradeType, tradeType) ||
                other.tradeType == tradeType) &&
            (identical(other.metalType, metalType) ||
                other.metalType == metalType) &&
            (identical(other.baseMetalWeight, baseMetalWeight) ||
                other.baseMetalWeight == baseMetalWeight) &&
            (identical(other.isAutoClose, isAutoClose) ||
                other.isAutoClose == isAutoClose) &&
            (identical(other.pendingAt, pendingAt) ||
                other.pendingAt == pendingAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      executedTradeOpenRate,
      pendingTradeTriggerRate,
      takeProfit,
      stopLoss,
      quantity,
      tradeType,
      metalType,
      baseMetalWeight,
      isAutoClose,
      pendingAt,
      createdAt);

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
      @JsonKey(name: 'pending_trade_trigger_rate')
      final double? pendingTradeTriggerRate,
      @JsonKey(name: 'take_profit') final double? takeProfit,
      @JsonKey(name: 'stop_loss') final double? stopLoss,
      @JsonKey(name: 'quantity') final int quantity,
      @JsonKey(name: 'trade_type') final String tradeType,
      @JsonKey(name: 'metal_type') final String metalType,
      @JsonKey(name: 'base_metal_weight') final double baseMetalWeight,
      @JsonKey(name: 'isAutoClose') final bool isAutoClose,
      @JsonKey(name: 'pendingAt') final String? pendingAt,
      @JsonKey(name: 'createdAt') final String createdAt}) = _$TradeResultImpl;

  factory _TradeResult.fromJson(Map<String, dynamic> json) =
      _$TradeResultImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'executed_trade_open_rate')
  double get executedTradeOpenRate;
  @override
  @JsonKey(name: 'pending_trade_trigger_rate')
  double? get pendingTradeTriggerRate;
  @override
  @JsonKey(name: 'take_profit')
  double? get takeProfit;
  @override
  @JsonKey(name: 'stop_loss')
  double? get stopLoss;
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
  @JsonKey(name: 'isAutoClose')
  bool get isAutoClose;
  @override
  @JsonKey(name: 'pendingAt')
  String? get pendingAt;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;

  /// Create a copy of TradeResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeResultImplCopyWith<_$TradeResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  @JsonKey(name: 'limit')
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'offset')
  int get offset => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  Metadata? get metadata => throw _privateConstructorUsedError;

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {@JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'metadata') Metadata? metadata});

  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pagination
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

  /// Create a copy of Pagination
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
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
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
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? total = null,
    Object? offset = null,
    Object? metadata = freezed,
  }) {
    return _then(_$PaginationImpl(
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
class _$PaginationImpl implements _Pagination {
  _$PaginationImpl(
      {@JsonKey(name: 'limit') this.limit = 10,
      @JsonKey(name: 'total') this.total = 0,
      @JsonKey(name: 'offset') this.offset = 0,
      @JsonKey(name: 'metadata') this.metadata});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

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
    return 'Pagination(limit: $limit, total: $total, offset: $offset, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, total, offset, metadata);

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  factory _Pagination(
      {@JsonKey(name: 'limit') final int limit,
      @JsonKey(name: 'total') final int total,
      @JsonKey(name: 'offset') final int offset,
      @JsonKey(name: 'metadata') final Metadata? metadata}) = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

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

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
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
  MetadataList? get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  MetadataPage? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'paging')
  List<dynamic> get paging => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'list') MetadataList? list,
      @JsonKey(name: 'page') MetadataPage? page,
      @JsonKey(name: 'paging') List<dynamic> paging});

  $MetadataListCopyWith<$Res>? get list;
  $MetadataPageCopyWith<$Res>? get page;
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
              as MetadataList?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as MetadataPage?,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataListCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $MetadataListCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataPageCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $MetadataPageCopyWith<$Res>(_value.page!, (value) {
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
      @JsonKey(name: 'list') MetadataList? list,
      @JsonKey(name: 'page') MetadataPage? page,
      @JsonKey(name: 'paging') List<dynamic> paging});

  @override
  $MetadataListCopyWith<$Res>? get list;
  @override
  $MetadataPageCopyWith<$Res>? get page;
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
              as MetadataList?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as MetadataPage?,
      paging: null == paging
          ? _value._paging
          : paging // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      @JsonKey(name: 'paging') final List<dynamic> paging = const []})
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
  final MetadataList? list;
  @override
  @JsonKey(name: 'page')
  final MetadataPage? page;
  final List<dynamic> _paging;
  @override
  @JsonKey(name: 'paging')
  List<dynamic> get paging {
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
      @JsonKey(name: 'list') final MetadataList? list,
      @JsonKey(name: 'page') final MetadataPage? page,
      @JsonKey(name: 'paging') final List<dynamic> paging}) = _$MetadataImpl;

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
  MetadataList? get list;
  @override
  @JsonKey(name: 'page')
  MetadataPage? get page;
  @override
  @JsonKey(name: 'paging')
  List<dynamic> get paging;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetadataList _$MetadataListFromJson(Map<String, dynamic> json) {
  return _MetadataList.fromJson(json);
}

/// @nodoc
mixin _$MetadataList {
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this MetadataList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetadataList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataListCopyWith<MetadataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataListCopyWith<$Res> {
  factory $MetadataListCopyWith(
          MetadataList value, $Res Function(MetadataList) then) =
      _$MetadataListCopyWithImpl<$Res, MetadataList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total, @JsonKey(name: 'limit') int limit});
}

/// @nodoc
class _$MetadataListCopyWithImpl<$Res, $Val extends MetadataList>
    implements $MetadataListCopyWith<$Res> {
  _$MetadataListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetadataList
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
abstract class _$$MetadataListImplCopyWith<$Res>
    implements $MetadataListCopyWith<$Res> {
  factory _$$MetadataListImplCopyWith(
          _$MetadataListImpl value, $Res Function(_$MetadataListImpl) then) =
      __$$MetadataListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total, @JsonKey(name: 'limit') int limit});
}

/// @nodoc
class __$$MetadataListImplCopyWithImpl<$Res>
    extends _$MetadataListCopyWithImpl<$Res, _$MetadataListImpl>
    implements _$$MetadataListImplCopyWith<$Res> {
  __$$MetadataListImplCopyWithImpl(
      _$MetadataListImpl _value, $Res Function(_$MetadataListImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetadataList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? limit = null,
  }) {
    return _then(_$MetadataListImpl(
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
class _$MetadataListImpl implements _MetadataList {
  _$MetadataListImpl(
      {@JsonKey(name: 'total') this.total = 0,
      @JsonKey(name: 'limit') this.limit = 10});

  factory _$MetadataListImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataListImplFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'limit')
  final int limit;

  @override
  String toString() {
    return 'MetadataList(total: $total, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataListImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, limit);

  /// Create a copy of MetadataList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataListImplCopyWith<_$MetadataListImpl> get copyWith =>
      __$$MetadataListImplCopyWithImpl<_$MetadataListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataListImplToJson(
      this,
    );
  }
}

abstract class _MetadataList implements MetadataList {
  factory _MetadataList(
      {@JsonKey(name: 'total') final int total,
      @JsonKey(name: 'limit') final int limit}) = _$MetadataListImpl;

  factory _MetadataList.fromJson(Map<String, dynamic> json) =
      _$MetadataListImpl.fromJson;

  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'limit')
  int get limit;

  /// Create a copy of MetadataList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataListImplCopyWith<_$MetadataListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetadataPage _$MetadataPageFromJson(Map<String, dynamic> json) {
  return _MetadataPage.fromJson(json);
}

/// @nodoc
mixin _$MetadataPage {
  @JsonKey(name: 'totalPage')
  int get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPage')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'nextPage')
  int? get nextPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'previousPage')
  int? get previousPage => throw _privateConstructorUsedError;

  /// Serializes this MetadataPage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetadataPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataPageCopyWith<MetadataPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataPageCopyWith<$Res> {
  factory $MetadataPageCopyWith(
          MetadataPage value, $Res Function(MetadataPage) then) =
      _$MetadataPageCopyWithImpl<$Res, MetadataPage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'nextPage') int? nextPage,
      @JsonKey(name: 'previousPage') int? previousPage});
}

/// @nodoc
class _$MetadataPageCopyWithImpl<$Res, $Val extends MetadataPage>
    implements $MetadataPageCopyWith<$Res> {
  _$MetadataPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetadataPage
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
abstract class _$$MetadataPageImplCopyWith<$Res>
    implements $MetadataPageCopyWith<$Res> {
  factory _$$MetadataPageImplCopyWith(
          _$MetadataPageImpl value, $Res Function(_$MetadataPageImpl) then) =
      __$$MetadataPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'nextPage') int? nextPage,
      @JsonKey(name: 'previousPage') int? previousPage});
}

/// @nodoc
class __$$MetadataPageImplCopyWithImpl<$Res>
    extends _$MetadataPageCopyWithImpl<$Res, _$MetadataPageImpl>
    implements _$$MetadataPageImplCopyWith<$Res> {
  __$$MetadataPageImplCopyWithImpl(
      _$MetadataPageImpl _value, $Res Function(_$MetadataPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetadataPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? currentPage = null,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
  }) {
    return _then(_$MetadataPageImpl(
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
class _$MetadataPageImpl implements _MetadataPage {
  _$MetadataPageImpl(
      {@JsonKey(name: 'totalPage') this.totalPage = 1,
      @JsonKey(name: 'currentPage') this.currentPage = 1,
      @JsonKey(name: 'nextPage') this.nextPage,
      @JsonKey(name: 'previousPage') this.previousPage});

  factory _$MetadataPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataPageImplFromJson(json);

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
    return 'MetadataPage(totalPage: $totalPage, currentPage: $currentPage, nextPage: $nextPage, previousPage: $previousPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataPageImpl &&
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

  /// Create a copy of MetadataPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataPageImplCopyWith<_$MetadataPageImpl> get copyWith =>
      __$$MetadataPageImplCopyWithImpl<_$MetadataPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataPageImplToJson(
      this,
    );
  }
}

abstract class _MetadataPage implements MetadataPage {
  factory _MetadataPage(
          {@JsonKey(name: 'totalPage') final int totalPage,
          @JsonKey(name: 'currentPage') final int currentPage,
          @JsonKey(name: 'nextPage') final int? nextPage,
          @JsonKey(name: 'previousPage') final int? previousPage}) =
      _$MetadataPageImpl;

  factory _MetadataPage.fromJson(Map<String, dynamic> json) =
      _$MetadataPageImpl.fromJson;

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

  /// Create a copy of MetadataPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataPageImplCopyWith<_$MetadataPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
