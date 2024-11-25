// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatementModel _$StatementModelFromJson(Map<String, dynamic> json) {
  return _StatementModel.fromJson(json);
}

/// @nodoc
mixin _$StatementModel {
  @JsonKey(name: 'status')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StatementData get data => throw _privateConstructorUsedError;

  /// Serializes this StatementModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatementModelCopyWith<StatementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatementModelCopyWith<$Res> {
  factory $StatementModelCopyWith(
          StatementModel value, $Res Function(StatementModel) then) =
      _$StatementModelCopyWithImpl<$Res, StatementModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') StatementData data});

  $StatementDataCopyWith<$Res> get data;
}

/// @nodoc
class _$StatementModelCopyWithImpl<$Res, $Val extends StatementModel>
    implements $StatementModelCopyWith<$Res> {
  _$StatementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StatementData,
    ) as $Val);
  }

  /// Create a copy of StatementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatementDataCopyWith<$Res> get data {
    return $StatementDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatementModelImplCopyWith<$Res>
    implements $StatementModelCopyWith<$Res> {
  factory _$$StatementModelImplCopyWith(_$StatementModelImpl value,
          $Res Function(_$StatementModelImpl) then) =
      __$$StatementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') StatementData data});

  @override
  $StatementDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$StatementModelImplCopyWithImpl<$Res>
    extends _$StatementModelCopyWithImpl<$Res, _$StatementModelImpl>
    implements _$$StatementModelImplCopyWith<$Res> {
  __$$StatementModelImplCopyWithImpl(
      _$StatementModelImpl _value, $Res Function(_$StatementModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$StatementModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StatementData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatementModelImpl implements _StatementModel {
  const _$StatementModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') this.data = const StatementData()});

  factory _$StatementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatementModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool status;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'data')
  final StatementData data;

  @override
  String toString() {
    return 'StatementModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatementModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of StatementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatementModelImplCopyWith<_$StatementModelImpl> get copyWith =>
      __$$StatementModelImplCopyWithImpl<_$StatementModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatementModelImplToJson(
      this,
    );
  }
}

abstract class _StatementModel implements StatementModel {
  const factory _StatementModel(
      {@JsonKey(name: 'status') final bool status,
      @JsonKey(name: 'message') final String message,
      @JsonKey(name: 'data') final StatementData data}) = _$StatementModelImpl;

  factory _StatementModel.fromJson(Map<String, dynamic> json) =
      _$StatementModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  StatementData get data;

  /// Create a copy of StatementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatementModelImplCopyWith<_$StatementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatementData _$StatementDataFromJson(Map<String, dynamic> json) {
  return _StatementData.fromJson(json);
}

/// @nodoc
mixin _$StatementData {
  @JsonKey(name: 'goldPrice')
  GoldPrice get goldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  Summary get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'transactionSummary')
  TransactionSummary get transactionSummary =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'activeTradeSummary')
  ActiveTradeSummary get activeTradeSummary =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'completedTradeSummary')
  CompletedTradeSummary get completedTradeSummary =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'activeTradeArray')
  List<ActiveTrade> get activeTradeArray => throw _privateConstructorUsedError;
  @JsonKey(name: 'completedTradeArray')
  List<CompletedTrade> get completedTradeArray =>
      throw _privateConstructorUsedError;

  /// Serializes this StatementData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatementData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatementDataCopyWith<StatementData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatementDataCopyWith<$Res> {
  factory $StatementDataCopyWith(
          StatementData value, $Res Function(StatementData) then) =
      _$StatementDataCopyWithImpl<$Res, StatementData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'goldPrice') GoldPrice goldPrice,
      @JsonKey(name: 'summary') Summary summary,
      @JsonKey(name: 'transactionSummary')
      TransactionSummary transactionSummary,
      @JsonKey(name: 'activeTradeSummary')
      ActiveTradeSummary activeTradeSummary,
      @JsonKey(name: 'completedTradeSummary')
      CompletedTradeSummary completedTradeSummary,
      @JsonKey(name: 'activeTradeArray') List<ActiveTrade> activeTradeArray,
      @JsonKey(name: 'completedTradeArray')
      List<CompletedTrade> completedTradeArray});

  $GoldPriceCopyWith<$Res> get goldPrice;
  $SummaryCopyWith<$Res> get summary;
  $TransactionSummaryCopyWith<$Res> get transactionSummary;
  $ActiveTradeSummaryCopyWith<$Res> get activeTradeSummary;
  $CompletedTradeSummaryCopyWith<$Res> get completedTradeSummary;
}

