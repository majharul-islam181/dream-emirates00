// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetUserBalanceModel _$GetUserBalanceModelFromJson(Map<String, dynamic> json) {
  return _GetUserBalanceModel.fromJson(json);
}

/// @nodoc
mixin _$GetUserBalanceModel {
  @JsonKey(name: 'status')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  UserBalanceData? get data => throw _privateConstructorUsedError;

  /// Serializes this GetUserBalanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetUserBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserBalanceModelCopyWith<GetUserBalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserBalanceModelCopyWith<$Res> {
  factory $GetUserBalanceModelCopyWith(
          GetUserBalanceModel value, $Res Function(GetUserBalanceModel) then) =
      _$GetUserBalanceModelCopyWithImpl<$Res, GetUserBalanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') UserBalanceData? data});

  $UserBalanceDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetUserBalanceModelCopyWithImpl<$Res, $Val extends GetUserBalanceModel>
    implements $GetUserBalanceModelCopyWith<$Res> {
  _$GetUserBalanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserBalanceModel
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
              as UserBalanceData?,
    ) as $Val);
  }

  /// Create a copy of GetUserBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserBalanceDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserBalanceDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetUserBalanceModelImplCopyWith<$Res>
    implements $GetUserBalanceModelCopyWith<$Res> {
  factory _$$GetUserBalanceModelImplCopyWith(_$GetUserBalanceModelImpl value,
          $Res Function(_$GetUserBalanceModelImpl) then) =
      __$$GetUserBalanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') UserBalanceData? data});

  @override
  $UserBalanceDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetUserBalanceModelImplCopyWithImpl<$Res>
    extends _$GetUserBalanceModelCopyWithImpl<$Res, _$GetUserBalanceModelImpl>
    implements _$$GetUserBalanceModelImplCopyWith<$Res> {
  __$$GetUserBalanceModelImplCopyWithImpl(_$GetUserBalanceModelImpl _value,
      $Res Function(_$GetUserBalanceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$GetUserBalanceModelImpl(
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
              as UserBalanceData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserBalanceModelImpl implements _GetUserBalanceModel {
  _$GetUserBalanceModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') this.data});

  factory _$GetUserBalanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserBalanceModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool status;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'data')
  final UserBalanceData? data;

  @override
  String toString() {
    return 'GetUserBalanceModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserBalanceModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetUserBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserBalanceModelImplCopyWith<_$GetUserBalanceModelImpl> get copyWith =>
      __$$GetUserBalanceModelImplCopyWithImpl<_$GetUserBalanceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserBalanceModelImplToJson(
      this,
    );
  }
}

abstract class _GetUserBalanceModel implements GetUserBalanceModel {
  factory _GetUserBalanceModel(
          {@JsonKey(name: 'status') final bool status,
          @JsonKey(name: 'message') final String message,
          @JsonKey(name: 'data') final UserBalanceData? data}) =
      _$GetUserBalanceModelImpl;

  factory _GetUserBalanceModel.fromJson(Map<String, dynamic> json) =
      _$GetUserBalanceModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  UserBalanceData? get data;

  /// Create a copy of GetUserBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserBalanceModelImplCopyWith<_$GetUserBalanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBalanceData _$UserBalanceDataFromJson(Map<String, dynamic> json) {
  return _UserBalanceData.fromJson(json);
}

/// @nodoc
mixin _$UserBalanceData {
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'income')
  double get income => throw _privateConstructorUsedError;
  @JsonKey(name: 'fixunfix')
  double get fixunfix => throw _privateConstructorUsedError;
  @JsonKey(name: 'virtual_trading')
  double get virtualTrading => throw _privateConstructorUsedError;
  @JsonKey(name: 'pending')
  double get pending => throw _privateConstructorUsedError;
  @JsonKey(name: 'net_fixunfix_profit')
  double get netFixunfixProfit => throw _privateConstructorUsedError;
  @JsonKey(name: 'net_virtual_trading_profit')
  double get netVirtualTradingProfit => throw _privateConstructorUsedError;
  @JsonKey(name: 'net_affiliate_amount')
  double get netAffiliateAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'virtual_trading_bonus')
  double get virtualTradingBonus => throw _privateConstructorUsedError;

  /// Serializes this UserBalanceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBalanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBalanceDataCopyWith<UserBalanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBalanceDataCopyWith<$Res> {
  factory $UserBalanceDataCopyWith(
          UserBalanceData value, $Res Function(UserBalanceData) then) =
      _$UserBalanceDataCopyWithImpl<$Res, UserBalanceData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'balance') double balance,
      @JsonKey(name: 'income') double income,
      @JsonKey(name: 'fixunfix') double fixunfix,
      @JsonKey(name: 'virtual_trading') double virtualTrading,
      @JsonKey(name: 'pending') double pending,
      @JsonKey(name: 'net_fixunfix_profit') double netFixunfixProfit,
      @JsonKey(name: 'net_virtual_trading_profit')
      double netVirtualTradingProfit,
      @JsonKey(name: 'net_affiliate_amount') double netAffiliateAmount,
      @JsonKey(name: 'virtual_trading_bonus') double virtualTradingBonus});
}