/// @nodoc
class _$StatementDataCopyWithImpl<$Res, $Val extends StatementData>
    implements $StatementDataCopyWith<$Res> {
  _$StatementDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatementData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goldPrice = null,
    Object? summary = null,
    Object? transactionSummary = null,
    Object? activeTradeSummary = null,
    Object? completedTradeSummary = null,
    Object? activeTradeArray = null,
    Object? completedTradeArray = null,
  }) {
    return _then(_value.copyWith(
      goldPrice: null == goldPrice
          ? _value.goldPrice
          : goldPrice // ignore: cast_nullable_to_non_nullable
              as GoldPrice,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      transactionSummary: null == transactionSummary
          ? _value.transactionSummary
          : transactionSummary // ignore: cast_nullable_to_non_nullable
              as TransactionSummary,
      activeTradeSummary: null == activeTradeSummary
          ? _value.activeTradeSummary
          : activeTradeSummary // ignore: cast_nullable_to_non_nullable
              as ActiveTradeSummary,
      completedTradeSummary: null == completedTradeSummary
          ? _value.completedTradeSummary
          : completedTradeSummary // ignore: cast_nullable_to_non_nullable
              as CompletedTradeSummary,
      activeTradeArray: null == activeTradeArray
          ? _value.activeTradeArray
          : activeTradeArray // ignore: cast_nullable_to_non_nullable
              as List<ActiveTrade>,
      completedTradeArray: null == completedTradeArray
          ? _value.completedTradeArray
          : completedTradeArray // ignore: cast_nullable_to_non_nullable
              as List<CompletedTrade>,
    ) as $Val);
  }

  /// Create a copy of StatementData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoldPriceCopyWith<$Res> get goldPrice {
    return $GoldPriceCopyWith<$Res>(_value.goldPrice, (value) {
      return _then(_value.copyWith(goldPrice: value) as $Val);
    });
  }

  /// Create a copy of StatementData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SummaryCopyWith<$Res> get summary {
    return $SummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }

  /// Create a copy of StatementData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionSummaryCopyWith<$Res> get transactionSummary {
    return $TransactionSummaryCopyWith<$Res>(_value.transactionSummary,
        (value) {
      return _then(_value.copyWith(transactionSummary: value) as $Val);
    });
  }

  /// Create a copy of StatementData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActiveTradeSummaryCopyWith<$Res> get activeTradeSummary {
    return $ActiveTradeSummaryCopyWith<$Res>(_value.activeTradeSummary,
        (value) {
      return _then(_value.copyWith(activeTradeSummary: value) as $Val);
    });
  }

  /// Create a copy of StatementData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompletedTradeSummaryCopyWith<$Res> get completedTradeSummary {
    return $CompletedTradeSummaryCopyWith<$Res>(_value.completedTradeSummary,
        (value) {
      return _then(_value.copyWith(completedTradeSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatementDataImplCopyWith<$Res>
    implements $StatementDataCopyWith<$Res> {
  factory _$$StatementDataImplCopyWith(
          _$StatementDataImpl value, $Res Function(_$StatementDataImpl) then) =
      __$$StatementDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'goldPrice') GoldPrice goldPrice,
      @JsonKey(name: 'summary') Summary summary,
      @JsonKey(name: 'transactionSummary')
      TransactionSummary transactionSummary,
      @JsonKey(name: 'activeTradeSummary')
      ActiveTradeSummary activeTradeSummary,
      @JsonKey(name: 'completedTradeSummary')
      CompletedTradeSummary completedTradeSummary,
      @JsonKey(name: 'activeTradeArray') List<ActiveTrade> activeTradeArray,
      @JsonKey(name: 'completedTradeArray')
      List<CompletedTrade> completedTradeArray});

  @override
  $GoldPriceCopyWith<$Res> get goldPrice;
  @override
  $SummaryCopyWith<$Res> get summary;
  @override
  $TransactionSummaryCopyWith<$Res> get transactionSummary;
  @override
  $ActiveTradeSummaryCopyWith<$Res> get activeTradeSummary;
  @override
  $CompletedTradeSummaryCopyWith<$Res> get completedTradeSummary;
}

/// @nodoc
class __$$StatementDataImplCopyWithImpl<$Res>
    extends _$StatementDataCopyWithImpl<$Res, _$StatementDataImpl>
    implements _$$StatementDataImplCopyWith<$Res> {
  __$$StatementDataImplCopyWithImpl(
      _$StatementDataImpl _value, $Res Function(_$StatementDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatementData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goldPrice = null,
    Object? summary = null,
    Object? transactionSummary = null,
    Object? activeTradeSummary = null,
    Object? completedTradeSummary = null,
    Object? activeTradeArray = null,
    Object? completedTradeArray = null,
  }) {
    return _then(_$StatementDataImpl(
      goldPrice: null == goldPrice
          ? _value.goldPrice
          : goldPrice // ignore: cast_nullable_to_non_nullable
              as GoldPrice,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      transactionSummary: null == transactionSummary
          ? _value.transactionSummary
          : transactionSummary // ignore: cast_nullable_to_non_nullable
              as TransactionSummary,
      activeTradeSummary: null == activeTradeSummary
          ? _value.activeTradeSummary
          : activeTradeSummary // ignore: cast_nullable_to_non_nullable
              as ActiveTradeSummary,
      completedTradeSummary: null == completedTradeSummary
          ? _value.completedTradeSummary
          : completedTradeSummary // ignore: cast_nullable_to_non_nullable
              as CompletedTradeSummary,
      activeTradeArray: null == activeTradeArray
          ? _value._activeTradeArray
          : activeTradeArray // ignore: cast_nullable_to_non_nullable
              as List<ActiveTrade>,
      completedTradeArray: null == completedTradeArray
          ? _value._completedTradeArray
          : completedTradeArray // ignore: cast_nullable_to_non_nullable
              as List<CompletedTrade>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatementDataImpl implements _StatementData {
  const _$StatementDataImpl(
      {@JsonKey(name: 'goldPrice') this.goldPrice = const GoldPrice(),
      @JsonKey(name: 'summary') this.summary = const Summary(),
      @JsonKey(name: 'transactionSummary')
      this.transactionSummary = const TransactionSummary(),
      @JsonKey(name: 'activeTradeSummary')
      this.activeTradeSummary = const ActiveTradeSummary(),
      @JsonKey(name: 'completedTradeSummary')
      this.completedTradeSummary = const CompletedTradeSummary(),
      @JsonKey(name: 'activeTradeArray')
      final List<ActiveTrade> activeTradeArray = const [],
      @JsonKey(name: 'completedTradeArray')
      final List<CompletedTrade> completedTradeArray = const []})
      : _activeTradeArray = activeTradeArray,
        _completedTradeArray = completedTradeArray;

  factory _$StatementDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatementDataImplFromJson(json);

  @override
  @JsonKey(name: 'goldPrice')
  final GoldPrice goldPrice;
  @override
  @JsonKey(name: 'summary')
  final Summary summary;
  @override
  @JsonKey(name: 'transactionSummary')
  final TransactionSummary transactionSummary;
  @override
  @JsonKey(name: 'activeTradeSummary')
  final ActiveTradeSummary activeTradeSummary;
  @override
  @JsonKey(name: 'completedTradeSummary')
  final CompletedTradeSummary completedTradeSummary;
  final List<ActiveTrade> _activeTradeArray;
  @override
  @JsonKey(name: 'activeTradeArray')
  List<ActiveTrade> get activeTradeArray {
    if (_activeTradeArray is EqualUnmodifiableListView)
      return _activeTradeArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeTradeArray);
  }

  final List<CompletedTrade> _completedTradeArray;
  @override
  @JsonKey(name: 'completedTradeArray')
  List<CompletedTrade> get completedTradeArray {
    if (_completedTradeArray is EqualUnmodifiableListView)
      return _completedTradeArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedTradeArray);
  }

  @override
  String toString() {
    return 'StatementData(goldPrice: $goldPrice, summary: $summary, transactionSummary: $transactionSummary, activeTradeSummary: $activeTradeSummary, completedTradeSummary: $completedTradeSummary, activeTradeArray: $activeTradeArray, completedTradeArray: $completedTradeArray)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatementDataImpl &&
            (identical(other.goldPrice, goldPrice) ||
                other.goldPrice == goldPrice) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.transactionSummary, transactionSummary) ||
                other.transactionSummary == transactionSummary) &&
            (identical(other.activeTradeSummary, activeTradeSummary) ||
                other.activeTradeSummary == activeTradeSummary) &&
            (identical(other.completedTradeSummary, completedTradeSummary) ||
                other.completedTradeSummary == completedTradeSummary) &&
            const DeepCollectionEquality()
                .equals(other._activeTradeArray, _activeTradeArray) &&
            const DeepCollectionEquality()
                .equals(other._completedTradeArray, _completedTradeArray));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      goldPrice,
      summary,
      transactionSummary,
      activeTradeSummary,
      completedTradeSummary,
      const DeepCollectionEquality().hash(_activeTradeArray),
      const DeepCollectionEquality().hash(_completedTradeArray));

  /// Create a copy of StatementData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatementDataImplCopyWith<_$StatementDataImpl> get copyWith =>
      __$$StatementDataImplCopyWithImpl<_$StatementDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatementDataImplToJson(
      this,
    );
  }
}

abstract class _StatementData implements StatementData {
  const factory _StatementData(
      {@JsonKey(name: 'goldPrice') final GoldPrice goldPrice,
      @JsonKey(name: 'summary') final Summary summary,
      @JsonKey(name: 'transactionSummary')
      final TransactionSummary transactionSummary,
      @JsonKey(name: 'activeTradeSummary')
      final ActiveTradeSummary activeTradeSummary,
      @JsonKey(name: 'completedTradeSummary')
      final CompletedTradeSummary completedTradeSummary,
      @JsonKey(name: 'activeTradeArray')
      final List<ActiveTrade> activeTradeArray,
      @JsonKey(name: 'completedTradeArray')
      final List<CompletedTrade> completedTradeArray}) = _$StatementDataImpl;

  factory _StatementData.fromJson(Map<String, dynamic> json) =
      _$StatementDataImpl.fromJson;

  @override
  @JsonKey(name: 'goldPrice')
  GoldPrice get goldPrice;
  @override
  @JsonKey(name: 'summary')
  Summary get summary;
  @override
  @JsonKey(name: 'transactionSummary')
  TransactionSummary get transactionSummary;
  @override
  @JsonKey(name: 'activeTradeSummary')
  ActiveTradeSummary get activeTradeSummary;
  @override
  @JsonKey(name: 'completedTradeSummary')
  CompletedTradeSummary get completedTradeSummary;
  @override
  @JsonKey(name: 'activeTradeArray')
  List<ActiveTrade> get activeTradeArray;
  @override
  @JsonKey(name: 'completedTradeArray')
  List<CompletedTrade> get completedTradeArray;

  /// Create a copy of StatementData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatementDataImplCopyWith<_$StatementDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoldPrice _$GoldPriceFromJson(Map<String, dynamic> json) {
  return _GoldPrice.fromJson(json);
}

/// @nodoc
mixin _$GoldPrice {
  @JsonKey(name: 'askPrice')
  double get askPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'bidPrice')
  double get bidPrice => throw _privateConstructorUsedError;

  /// Serializes this GoldPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoldPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoldPriceCopyWith<GoldPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoldPriceCopyWith<$Res> {
  factory $GoldPriceCopyWith(GoldPrice value, $Res Function(GoldPrice) then) =
      _$GoldPriceCopyWithImpl<$Res, GoldPrice>;
  @useResult
  $Res call(
      {@JsonKey(name: 'askPrice') double askPrice,
      @JsonKey(name: 'bidPrice') double bidPrice});
}

/// @nodoc
class _$GoldPriceCopyWithImpl<$Res, $Val extends GoldPrice>
    implements $GoldPriceCopyWith<$Res> {
  _$GoldPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoldPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askPrice = null,
    Object? bidPrice = null,
  }) {
    return _then(_value.copyWith(
      askPrice: null == askPrice
          ? _value.askPrice
          : askPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bidPrice: null == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoldPriceImplCopyWith<$Res>
    implements $GoldPriceCopyWith<$Res> {
  factory _$$GoldPriceImplCopyWith(
          _$GoldPriceImpl value, $Res Function(_$GoldPriceImpl) then) =
      __$$GoldPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'askPrice') double askPrice,
      @JsonKey(name: 'bidPrice') double bidPrice});
}

/// @nodoc
class __$$GoldPriceImplCopyWithImpl<$Res>
    extends _$GoldPriceCopyWithImpl<$Res, _$GoldPriceImpl>
    implements _$$GoldPriceImplCopyWith<$Res> {
  __$$GoldPriceImplCopyWithImpl(
      _$GoldPriceImpl _value, $Res Function(_$GoldPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoldPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askPrice = null,
    Object? bidPrice = null,
  }) {
    return _then(_$GoldPriceImpl(
      askPrice: null == askPrice
          ? _value.askPrice
          : askPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bidPrice: null == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoldPriceImpl implements _GoldPrice {
  const _$GoldPriceImpl(
      {@JsonKey(name: 'askPrice') this.askPrice = 0.0,
      @JsonKey(name: 'bidPrice') this.bidPrice = 0.0});

  factory _$GoldPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoldPriceImplFromJson(json);

  @override
  @JsonKey(name: 'askPrice')
  final double askPrice;
  @override
  @JsonKey(name: 'bidPrice')
  final double bidPrice;

  @override
  String toString() {
    return 'GoldPrice(askPrice: $askPrice, bidPrice: $bidPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoldPriceImpl &&
            (identical(other.askPrice, askPrice) ||
                other.askPrice == askPrice) &&
            (identical(other.bidPrice, bidPrice) ||
                other.bidPrice == bidPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, askPrice, bidPrice);

  /// Create a copy of GoldPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoldPriceImplCopyWith<_$GoldPriceImpl> get copyWith =>
      __$$GoldPriceImplCopyWithImpl<_$GoldPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoldPriceImplToJson(
      this,
    );
  }
}

abstract class _GoldPrice implements GoldPrice {
  const factory _GoldPrice(
      {@JsonKey(name: 'askPrice') final double askPrice,
      @JsonKey(name: 'bidPrice') final double bidPrice}) = _$GoldPriceImpl;

  factory _GoldPrice.fromJson(Map<String, dynamic> json) =
      _$GoldPriceImpl.fromJson;

  @override
  @JsonKey(name: 'askPrice')
  double get askPrice;
  @override
  @JsonKey(name: 'bidPrice')
  double get bidPrice;

  /// Create a copy of GoldPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoldPriceImplCopyWith<_$GoldPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Summary _$SummaryFromJson(Map<String, dynamic> json) {
  return _Summary.fromJson(json);
}

/// @nodoc
mixin _$Summary {
// @JsonKey(name: 'id') @Default(0) int id,
  @JsonKey(name: 'vendorId')
  int get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'uid')
  int get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'netProfitLoss')
  double get netProfitLoss => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'buyWeight')
  double get buyWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'sellWeight')
  double get sellWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'netBalance')
  double get netBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'netOpenPrice')
  double get netOpenPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentProfitLossAED')
  double get currentProfitLossAED => throw _privateConstructorUsedError;
  @JsonKey(name: 'withdrawableBalance')
  double get withdrawableBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentValueAED')
  double get currentValueAED => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentValueUSD')
  double get currentValueUSD => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentProfitLossUSD')
  double get currentProfitLossUSD => throw _privateConstructorUsedError;
  @JsonKey(name: 'marginLimit')
  double get marginLimit => throw _privateConstructorUsedError;

  /// Serializes this Summary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SummaryCopyWith<Summary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryCopyWith<$Res> {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) then) =
      _$SummaryCopyWithImpl<$Res, Summary>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vendorId') int vendorId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'uid') int uid,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'balance') double balance,
      @JsonKey(name: 'netProfitLoss') double netProfitLoss,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'buyWeight') double buyWeight,
      @JsonKey(name: 'sellWeight') double sellWeight,
      @JsonKey(name: 'netBalance') double netBalance,
      @JsonKey(name: 'netOpenPrice') double netOpenPrice,
      @JsonKey(name: 'currentProfitLossAED') double currentProfitLossAED,
      @JsonKey(name: 'withdrawableBalance') double withdrawableBalance,
      @JsonKey(name: 'currentValueAED') double currentValueAED,
      @JsonKey(name: 'currentValueUSD') double currentValueUSD,
      @JsonKey(name: 'currentProfitLossUSD') double currentProfitLossUSD,
      @JsonKey(name: 'marginLimit') double marginLimit});
}

/// @nodoc
class _$SummaryCopyWithImpl<$Res, $Val extends Summary>
    implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
    Object? name = null,
    Object? uid = null,
    Object? phoneNumber = null,
    Object? country = null,
    Object? balance = null,
    Object? netProfitLoss = null,
    Object? path = freezed,
    Object? buyWeight = null,
    Object? sellWeight = null,
    Object? netBalance = null,
    Object? netOpenPrice = null,
    Object? currentProfitLossAED = null,
    Object? withdrawableBalance = null,
    Object? currentValueAED = null,
    Object? currentValueUSD = null,
    Object? currentProfitLossUSD = null,
    Object? marginLimit = null,
  }) {
    return _then(_value.copyWith(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      netProfitLoss: null == netProfitLoss
          ? _value.netProfitLoss
          : netProfitLoss // ignore: cast_nullable_to_non_nullable
              as double,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      buyWeight: null == buyWeight
          ? _value.buyWeight
          : buyWeight // ignore: cast_nullable_to_non_nullable
              as double,
      sellWeight: null == sellWeight
          ? _value.sellWeight
          : sellWeight // ignore: cast_nullable_to_non_nullable
              as double,
      netBalance: null == netBalance
          ? _value.netBalance
          : netBalance // ignore: cast_nullable_to_non_nullable
              as double,
      netOpenPrice: null == netOpenPrice
          ? _value.netOpenPrice
          : netOpenPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentProfitLossAED: null == currentProfitLossAED
          ? _value.currentProfitLossAED
          : currentProfitLossAED // ignore: cast_nullable_to_non_nullable
              as double,
      withdrawableBalance: null == withdrawableBalance
          ? _value.withdrawableBalance
          : withdrawableBalance // ignore: cast_nullable_to_non_nullable
              as double,
      currentValueAED: null == currentValueAED
          ? _value.currentValueAED
          : currentValueAED // ignore: cast_nullable_to_non_nullable
              as double,
      currentValueUSD: null == currentValueUSD
          ? _value.currentValueUSD
          : currentValueUSD // ignore: cast_nullable_to_non_nullable
              as double,
      currentProfitLossUSD: null == currentProfitLossUSD
          ? _value.currentProfitLossUSD
          : currentProfitLossUSD // ignore: cast_nullable_to_non_nullable
              as double,
      marginLimit: null == marginLimit
          ? _value.marginLimit
          : marginLimit // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SummaryImplCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$$SummaryImplCopyWith(
          _$SummaryImpl value, $Res Function(_$SummaryImpl) then) =
      __$$SummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vendorId') int vendorId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'uid') int uid,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'balance') double balance,
      @JsonKey(name: 'netProfitLoss') double netProfitLoss,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'buyWeight') double buyWeight,
      @JsonKey(name: 'sellWeight') double sellWeight,
      @JsonKey(name: 'netBalance') double netBalance,
      @JsonKey(name: 'netOpenPrice') double netOpenPrice,
      @JsonKey(name: 'currentProfitLossAED') double currentProfitLossAED,
      @JsonKey(name: 'withdrawableBalance') double withdrawableBalance,
      @JsonKey(name: 'currentValueAED') double currentValueAED,
      @JsonKey(name: 'currentValueUSD') double currentValueUSD,
      @JsonKey(name: 'currentProfitLossUSD') double currentProfitLossUSD,
      @JsonKey(name: 'marginLimit') double marginLimit});
}