/// @nodoc
class _$UserBalanceDataCopyWithImpl<$Res, $Val extends UserBalanceData>
    implements $UserBalanceDataCopyWith<$Res> {
  _$UserBalanceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBalanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? balance = null,
    Object? income = null,
    Object? fixunfix = null,
    Object? virtualTrading = null,
    Object? pending = null,
    Object? netFixunfixProfit = null,
    Object? netVirtualTradingProfit = null,
    Object? netAffiliateAmount = null,
    Object? virtualTradingBonus = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double,
      fixunfix: null == fixunfix
          ? _value.fixunfix
          : fixunfix // ignore: cast_nullable_to_non_nullable
              as double,
      virtualTrading: null == virtualTrading
          ? _value.virtualTrading
          : virtualTrading // ignore: cast_nullable_to_non_nullable
              as double,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as double,
      netFixunfixProfit: null == netFixunfixProfit
          ? _value.netFixunfixProfit
          : netFixunfixProfit // ignore: cast_nullable_to_non_nullable
              as double,
      netVirtualTradingProfit: null == netVirtualTradingProfit
          ? _value.netVirtualTradingProfit
          : netVirtualTradingProfit // ignore: cast_nullable_to_non_nullable
              as double,
      netAffiliateAmount: null == netAffiliateAmount
          ? _value.netAffiliateAmount
          : netAffiliateAmount // ignore: cast_nullable_to_non_nullable
              as double,
      virtualTradingBonus: null == virtualTradingBonus
          ? _value.virtualTradingBonus
          : virtualTradingBonus // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBalanceDataImplCopyWith<$Res>
    implements $UserBalanceDataCopyWith<$Res> {
  factory _$$UserBalanceDataImplCopyWith(_$UserBalanceDataImpl value,
          $Res Function(_$UserBalanceDataImpl) then) =
      __$$UserBalanceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'balance') double balance,
      @JsonKey(name: 'income') double income,
      @JsonKey(name: 'fixunfix') double fixunfix,
      @JsonKey(name: 'virtual_trading') double virtualTrading,
      @JsonKey(name: 'pending') double pending,
      @JsonKey(name: 'net_fixunfix_profit') double netFixunfixProfit,
      @JsonKey(name: 'net_virtual_trading_profit')
      double netVirtualTradingProfit,
      @JsonKey(name: 'net_affiliate_amount') double netAffiliateAmount,
      @JsonKey(name: 'virtual_trading_bonus') double virtualTradingBonus});
}

/// @nodoc
class __$$UserBalanceDataImplCopyWithImpl<$Res>
    extends _$UserBalanceDataCopyWithImpl<$Res, _$UserBalanceDataImpl>
    implements _$$UserBalanceDataImplCopyWith<$Res> {
  __$$UserBalanceDataImplCopyWithImpl(
      _$UserBalanceDataImpl _value, $Res Function(_$UserBalanceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBalanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? balance = null,
    Object? income = null,
    Object? fixunfix = null,
    Object? virtualTrading = null,
    Object? pending = null,
    Object? netFixunfixProfit = null,
    Object? netVirtualTradingProfit = null,
    Object? netAffiliateAmount = null,
    Object? virtualTradingBonus = null,
  }) {
    return _then(_$UserBalanceDataImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double,
      fixunfix: null == fixunfix
          ? _value.fixunfix
          : fixunfix // ignore: cast_nullable_to_non_nullable
              as double,
      virtualTrading: null == virtualTrading
          ? _value.virtualTrading
          : virtualTrading // ignore: cast_nullable_to_non_nullable
              as double,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as double,
      netFixunfixProfit: null == netFixunfixProfit
          ? _value.netFixunfixProfit
          : netFixunfixProfit // ignore: cast_nullable_to_non_nullable
              as double,
      netVirtualTradingProfit: null == netVirtualTradingProfit
          ? _value.netVirtualTradingProfit
          : netVirtualTradingProfit // ignore: cast_nullable_to_non_nullable
              as double,
      netAffiliateAmount: null == netAffiliateAmount
          ? _value.netAffiliateAmount
          : netAffiliateAmount // ignore: cast_nullable_to_non_nullable
              as double,
      virtualTradingBonus: null == virtualTradingBonus
          ? _value.virtualTradingBonus
          : virtualTradingBonus // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBalanceDataImpl implements _UserBalanceData {
  _$UserBalanceDataImpl(
      {@JsonKey(name: 'currency') this.currency = '',
      @JsonKey(name: 'balance') this.balance = 0,
      @JsonKey(name: 'income') this.income = 0,
      @JsonKey(name: 'fixunfix') this.fixunfix = 0,
      @JsonKey(name: 'virtual_trading') this.virtualTrading = 0,
      @JsonKey(name: 'pending') this.pending = 0,
      @JsonKey(name: 'net_fixunfix_profit') this.netFixunfixProfit = 0,
      @JsonKey(name: 'net_virtual_trading_profit')
      this.netVirtualTradingProfit = 0,
      @JsonKey(name: 'net_affiliate_amount') this.netAffiliateAmount = 0,
      @JsonKey(name: 'virtual_trading_bonus') this.virtualTradingBonus = 0});

  factory _$UserBalanceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBalanceDataImplFromJson(json);

  @override
  @JsonKey(name: 'currency')
  final String currency;
  @override
  @JsonKey(name: 'balance')
  final double balance;
  @override
  @JsonKey(name: 'income')
  final double income;
  @override
  @JsonKey(name: 'fixunfix')
  final double fixunfix;
  @override
  @JsonKey(name: 'virtual_trading')
  final double virtualTrading;
  @override
  @JsonKey(name: 'pending')
  final double pending;
  @override
  @JsonKey(name: 'net_fixunfix_profit')
  final double netFixunfixProfit;
  @override
  @JsonKey(name: 'net_virtual_trading_profit')
  final double netVirtualTradingProfit;
  @override
  @JsonKey(name: 'net_affiliate_amount')
  final double netAffiliateAmount;
  @override
  @JsonKey(name: 'virtual_trading_bonus')
  final double virtualTradingBonus;

  @override
  String toString() {
    return 'UserBalanceData(currency: $currency, balance: $balance, income: $income, fixunfix: $fixunfix, virtualTrading: $virtualTrading, pending: $pending, netFixunfixProfit: $netFixunfixProfit, netVirtualTradingProfit: $netVirtualTradingProfit, netAffiliateAmount: $netAffiliateAmount, virtualTradingBonus: $virtualTradingBonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBalanceDataImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.income, income) || other.income == income) &&
            (identical(other.fixunfix, fixunfix) ||
                other.fixunfix == fixunfix) &&
            (identical(other.virtualTrading, virtualTrading) ||
                other.virtualTrading == virtualTrading) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.netFixunfixProfit, netFixunfixProfit) ||
                other.netFixunfixProfit == netFixunfixProfit) &&
            (identical(
                    other.netVirtualTradingProfit, netVirtualTradingProfit) ||
                other.netVirtualTradingProfit == netVirtualTradingProfit) &&
            (identical(other.netAffiliateAmount, netAffiliateAmount) ||
                other.netAffiliateAmount == netAffiliateAmount) &&
            (identical(other.virtualTradingBonus, virtualTradingBonus) ||
                other.virtualTradingBonus == virtualTradingBonus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currency,
      balance,
      income,
      fixunfix,
      virtualTrading,
      pending,
      netFixunfixProfit,
      netVirtualTradingProfit,
      netAffiliateAmount,
      virtualTradingBonus);

  /// Create a copy of UserBalanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBalanceDataImplCopyWith<_$UserBalanceDataImpl> get copyWith =>
      __$$UserBalanceDataImplCopyWithImpl<_$UserBalanceDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBalanceDataImplToJson(
      this,
    );
  }
}

abstract class _UserBalanceData implements UserBalanceData {
  factory _UserBalanceData(
      {@JsonKey(name: 'currency') final String currency,
      @JsonKey(name: 'balance') final double balance,
      @JsonKey(name: 'income') final double income,
      @JsonKey(name: 'fixunfix') final double fixunfix,
      @JsonKey(name: 'virtual_trading') final double virtualTrading,
      @JsonKey(name: 'pending') final double pending,
      @JsonKey(name: 'net_fixunfix_profit') final double netFixunfixProfit,
      @JsonKey(name: 'net_virtual_trading_profit')
      final double netVirtualTradingProfit,
      @JsonKey(name: 'net_affiliate_amount') final double netAffiliateAmount,
      @JsonKey(name: 'virtual_trading_bonus')
      final double virtualTradingBonus}) = _$UserBalanceDataImpl;

  factory _UserBalanceData.fromJson(Map<String, dynamic> json) =
      _$UserBalanceDataImpl.fromJson;

  @override
  @JsonKey(name: 'currency')
  String get currency;
  @override
  @JsonKey(name: 'balance')
  double get balance;
  @override
  @JsonKey(name: 'income')
  double get income;
  @override
  @JsonKey(name: 'fixunfix')
  double get fixunfix;
  @override
  @JsonKey(name: 'virtual_trading')
  double get virtualTrading;
  @override
  @JsonKey(name: 'pending')
  double get pending;
  @override
  @JsonKey(name: 'net_fixunfix_profit')
  double get netFixunfixProfit;
  @override
  @JsonKey(name: 'net_virtual_trading_profit')
  double get netVirtualTradingProfit;
  @override
  @JsonKey(name: 'net_affiliate_amount')
  double get netAffiliateAmount;
  @override
  @JsonKey(name: 'virtual_trading_bonus')
  double get virtualTradingBonus;

  /// Create a copy of UserBalanceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBalanceDataImplCopyWith<_$UserBalanceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