/// @nodoc
class __$$SummaryImplCopyWithImpl<$Res>
    extends _$SummaryCopyWithImpl<$Res, _$SummaryImpl>
    implements _$$SummaryImplCopyWith<$Res> {
  __$$SummaryImplCopyWithImpl(
      _$SummaryImpl _value, $Res Function(_$SummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
    Object? name = null,
    Object? uid = null,
    Object? phoneNumber = null,
    Object? country = null,
    Object? balance = null,
    Object? netProfitLoss = null,
    Object? path = freezed,
    Object? buyWeight = null,
    Object? sellWeight = null,
    Object? netBalance = null,
    Object? netOpenPrice = null,
    Object? currentProfitLossAED = null,
    Object? withdrawableBalance = null,
    Object? currentValueAED = null,
    Object? currentValueUSD = null,
    Object? currentProfitLossUSD = null,
    Object? marginLimit = null,
  }) {
    return _then(_$SummaryImpl(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      netProfitLoss: null == netProfitLoss
          ? _value.netProfitLoss
          : netProfitLoss // ignore: cast_nullable_to_non_nullable
              as double,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      buyWeight: null == buyWeight
          ? _value.buyWeight
          : buyWeight // ignore: cast_nullable_to_non_nullable
              as double,
      sellWeight: null == sellWeight
          ? _value.sellWeight
          : sellWeight // ignore: cast_nullable_to_non_nullable
              as double,
      netBalance: null == netBalance
          ? _value.netBalance
          : netBalance // ignore: cast_nullable_to_non_nullable
              as double,
      netOpenPrice: null == netOpenPrice
          ? _value.netOpenPrice
          : netOpenPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentProfitLossAED: null == currentProfitLossAED
          ? _value.currentProfitLossAED
          : currentProfitLossAED // ignore: cast_nullable_to_non_nullable
              as double,
      withdrawableBalance: null == withdrawableBalance
          ? _value.withdrawableBalance
          : withdrawableBalance // ignore: cast_nullable_to_non_nullable
              as double,
      currentValueAED: null == currentValueAED
          ? _value.currentValueAED
          : currentValueAED // ignore: cast_nullable_to_non_nullable
              as double,
      currentValueUSD: null == currentValueUSD
          ? _value.currentValueUSD
          : currentValueUSD // ignore: cast_nullable_to_non_nullable
              as double,
      currentProfitLossUSD: null == currentProfitLossUSD
          ? _value.currentProfitLossUSD
          : currentProfitLossUSD // ignore: cast_nullable_to_non_nullable
              as double,
      marginLimit: null == marginLimit
          ? _value.marginLimit
          : marginLimit // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SummaryImpl implements _Summary {
  const _$SummaryImpl(
      {@JsonKey(name: 'vendorId') this.vendorId = 0,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'uid') this.uid = 0,
      @JsonKey(name: 'phone_number') this.phoneNumber = '',
      @JsonKey(name: 'country') this.country = '',
      @JsonKey(name: 'balance') this.balance = 0.0,
      @JsonKey(name: 'netProfitLoss') this.netProfitLoss = 0.0,
      @JsonKey(name: 'path') this.path = null,
      @JsonKey(name: 'buyWeight') this.buyWeight = 0.0,
      @JsonKey(name: 'sellWeight') this.sellWeight = 0.0,
      @JsonKey(name: 'netBalance') this.netBalance = 0.0,
      @JsonKey(name: 'netOpenPrice') this.netOpenPrice = 0.0,
      @JsonKey(name: 'currentProfitLossAED') this.currentProfitLossAED = 0.0,
      @JsonKey(name: 'withdrawableBalance') this.withdrawableBalance = 0.0,
      @JsonKey(name: 'currentValueAED') this.currentValueAED = 0.0,
      @JsonKey(name: 'currentValueUSD') this.currentValueUSD = 0.0,
      @JsonKey(name: 'currentProfitLossUSD') this.currentProfitLossUSD = 0.0,
      @JsonKey(name: 'marginLimit') this.marginLimit = 0.0});

  factory _$SummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SummaryImplFromJson(json);

// @JsonKey(name: 'id') @Default(0) int id,
  @override
  @JsonKey(name: 'vendorId')
  final int vendorId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'uid')
  final int uid;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'balance')
  final double balance;
  @override
  @JsonKey(name: 'netProfitLoss')
  final double netProfitLoss;
  @override
  @JsonKey(name: 'path')
  final String? path;
  @override
  @JsonKey(name: 'buyWeight')
  final double buyWeight;
  @override
  @JsonKey(name: 'sellWeight')
  final double sellWeight;
  @override
  @JsonKey(name: 'netBalance')
  final double netBalance;
  @override
  @JsonKey(name: 'netOpenPrice')
  final double netOpenPrice;
  @override
  @JsonKey(name: 'currentProfitLossAED')
  final double currentProfitLossAED;
  @override
  @JsonKey(name: 'withdrawableBalance')
  final double withdrawableBalance;
  @override
  @JsonKey(name: 'currentValueAED')
  final double currentValueAED;
  @override
  @JsonKey(name: 'currentValueUSD')
  final double currentValueUSD;
  @override
  @JsonKey(name: 'currentProfitLossUSD')
  final double currentProfitLossUSD;
  @override
  @JsonKey(name: 'marginLimit')
  final double marginLimit;

  @override
  String toString() {
    return 'Summary(vendorId: $vendorId, name: $name, uid: $uid, phoneNumber: $phoneNumber, country: $country, balance: $balance, netProfitLoss: $netProfitLoss, path: $path, buyWeight: $buyWeight, sellWeight: $sellWeight, netBalance: $netBalance, netOpenPrice: $netOpenPrice, currentProfitLossAED: $currentProfitLossAED, withdrawableBalance: $withdrawableBalance, currentValueAED: $currentValueAED, currentValueUSD: $currentValueUSD, currentProfitLossUSD: $currentProfitLossUSD, marginLimit: $marginLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SummaryImpl &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.netProfitLoss, netProfitLoss) ||
                other.netProfitLoss == netProfitLoss) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.buyWeight, buyWeight) ||
                other.buyWeight == buyWeight) &&
            (identical(other.sellWeight, sellWeight) ||
                other.sellWeight == sellWeight) &&
            (identical(other.netBalance, netBalance) ||
                other.netBalance == netBalance) &&
            (identical(other.netOpenPrice, netOpenPrice) ||
                other.netOpenPrice == netOpenPrice) &&
            (identical(other.currentProfitLossAED, currentProfitLossAED) ||
                other.currentProfitLossAED == currentProfitLossAED) &&
            (identical(other.withdrawableBalance, withdrawableBalance) ||
                other.withdrawableBalance == withdrawableBalance) &&
            (identical(other.currentValueAED, currentValueAED) ||
                other.currentValueAED == currentValueAED) &&
            (identical(other.currentValueUSD, currentValueUSD) ||
                other.currentValueUSD == currentValueUSD) &&
            (identical(other.currentProfitLossUSD, currentProfitLossUSD) ||
                other.currentProfitLossUSD == currentProfitLossUSD) &&
            (identical(other.marginLimit, marginLimit) ||
                other.marginLimit == marginLimit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vendorId,
      name,
      uid,
      phoneNumber,
      country,
      balance,
      netProfitLoss,
      path,
      buyWeight,
      sellWeight,
      netBalance,
      netOpenPrice,
      currentProfitLossAED,
      withdrawableBalance,
      currentValueAED,
      currentValueUSD,
      currentProfitLossUSD,
      marginLimit);

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SummaryImplCopyWith<_$SummaryImpl> get copyWith =>
      __$$SummaryImplCopyWithImpl<_$SummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SummaryImplToJson(
      this,
    );
  }
}

abstract class _Summary implements Summary {
  const factory _Summary(
      {@JsonKey(name: 'vendorId') final int vendorId,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'uid') final int uid,
      @JsonKey(name: 'phone_number') final String phoneNumber,
      @JsonKey(name: 'country') final String country,
      @JsonKey(name: 'balance') final double balance,
      @JsonKey(name: 'netProfitLoss') final double netProfitLoss,
      @JsonKey(name: 'path') final String? path,
      @JsonKey(name: 'buyWeight') final double buyWeight,
      @JsonKey(name: 'sellWeight') final double sellWeight,
      @JsonKey(name: 'netBalance') final double netBalance,
      @JsonKey(name: 'netOpenPrice') final double netOpenPrice,
      @JsonKey(name: 'currentProfitLossAED') final double currentProfitLossAED,
      @JsonKey(name: 'withdrawableBalance') final double withdrawableBalance,
      @JsonKey(name: 'currentValueAED') final double currentValueAED,
      @JsonKey(name: 'currentValueUSD') final double currentValueUSD,
      @JsonKey(name: 'currentProfitLossUSD') final double currentProfitLossUSD,
      @JsonKey(name: 'marginLimit') final double marginLimit}) = _$SummaryImpl;

  factory _Summary.fromJson(Map<String, dynamic> json) = _$SummaryImpl.fromJson;

// @JsonKey(name: 'id') @Default(0) int id,
  @override
  @JsonKey(name: 'vendorId')
  int get vendorId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'uid')
  int get uid;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'balance')
  double get balance;
  @override
  @JsonKey(name: 'netProfitLoss')
  double get netProfitLoss;
  @override
  @JsonKey(name: 'path')
  String? get path;
  @override
  @JsonKey(name: 'buyWeight')
  double get buyWeight;
  @override
  @JsonKey(name: 'sellWeight')
  double get sellWeight;
  @override
  @JsonKey(name: 'netBalance')
  double get netBalance;
  @override
  @JsonKey(name: 'netOpenPrice')
  double get netOpenPrice;
  @override
  @JsonKey(name: 'currentProfitLossAED')
  double get currentProfitLossAED;
  @override
  @JsonKey(name: 'withdrawableBalance')
  double get withdrawableBalance;
  @override
  @JsonKey(name: 'currentValueAED')
  double get currentValueAED;
  @override
  @JsonKey(name: 'currentValueUSD')
  double get currentValueUSD;
  @override
  @JsonKey(name: 'currentProfitLossUSD')
  double get currentProfitLossUSD;
  @override
  @JsonKey(name: 'marginLimit')
  double get marginLimit;

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SummaryImplCopyWith<_$SummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionSummary _$TransactionSummaryFromJson(Map<String, dynamic> json) {
  return _TransactionSummary.fromJson(json);
}

/// @nodoc
mixin _$TransactionSummary {
  @JsonKey(name: 'total_deposit')
  double get totalDeposit => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_withdraw')
  double get totalWithdraw => throw _privateConstructorUsedError;

  /// Serializes this TransactionSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionSummaryCopyWith<TransactionSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionSummaryCopyWith<$Res> {
  factory $TransactionSummaryCopyWith(
          TransactionSummary value, $Res Function(TransactionSummary) then) =
      _$TransactionSummaryCopyWithImpl<$Res, TransactionSummary>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_deposit') double totalDeposit,
      @JsonKey(name: 'total_withdraw') double totalWithdraw});
}

/// @nodoc
class _$TransactionSummaryCopyWithImpl<$Res, $Val extends TransactionSummary>
    implements $TransactionSummaryCopyWith<$Res> {
  _$TransactionSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDeposit = null,
    Object? totalWithdraw = null,
  }) {
    return _then(_value.copyWith(
      totalDeposit: null == totalDeposit
          ? _value.totalDeposit
          : totalDeposit // ignore: cast_nullable_to_non_nullable
              as double,
      totalWithdraw: null == totalWithdraw
          ? _value.totalWithdraw
          : totalWithdraw // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionSummaryImplCopyWith<$Res>
    implements $TransactionSummaryCopyWith<$Res> {
  factory _$$TransactionSummaryImplCopyWith(_$TransactionSummaryImpl value,
          $Res Function(_$TransactionSummaryImpl) then) =
      __$$TransactionSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_deposit') double totalDeposit,
      @JsonKey(name: 'total_withdraw') double totalWithdraw});
}

/// @nodoc
class __$$TransactionSummaryImplCopyWithImpl<$Res>
    extends _$TransactionSummaryCopyWithImpl<$Res, _$TransactionSummaryImpl>
    implements _$$TransactionSummaryImplCopyWith<$Res> {
  __$$TransactionSummaryImplCopyWithImpl(_$TransactionSummaryImpl _value,
      $Res Function(_$TransactionSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDeposit = null,
    Object? totalWithdraw = null,
  }) {
    return _then(_$TransactionSummaryImpl(
      totalDeposit: null == totalDeposit
          ? _value.totalDeposit
          : totalDeposit // ignore: cast_nullable_to_non_nullable
              as double,
      totalWithdraw: null == totalWithdraw
          ? _value.totalWithdraw
          : totalWithdraw // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionSummaryImpl implements _TransactionSummary {
  const _$TransactionSummaryImpl(
      {@JsonKey(name: 'total_deposit') this.totalDeposit = 0,
      @JsonKey(name: 'total_withdraw') this.totalWithdraw = 0});

  factory _$TransactionSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionSummaryImplFromJson(json);

  @override
  @JsonKey(name: 'total_deposit')
  final double totalDeposit;
  @override
  @JsonKey(name: 'total_withdraw')
  final double totalWithdraw;

  @override
  String toString() {
    return 'TransactionSummary(totalDeposit: $totalDeposit, totalWithdraw: $totalWithdraw)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionSummaryImpl &&
            (identical(other.totalDeposit, totalDeposit) ||
                other.totalDeposit == totalDeposit) &&
            (identical(other.totalWithdraw, totalWithdraw) ||
                other.totalWithdraw == totalWithdraw));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalDeposit, totalWithdraw);

  /// Create a copy of TransactionSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionSummaryImplCopyWith<_$TransactionSummaryImpl> get copyWith =>
      __$$TransactionSummaryImplCopyWithImpl<_$TransactionSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionSummaryImplToJson(
      this,
    );
  }
}

abstract class _TransactionSummary implements TransactionSummary {
  const factory _TransactionSummary(
          {@JsonKey(name: 'total_deposit') final double totalDeposit,
          @JsonKey(name: 'total_withdraw') final double totalWithdraw}) =
      _$TransactionSummaryImpl;

  factory _TransactionSummary.fromJson(Map<String, dynamic> json) =
      _$TransactionSummaryImpl.fromJson;

  @override
  @JsonKey(name: 'total_deposit')
  double get totalDeposit;
  @override
  @JsonKey(name: 'total_withdraw')
  double get totalWithdraw;

  /// Create a copy of TransactionSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionSummaryImplCopyWith<_$TransactionSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActiveTradeSummary _$ActiveTradeSummaryFromJson(Map<String, dynamic> json) {
  return _ActiveTradeSummary.fromJson(json);
}

/// @nodoc
mixin _$ActiveTradeSummary {
  @JsonKey(name: 'buyWeight')
  double get buyWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'sellWeight')
  double get sellWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'profitLossAED')
  double get profitLossAED => throw _privateConstructorUsedError;

  /// Serializes this ActiveTradeSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveTradeSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveTradeSummaryCopyWith<ActiveTradeSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveTradeSummaryCopyWith<$Res> {
  factory $ActiveTradeSummaryCopyWith(
          ActiveTradeSummary value, $Res Function(ActiveTradeSummary) then) =
      _$ActiveTradeSummaryCopyWithImpl<$Res, ActiveTradeSummary>;
  @useResult
  $Res call(
      {@JsonKey(name: 'buyWeight') double buyWeight,
      @JsonKey(name: 'sellWeight') double sellWeight,
      @JsonKey(name: 'profitLossAED') double profitLossAED});
}

/// @nodoc
class _$ActiveTradeSummaryCopyWithImpl<$Res, $Val extends ActiveTradeSummary>
    implements $ActiveTradeSummaryCopyWith<$Res> {
  _$ActiveTradeSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveTradeSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyWeight = null,
    Object? sellWeight = null,
    Object? profitLossAED = null,
  }) {
    return _then(_value.copyWith(
      buyWeight: null == buyWeight
          ? _value.buyWeight
          : buyWeight // ignore: cast_nullable_to_non_nullable
              as double,
      sellWeight: null == sellWeight
          ? _value.sellWeight
          : sellWeight // ignore: cast_nullable_to_non_nullable
              as double,
      profitLossAED: null == profitLossAED
          ? _value.profitLossAED
          : profitLossAED // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveTradeSummaryImplCopyWith<$Res>
    implements $ActiveTradeSummaryCopyWith<$Res> {
  factory _$$ActiveTradeSummaryImplCopyWith(_$ActiveTradeSummaryImpl value,
          $Res Function(_$ActiveTradeSummaryImpl) then) =
      __$$ActiveTradeSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'buyWeight') double buyWeight,
      @JsonKey(name: 'sellWeight') double sellWeight,
      @JsonKey(name: 'profitLossAED') double profitLossAED});
}

/// @nodoc
class __$$ActiveTradeSummaryImplCopyWithImpl<$Res>
    extends _$ActiveTradeSummaryCopyWithImpl<$Res, _$ActiveTradeSummaryImpl>
    implements _$$ActiveTradeSummaryImplCopyWith<$Res> {
  __$$ActiveTradeSummaryImplCopyWithImpl(_$ActiveTradeSummaryImpl _value,
      $Res Function(_$ActiveTradeSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveTradeSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyWeight = null,
    Object? sellWeight = null,
    Object? profitLossAED = null,
  }) {
    return _then(_$ActiveTradeSummaryImpl(
      buyWeight: null == buyWeight
          ? _value.buyWeight
          : buyWeight // ignore: cast_nullable_to_non_nullable
              as double,
      sellWeight: null == sellWeight
          ? _value.sellWeight
          : sellWeight // ignore: cast_nullable_to_non_nullable
              as double,
      profitLossAED: null == profitLossAED
          ? _value.profitLossAED
          : profitLossAED // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveTradeSummaryImpl implements _ActiveTradeSummary {
  const _$ActiveTradeSummaryImpl(
      {@JsonKey(name: 'buyWeight') this.buyWeight = 0.0,
      @JsonKey(name: 'sellWeight') this.sellWeight = 0.0,
      @JsonKey(name: 'profitLossAED') this.profitLossAED = 0.0});

  factory _$ActiveTradeSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveTradeSummaryImplFromJson(json);

  @override
  @JsonKey(name: 'buyWeight')
  final double buyWeight;
  @override
  @JsonKey(name: 'sellWeight')
  final double sellWeight;
  @override
  @JsonKey(name: 'profitLossAED')
  final double profitLossAED;

  @override
  String toString() {
    return 'ActiveTradeSummary(buyWeight: $buyWeight, sellWeight: $sellWeight, profitLossAED: $profitLossAED)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveTradeSummaryImpl &&
            (identical(other.buyWeight, buyWeight) ||
                other.buyWeight == buyWeight) &&
            (identical(other.sellWeight, sellWeight) ||
                other.sellWeight == sellWeight) &&
            (identical(other.profitLossAED, profitLossAED) ||
                other.profitLossAED == profitLossAED));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, buyWeight, sellWeight, profitLossAED);

  /// Create a copy of ActiveTradeSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveTradeSummaryImplCopyWith<_$ActiveTradeSummaryImpl> get copyWith =>
      __$$ActiveTradeSummaryImplCopyWithImpl<_$ActiveTradeSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveTradeSummaryImplToJson(
      this,
    );
  }
}

abstract class _ActiveTradeSummary implements ActiveTradeSummary {
  const factory _ActiveTradeSummary(
          {@JsonKey(name: 'buyWeight') final double buyWeight,
          @JsonKey(name: 'sellWeight') final double sellWeight,
          @JsonKey(name: 'profitLossAED') final double profitLossAED}) =
      _$ActiveTradeSummaryImpl;

  factory _ActiveTradeSummary.fromJson(Map<String, dynamic> json) =
      _$ActiveTradeSummaryImpl.fromJson;

  @override
  @JsonKey(name: 'buyWeight')
  double get buyWeight;
  @override
  @JsonKey(name: 'sellWeight')
  double get sellWeight;
  @override
  @JsonKey(name: 'profitLossAED')
  double get profitLossAED;

  /// Create a copy of ActiveTradeSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveTradeSummaryImplCopyWith<_$ActiveTradeSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletedTradeSummary _$CompletedTradeSummaryFromJson(
    Map<String, dynamic> json) {
  return _CompletedTradeSummary.fromJson(json);
}

/// @nodoc
mixin _$CompletedTradeSummary {
  @JsonKey(name: 'netProfit')
  double get netProfit => throw _privateConstructorUsedError;
  @JsonKey(name: 'buyWeight')
  double get buyWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'sellWeight')
  double get sellWeight => throw _privateConstructorUsedError;

  /// Serializes this CompletedTradeSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletedTradeSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedTradeSummaryCopyWith<CompletedTradeSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedTradeSummaryCopyWith<$Res> {
  factory $CompletedTradeSummaryCopyWith(CompletedTradeSummary value,
          $Res Function(CompletedTradeSummary) then) =
      _$CompletedTradeSummaryCopyWithImpl<$Res, CompletedTradeSummary>;
  @useResult
  $Res call(
      {@JsonKey(name: 'netProfit') double netProfit,
      @JsonKey(name: 'buyWeight') double buyWeight,
      @JsonKey(name: 'sellWeight') double sellWeight});
}

/// @nodoc
class _$CompletedTradeSummaryCopyWithImpl<$Res,
        $Val extends CompletedTradeSummary>
    implements $CompletedTradeSummaryCopyWith<$Res> {
  _$CompletedTradeSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedTradeSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? netProfit = null,
    Object? buyWeight = null,
    Object? sellWeight = null,
  }) {
    return _then(_value.copyWith(
      netProfit: null == netProfit
          ? _value.netProfit
          : netProfit // ignore: cast_nullable_to_non_nullable
              as double,
      buyWeight: null == buyWeight
          ? _value.buyWeight
          : buyWeight // ignore: cast_nullable_to_non_nullable
              as double,
      sellWeight: null == sellWeight
          ? _value.sellWeight
          : sellWeight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedTradeSummaryImplCopyWith<$Res>
    implements $CompletedTradeSummaryCopyWith<$Res> {
  factory _$$CompletedTradeSummaryImplCopyWith(
          _$CompletedTradeSummaryImpl value,
          $Res Function(_$CompletedTradeSummaryImpl) then) =
      __$$CompletedTradeSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'netProfit') double netProfit,
      @JsonKey(name: 'buyWeight') double buyWeight,
      @JsonKey(name: 'sellWeight') double sellWeight});
}

/// @nodoc
class __$$CompletedTradeSummaryImplCopyWithImpl<$Res>
    extends _$CompletedTradeSummaryCopyWithImpl<$Res,
        _$CompletedTradeSummaryImpl>
    implements _$$CompletedTradeSummaryImplCopyWith<$Res> {
  __$$CompletedTradeSummaryImplCopyWithImpl(_$CompletedTradeSummaryImpl _value,
      $Res Function(_$CompletedTradeSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletedTradeSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? netProfit = null,
    Object? buyWeight = null,
    Object? sellWeight = null,
  }) {
    return _then(_$CompletedTradeSummaryImpl(
      netProfit: null == netProfit
          ? _value.netProfit
          : netProfit // ignore: cast_nullable_to_non_nullable
              as double,
      buyWeight: null == buyWeight
          ? _value.buyWeight
          : buyWeight // ignore: cast_nullable_to_non_nullable
              as double,
      sellWeight: null == sellWeight
          ? _value.sellWeight
          : sellWeight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletedTradeSummaryImpl implements _CompletedTradeSummary {
  const _$CompletedTradeSummaryImpl(
      {@JsonKey(name: 'netProfit') this.netProfit = 0.0,
      @JsonKey(name: 'buyWeight') this.buyWeight = 0.0,
      @JsonKey(name: 'sellWeight') this.sellWeight = 0.0});

  factory _$CompletedTradeSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedTradeSummaryImplFromJson(json);

  @override
  @JsonKey(name: 'netProfit')
  final double netProfit;
  @override
  @JsonKey(name: 'buyWeight')
  final double buyWeight;
  @override
  @JsonKey(name: 'sellWeight')
  final double sellWeight;

  @override
  String toString() {
    return 'CompletedTradeSummary(netProfit: $netProfit, buyWeight: $buyWeight, sellWeight: $sellWeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedTradeSummaryImpl &&
            (identical(other.netProfit, netProfit) ||
                other.netProfit == netProfit) &&
            (identical(other.buyWeight, buyWeight) ||
                other.buyWeight == buyWeight) &&
            (identical(other.sellWeight, sellWeight) ||
                other.sellWeight == sellWeight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, netProfit, buyWeight, sellWeight);

  /// Create a copy of CompletedTradeSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedTradeSummaryImplCopyWith<_$CompletedTradeSummaryImpl>
      get copyWith => __$$CompletedTradeSummaryImplCopyWithImpl<
          _$CompletedTradeSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedTradeSummaryImplToJson(
      this,
    );
  }
}

abstract class _CompletedTradeSummary implements CompletedTradeSummary {
  const factory _CompletedTradeSummary(
          {@JsonKey(name: 'netProfit') final double netProfit,
          @JsonKey(name: 'buyWeight') final double buyWeight,
          @JsonKey(name: 'sellWeight') final double sellWeight}) =
      _$CompletedTradeSummaryImpl;

  factory _CompletedTradeSummary.fromJson(Map<String, dynamic> json) =
      _$CompletedTradeSummaryImpl.fromJson;

  @override
  @JsonKey(name: 'netProfit')
  double get netProfit;
  @override
  @JsonKey(name: 'buyWeight')
  double get buyWeight;
  @override
  @JsonKey(name: 'sellWeight')
  double get sellWeight;

  /// Create a copy of CompletedTradeSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedTradeSummaryImplCopyWith<_$CompletedTradeSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActiveTrade _$ActiveTradeFromJson(Map<String, dynamic> json) {
  return _ActiveTrade.fromJson(json);
}

/// @nodoc
mixin _$ActiveTrade {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tick_id')
  String? get tickId => throw _privateConstructorUsedError;
  @JsonKey(name: 'trade_type')
  String get tradeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'metal_type')
  String get metalType => throw _privateConstructorUsedError;
  @JsonKey(name: 'executed_trade_open_rate')
  double get executedTradeOpenRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_metal_weight')
  double get baseMetalWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'profitLossAED')
  double get profitLossAED => throw _privateConstructorUsedError;

  /// Serializes this ActiveTrade to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveTrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveTradeCopyWith<ActiveTrade> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveTradeCopyWith<$Res> {
  factory $ActiveTradeCopyWith(
          ActiveTrade value, $Res Function(ActiveTrade) then) =
      _$ActiveTradeCopyWithImpl<$Res, ActiveTrade>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'tick_id') String? tickId,
      @JsonKey(name: 'trade_type') String tradeType,
      @JsonKey(name: 'metal_type') String metalType,
      @JsonKey(name: 'executed_trade_open_rate') double executedTradeOpenRate,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'base_metal_weight') double baseMetalWeight,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'profitLossAED') double profitLossAED});
}

/// @nodoc
class _$ActiveTradeCopyWithImpl<$Res, $Val extends ActiveTrade>
    implements $ActiveTradeCopyWith<$Res> {
  _$ActiveTradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveTrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tickId = freezed,
    Object? tradeType = null,
    Object? metalType = null,
    Object? executedTradeOpenRate = null,
    Object? quantity = null,
    Object? baseMetalWeight = null,
    Object? createdAt = null,
    Object? profitLossAED = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tickId: freezed == tickId
          ? _value.tickId
          : tickId // ignore: cast_nullable_to_non_nullable
              as String?,
      tradeType: null == tradeType
          ? _value.tradeType
          : tradeType // ignore: cast_nullable_to_non_nullable
              as String,
      metalType: null == metalType
          ? _value.metalType
          : metalType // ignore: cast_nullable_to_non_nullable
              as String,
      executedTradeOpenRate: null == executedTradeOpenRate
          ? _value.executedTradeOpenRate
          : executedTradeOpenRate // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      baseMetalWeight: null == baseMetalWeight
          ? _value.baseMetalWeight
          : baseMetalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      profitLossAED: null == profitLossAED
          ? _value.profitLossAED
          : profitLossAED // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveTradeImplCopyWith<$Res>
    implements $ActiveTradeCopyWith<$Res> {
  factory _$$ActiveTradeImplCopyWith(
          _$ActiveTradeImpl value, $Res Function(_$ActiveTradeImpl) then) =
      __$$ActiveTradeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'tick_id') String? tickId,
      @JsonKey(name: 'trade_type') String tradeType,
      @JsonKey(name: 'metal_type') String metalType,
      @JsonKey(name: 'executed_trade_open_rate') double executedTradeOpenRate,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'base_metal_weight') double baseMetalWeight,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'profitLossAED') double profitLossAED});
}

/// @nodoc
class __$$ActiveTradeImplCopyWithImpl<$Res>
    extends _$ActiveTradeCopyWithImpl<$Res, _$ActiveTradeImpl>
    implements _$$ActiveTradeImplCopyWith<$Res> {
  __$$ActiveTradeImplCopyWithImpl(
      _$ActiveTradeImpl _value, $Res Function(_$ActiveTradeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveTrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tickId = freezed,
    Object? tradeType = null,
    Object? metalType = null,
    Object? executedTradeOpenRate = null,
    Object? quantity = null,
    Object? baseMetalWeight = null,
    Object? createdAt = null,
    Object? profitLossAED = null,
  }) {
    return _then(_$ActiveTradeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tickId: freezed == tickId
          ? _value.tickId
          : tickId // ignore: cast_nullable_to_non_nullable
              as String?,
      tradeType: null == tradeType
          ? _value.tradeType
          : tradeType // ignore: cast_nullable_to_non_nullable
              as String,
      metalType: null == metalType
          ? _value.metalType
          : metalType // ignore: cast_nullable_to_non_nullable
              as String,
      executedTradeOpenRate: null == executedTradeOpenRate
          ? _value.executedTradeOpenRate
          : executedTradeOpenRate // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      baseMetalWeight: null == baseMetalWeight
          ? _value.baseMetalWeight
          : baseMetalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      profitLossAED: null == profitLossAED
          ? _value.profitLossAED
          : profitLossAED // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveTradeImpl implements _ActiveTrade {
  const _$ActiveTradeImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'tick_id') this.tickId = null,
      @JsonKey(name: 'trade_type') this.tradeType = '',
      @JsonKey(name: 'metal_type') this.metalType = '',
      @JsonKey(name: 'executed_trade_open_rate')
      this.executedTradeOpenRate = 0.0,
      @JsonKey(name: 'quantity') this.quantity = 0,
      @JsonKey(name: 'base_metal_weight') this.baseMetalWeight = 0.0,
      @JsonKey(name: 'createdAt') this.createdAt = '',
      @JsonKey(name: 'profitLossAED') this.profitLossAED = 0.0});

  factory _$ActiveTradeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveTradeImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'tick_id')
  final String? tickId;
  @override
  @JsonKey(name: 'trade_type')
  final String tradeType;
  @override
  @JsonKey(name: 'metal_type')
  final String metalType;
  @override
  @JsonKey(name: 'executed_trade_open_rate')
  final double executedTradeOpenRate;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'base_metal_weight')
  final double baseMetalWeight;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'profitLossAED')
  final double profitLossAED;

  @override
  String toString() {
    return 'ActiveTrade(id: $id, tickId: $tickId, tradeType: $tradeType, metalType: $metalType, executedTradeOpenRate: $executedTradeOpenRate, quantity: $quantity, baseMetalWeight: $baseMetalWeight, createdAt: $createdAt, profitLossAED: $profitLossAED)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveTradeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tickId, tickId) || other.tickId == tickId) &&
            (identical(other.tradeType, tradeType) ||
                other.tradeType == tradeType) &&
            (identical(other.metalType, metalType) ||
                other.metalType == metalType) &&
            (identical(other.executedTradeOpenRate, executedTradeOpenRate) ||
                other.executedTradeOpenRate == executedTradeOpenRate) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.baseMetalWeight, baseMetalWeight) ||
                other.baseMetalWeight == baseMetalWeight) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.profitLossAED, profitLossAED) ||
                other.profitLossAED == profitLossAED));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tickId,
      tradeType,
      metalType,
      executedTradeOpenRate,
      quantity,
      baseMetalWeight,
      createdAt,
      profitLossAED);

  /// Create a copy of ActiveTrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveTradeImplCopyWith<_$ActiveTradeImpl> get copyWith =>
      __$$ActiveTradeImplCopyWithImpl<_$ActiveTradeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveTradeImplToJson(
      this,
    );
  }
}

abstract class _ActiveTrade implements ActiveTrade {
  const factory _ActiveTrade(
          {@JsonKey(name: 'id') final int id,
          @JsonKey(name: 'tick_id') final String? tickId,
          @JsonKey(name: 'trade_type') final String tradeType,
          @JsonKey(name: 'metal_type') final String metalType,
          @JsonKey(name: 'executed_trade_open_rate')
          final double executedTradeOpenRate,
          @JsonKey(name: 'quantity') final int quantity,
          @JsonKey(name: 'base_metal_weight') final double baseMetalWeight,
          @JsonKey(name: 'createdAt') final String createdAt,
          @JsonKey(name: 'profitLossAED') final double profitLossAED}) =
      _$ActiveTradeImpl;

  factory _ActiveTrade.fromJson(Map<String, dynamic> json) =
      _$ActiveTradeImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'tick_id')
  String? get tickId;
  @override
  @JsonKey(name: 'trade_type')
  String get tradeType;
  @override
  @JsonKey(name: 'metal_type')
  String get metalType;
  @override
  @JsonKey(name: 'executed_trade_open_rate')
  double get executedTradeOpenRate;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;
  @override
  @JsonKey(name: 'base_metal_weight')
  double get baseMetalWeight;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'profitLossAED')
  double get profitLossAED;

  /// Create a copy of ActiveTrade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveTradeImplCopyWith<_$ActiveTradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletedTrade _$CompletedTradeFromJson(Map<String, dynamic> json) {
  return _CompletedTrade.fromJson(json);
}

/// @nodoc
mixin _$CompletedTrade {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tick_id')
  String? get tickId => throw _privateConstructorUsedError;
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
  Account get account => throw _privateConstructorUsedError;

  /// Serializes this CompletedTrade to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletedTrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedTradeCopyWith<CompletedTrade> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedTradeCopyWith<$Res> {
  factory $CompletedTradeCopyWith(
          CompletedTrade value, $Res Function(CompletedTrade) then) =
      _$CompletedTradeCopyWithImpl<$Res, CompletedTrade>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'tick_id') String? tickId,
      @JsonKey(name: 'executed_trade_open_rate') double executedTradeOpenRate,
      @JsonKey(name: 'executed_trade_close_rate') double executedTradeCloseRate,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'trade_type') String tradeType,
      @JsonKey(name: 'metal_type') String metalType,
      @JsonKey(name: 'base_metal_weight') double baseMetalWeight,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'account') Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$CompletedTradeCopyWithImpl<$Res, $Val extends CompletedTrade>
    implements $CompletedTradeCopyWith<$Res> {
  _$CompletedTradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedTrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tickId = freezed,
    Object? executedTradeOpenRate = null,
    Object? executedTradeCloseRate = null,
    Object? quantity = null,
    Object? tradeType = null,
    Object? metalType = null,
    Object? baseMetalWeight = null,
    Object? createdAt = null,
    Object? account = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tickId: freezed == tickId
          ? _value.tickId
          : tickId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ) as $Val);
  }

  /// Create a copy of CompletedTrade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletedTradeImplCopyWith<$Res>
    implements $CompletedTradeCopyWith<$Res> {
  factory _$$CompletedTradeImplCopyWith(_$CompletedTradeImpl value,
          $Res Function(_$CompletedTradeImpl) then) =
      __$$CompletedTradeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'tick_id') String? tickId,
      @JsonKey(name: 'executed_trade_open_rate') double executedTradeOpenRate,
      @JsonKey(name: 'executed_trade_close_rate') double executedTradeCloseRate,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'trade_type') String tradeType,
      @JsonKey(name: 'metal_type') String metalType,
      @JsonKey(name: 'base_metal_weight') double baseMetalWeight,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'account') Account account});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$CompletedTradeImplCopyWithImpl<$Res>
    extends _$CompletedTradeCopyWithImpl<$Res, _$CompletedTradeImpl>
    implements _$$CompletedTradeImplCopyWith<$Res> {
  __$$CompletedTradeImplCopyWithImpl(
      _$CompletedTradeImpl _value, $Res Function(_$CompletedTradeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletedTrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tickId = freezed,
    Object? executedTradeOpenRate = null,
    Object? executedTradeCloseRate = null,
    Object? quantity = null,
    Object? tradeType = null,
    Object? metalType = null,
    Object? baseMetalWeight = null,
    Object? createdAt = null,
    Object? account = null,
  }) {
    return _then(_$CompletedTradeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tickId: freezed == tickId
          ? _value.tickId
          : tickId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletedTradeImpl implements _CompletedTrade {
  const _$CompletedTradeImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'tick_id') this.tickId = null,
      @JsonKey(name: 'executed_trade_open_rate')
      this.executedTradeOpenRate = 0.0,
      @JsonKey(name: 'executed_trade_close_rate')
      this.executedTradeCloseRate = 0.0,
      @JsonKey(name: 'quantity') this.quantity = 0,
      @JsonKey(name: 'trade_type') this.tradeType = '',
      @JsonKey(name: 'metal_type') this.metalType = '',
      @JsonKey(name: 'base_metal_weight') this.baseMetalWeight = 0.0,
      @JsonKey(name: 'createdAt') this.createdAt = '',
      @JsonKey(name: 'account') this.account = const Account()});

  factory _$CompletedTradeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedTradeImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'tick_id')
  final String? tickId;
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
  final Account account;

  @override
  String toString() {
    return 'CompletedTrade(id: $id, tickId: $tickId, executedTradeOpenRate: $executedTradeOpenRate, executedTradeCloseRate: $executedTradeCloseRate, quantity: $quantity, tradeType: $tradeType, metalType: $metalType, baseMetalWeight: $baseMetalWeight, createdAt: $createdAt, account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedTradeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tickId, tickId) || other.tickId == tickId) &&
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
      tickId,
      executedTradeOpenRate,
      executedTradeCloseRate,
      quantity,
      tradeType,
      metalType,
      baseMetalWeight,
      createdAt,
      account);

  /// Create a copy of CompletedTrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedTradeImplCopyWith<_$CompletedTradeImpl> get copyWith =>
      __$$CompletedTradeImplCopyWithImpl<_$CompletedTradeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedTradeImplToJson(
      this,
    );
  }
}

abstract class _CompletedTrade implements CompletedTrade {
  const factory _CompletedTrade(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'tick_id') final String? tickId,
      @JsonKey(name: 'executed_trade_open_rate')
      final double executedTradeOpenRate,
      @JsonKey(name: 'executed_trade_close_rate')
      final double executedTradeCloseRate,
      @JsonKey(name: 'quantity') final int quantity,
      @JsonKey(name: 'trade_type') final String tradeType,
      @JsonKey(name: 'metal_type') final String metalType,
      @JsonKey(name: 'base_metal_weight') final double baseMetalWeight,
      @JsonKey(name: 'createdAt') final String createdAt,
      @JsonKey(name: 'account') final Account account}) = _$CompletedTradeImpl;

  factory _CompletedTrade.fromJson(Map<String, dynamic> json) =
      _$CompletedTradeImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'tick_id')
  String? get tickId;
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
  Account get account;

  /// Create a copy of CompletedTrade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedTradeImplCopyWith<_$CompletedTradeImpl> get copyWith =>
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
  const _$AccountImpl(
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
  const factory _Account(
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
