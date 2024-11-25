// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupModel _$SignupModelFromJson(Map<String, dynamic> json) {
  return _SignupModel.fromJson(json);
}

/// @nodoc
mixin _$SignupModel {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserData get data => throw _privateConstructorUsedError;

  /// Serializes this SignupModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupModelCopyWith<SignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupModelCopyWith<$Res> {
  factory $SignupModelCopyWith(
          SignupModel value, $Res Function(SignupModel) then) =
      _$SignupModelCopyWithImpl<$Res, SignupModel>;
  @useResult
  $Res call({bool status, String message, UserData data});

  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SignupModelCopyWithImpl<$Res, $Val extends SignupModel>
    implements $SignupModelCopyWith<$Res> {
  _$SignupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupModel
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
              as UserData,
    ) as $Val);
  }

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get data {
    return $UserDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignupModelImplCopyWith<$Res>
    implements $SignupModelCopyWith<$Res> {
  factory _$$SignupModelImplCopyWith(
          _$SignupModelImpl value, $Res Function(_$SignupModelImpl) then) =
      __$$SignupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String message, UserData data});

  @override
  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SignupModelImplCopyWithImpl<$Res>
    extends _$SignupModelCopyWithImpl<$Res, _$SignupModelImpl>
    implements _$$SignupModelImplCopyWith<$Res> {
  __$$SignupModelImplCopyWithImpl(
      _$SignupModelImpl _value, $Res Function(_$SignupModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$SignupModelImpl(
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
              as UserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupModelImpl implements _SignupModel {
  const _$SignupModelImpl(
      {this.status = true, this.message = '', this.data = const UserData()});

  factory _$SignupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupModelImplFromJson(json);

  @override
  @JsonKey()
  final bool status;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final UserData data;

  @override
  String toString() {
    return 'SignupModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupModelImplCopyWith<_$SignupModelImpl> get copyWith =>
      __$$SignupModelImplCopyWithImpl<_$SignupModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupModelImplToJson(
      this,
    );
  }
}

abstract class _SignupModel implements SignupModel {
  const factory _SignupModel(
      {final bool status,
      final String message,
      final UserData data}) = _$SignupModelImpl;

  factory _SignupModel.fromJson(Map<String, dynamic> json) =
      _$SignupModelImpl.fromJson;

  @override
  bool get status;
  @override
  String get message;
  @override
  UserData get data;

  /// Create a copy of SignupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupModelImplCopyWith<_$SignupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  User get user => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({User user, String token});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String token});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_$UserDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl({this.user = const User(), this.token = ''});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey()
  final User user;
  @override
  @JsonKey()
  final String token;

  @override
  String toString() {
    return 'UserData(user: $user, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData({final User user, final String token}) =
      _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  User get user;
  @override
  String get token;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  int get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'uuid')
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_seen')
  String? get lastSeen => throw _privateConstructorUsedError;
  @JsonKey(name: 'ip_address')
  String? get ipAddress => throw _privateConstructorUsedError;
  bool get isQualified => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verify')
  String get emailVerify => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number_verify')
  String get phoneNumberVerify => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_verify')
  String get accountVerify => throw _privateConstructorUsedError;
  @JsonKey(name: 'my_reffer_code')
  String? get myRefferCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_by_code')
  String? get referralByCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'reffrral_by_id')
  int? get reffrralById => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;
  List<Document> get documents => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      int uid,
      @JsonKey(name: 'uuid') String uuid,
      String name,
      @JsonKey(name: 'last_seen') String? lastSeen,
      @JsonKey(name: 'ip_address') String? ipAddress,
      bool isQualified,
      String? email,
      @JsonKey(name: 'email_verify') String emailVerify,
      String country,
      String city,
      String address,
      @JsonKey(name: 'country_code') String countryCode,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'phone_number_verify') String phoneNumberVerify,
      String dob,
      String status,
      @JsonKey(name: 'account_verify') String accountVerify,
      @JsonKey(name: 'my_reffer_code') String? myRefferCode,
      @JsonKey(name: 'referral_by_code') String? referralByCode,
      @JsonKey(name: 'reffrral_by_id') int? reffrralById,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt,
      List<Document> documents,
      @JsonKey(name: 'profile_image') String? profileImage});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? uuid = null,
    Object? name = null,
    Object? lastSeen = freezed,
    Object? ipAddress = freezed,
    Object? isQualified = null,
    Object? email = freezed,
    Object? emailVerify = null,
    Object? country = null,
    Object? city = null,
    Object? address = null,
    Object? countryCode = null,
    Object? phoneNumber = null,
    Object? phoneNumberVerify = null,
    Object? dob = null,
    Object? status = null,
    Object? accountVerify = null,
    Object? myRefferCode = freezed,
    Object? referralByCode = freezed,
    Object? reffrralById = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? documents = null,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastSeen: freezed == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      isQualified: null == isQualified
          ? _value.isQualified
          : isQualified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerify: null == emailVerify
          ? _value.emailVerify
          : emailVerify // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumberVerify: null == phoneNumberVerify
          ? _value.phoneNumberVerify
          : phoneNumberVerify // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      accountVerify: null == accountVerify
          ? _value.accountVerify
          : accountVerify // ignore: cast_nullable_to_non_nullable
              as String,
      myRefferCode: freezed == myRefferCode
          ? _value.myRefferCode
          : myRefferCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralByCode: freezed == referralByCode
          ? _value.referralByCode
          : referralByCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reffrralById: freezed == reffrralById
          ? _value.reffrralById
          : reffrralById // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int uid,
      @JsonKey(name: 'uuid') String uuid,
      String name,
      @JsonKey(name: 'last_seen') String? lastSeen,
      @JsonKey(name: 'ip_address') String? ipAddress,
      bool isQualified,
      String? email,
      @JsonKey(name: 'email_verify') String emailVerify,
      String country,
      String city,
      String address,
      @JsonKey(name: 'country_code') String countryCode,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'phone_number_verify') String phoneNumberVerify,
      String dob,
      String status,
      @JsonKey(name: 'account_verify') String accountVerify,
      @JsonKey(name: 'my_reffer_code') String? myRefferCode,
      @JsonKey(name: 'referral_by_code') String? referralByCode,
      @JsonKey(name: 'reffrral_by_id') int? reffrralById,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt,
      List<Document> documents,
      @JsonKey(name: 'profile_image') String? profileImage});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? uuid = null,
    Object? name = null,
    Object? lastSeen = freezed,
    Object? ipAddress = freezed,
    Object? isQualified = null,
    Object? email = freezed,
    Object? emailVerify = null,
    Object? country = null,
    Object? city = null,
    Object? address = null,
    Object? countryCode = null,
    Object? phoneNumber = null,
    Object? phoneNumberVerify = null,
    Object? dob = null,
    Object? status = null,
    Object? accountVerify = null,
    Object? myRefferCode = freezed,
    Object? referralByCode = freezed,
    Object? reffrralById = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? documents = null,
    Object? profileImage = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastSeen: freezed == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      isQualified: null == isQualified
          ? _value.isQualified
          : isQualified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerify: null == emailVerify
          ? _value.emailVerify
          : emailVerify // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumberVerify: null == phoneNumberVerify
          ? _value.phoneNumberVerify
          : phoneNumberVerify // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      accountVerify: null == accountVerify
          ? _value.accountVerify
          : accountVerify // ignore: cast_nullable_to_non_nullable
              as String,
      myRefferCode: freezed == myRefferCode
          ? _value.myRefferCode
          : myRefferCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralByCode: freezed == referralByCode
          ? _value.referralByCode
          : referralByCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reffrralById: freezed == reffrralById
          ? _value.reffrralById
          : reffrralById // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.id = 0,
      this.uid = 0,
      @JsonKey(name: 'uuid') this.uuid = '',
      this.name = '',
      @JsonKey(name: 'last_seen') this.lastSeen = null,
      @JsonKey(name: 'ip_address') this.ipAddress = null,
      this.isQualified = false,
      this.email = null,
      @JsonKey(name: 'email_verify') this.emailVerify = 'unverified',
      this.country = '',
      this.city = '',
      this.address = '',
      @JsonKey(name: 'country_code') this.countryCode = '',
      @JsonKey(name: 'phone_number') this.phoneNumber = '',
      @JsonKey(name: 'phone_number_verify')
      this.phoneNumberVerify = 'unverified',
      this.dob = '',
      this.status = 'active',
      @JsonKey(name: 'account_verify') this.accountVerify = 'unverified',
      @JsonKey(name: 'my_reffer_code') this.myRefferCode = null,
      @JsonKey(name: 'referral_by_code') this.referralByCode = null,
      @JsonKey(name: 'reffrral_by_id') this.reffrralById = null,
      @JsonKey(name: 'createdAt') this.createdAt = '',
      @JsonKey(name: 'updatedAt') this.updatedAt = '',
      final List<Document> documents = const [],
      @JsonKey(name: 'profile_image') this.profileImage = null})
      : _documents = documents;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int uid;
  @override
  @JsonKey(name: 'uuid')
  final String uuid;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'last_seen')
  final String? lastSeen;
  @override
  @JsonKey(name: 'ip_address')
  final String? ipAddress;
  @override
  @JsonKey()
  final bool isQualified;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey(name: 'email_verify')
  final String emailVerify;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  @JsonKey(name: 'phone_number_verify')
  final String phoneNumberVerify;
  @override
  @JsonKey()
  final String dob;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey(name: 'account_verify')
  final String accountVerify;
  @override
  @JsonKey(name: 'my_reffer_code')
  final String? myRefferCode;
  @override
  @JsonKey(name: 'referral_by_code')
  final String? referralByCode;
  @override
  @JsonKey(name: 'reffrral_by_id')
  final int? reffrralById;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  final List<Document> _documents;
  @override
  @JsonKey()
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;

  @override
  String toString() {
    return 'User(id: $id, uid: $uid, uuid: $uuid, name: $name, lastSeen: $lastSeen, ipAddress: $ipAddress, isQualified: $isQualified, email: $email, emailVerify: $emailVerify, country: $country, city: $city, address: $address, countryCode: $countryCode, phoneNumber: $phoneNumber, phoneNumberVerify: $phoneNumberVerify, dob: $dob, status: $status, accountVerify: $accountVerify, myRefferCode: $myRefferCode, referralByCode: $referralByCode, reffrralById: $reffrralById, createdAt: $createdAt, updatedAt: $updatedAt, documents: $documents, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.isQualified, isQualified) ||
                other.isQualified == isQualified) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerify, emailVerify) ||
                other.emailVerify == emailVerify) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.phoneNumberVerify, phoneNumberVerify) ||
                other.phoneNumberVerify == phoneNumberVerify) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.accountVerify, accountVerify) ||
                other.accountVerify == accountVerify) &&
            (identical(other.myRefferCode, myRefferCode) ||
                other.myRefferCode == myRefferCode) &&
            (identical(other.referralByCode, referralByCode) ||
                other.referralByCode == referralByCode) &&
            (identical(other.reffrralById, reffrralById) ||
                other.reffrralById == reffrralById) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        uid,
        uuid,
        name,
        lastSeen,
        ipAddress,
        isQualified,
        email,
        emailVerify,
        country,
        city,
        address,
        countryCode,
        phoneNumber,
        phoneNumberVerify,
        dob,
        status,
        accountVerify,
        myRefferCode,
        referralByCode,
        reffrralById,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_documents),
        profileImage
      ]);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final int id,
      final int uid,
      @JsonKey(name: 'uuid') final String uuid,
      final String name,
      @JsonKey(name: 'last_seen') final String? lastSeen,
      @JsonKey(name: 'ip_address') final String? ipAddress,
      final bool isQualified,
      final String? email,
      @JsonKey(name: 'email_verify') final String emailVerify,
      final String country,
      final String city,
      final String address,
      @JsonKey(name: 'country_code') final String countryCode,
      @JsonKey(name: 'phone_number') final String phoneNumber,
      @JsonKey(name: 'phone_number_verify') final String phoneNumberVerify,
      final String dob,
      final String status,
      @JsonKey(name: 'account_verify') final String accountVerify,
      @JsonKey(name: 'my_reffer_code') final String? myRefferCode,
      @JsonKey(name: 'referral_by_code') final String? referralByCode,
      @JsonKey(name: 'reffrral_by_id') final int? reffrralById,
      @JsonKey(name: 'createdAt') final String createdAt,
      @JsonKey(name: 'updatedAt') final String updatedAt,
      final List<Document> documents,
      @JsonKey(name: 'profile_image') final String? profileImage}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  int get uid;
  @override
  @JsonKey(name: 'uuid')
  String get uuid;
  @override
  String get name;
  @override
  @JsonKey(name: 'last_seen')
  String? get lastSeen;
  @override
  @JsonKey(name: 'ip_address')
  String? get ipAddress;
  @override
  bool get isQualified;
  @override
  String? get email;
  @override
  @JsonKey(name: 'email_verify')
  String get emailVerify;
  @override
  String get country;
  @override
  String get city;
  @override
  String get address;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(name: 'phone_number_verify')
  String get phoneNumberVerify;
  @override
  String get dob;
  @override
  String get status;
  @override
  @JsonKey(name: 'account_verify')
  String get accountVerify;
  @override
  @JsonKey(name: 'my_reffer_code')
  String? get myRefferCode;
  @override
  @JsonKey(name: 'referral_by_code')
  String? get referralByCode;
  @override
  @JsonKey(name: 'reffrral_by_id')
  int? get reffrralById;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  List<Document> get documents;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
mixin _$Document {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'docId')
  String get docId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this Document to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentCopyWith<Document> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res, Document>;
  @useResult
  $Res call({int id, @JsonKey(name: 'docId') String docId, String type});
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res, $Val extends Document>
    implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? docId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentImplCopyWith<$Res>
    implements $DocumentCopyWith<$Res> {
  factory _$$DocumentImplCopyWith(
          _$DocumentImpl value, $Res Function(_$DocumentImpl) then) =
      __$$DocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'docId') String docId, String type});
}

/// @nodoc
class __$$DocumentImplCopyWithImpl<$Res>
    extends _$DocumentCopyWithImpl<$Res, _$DocumentImpl>
    implements _$$DocumentImplCopyWith<$Res> {
  __$$DocumentImplCopyWithImpl(
      _$DocumentImpl _value, $Res Function(_$DocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? docId = null,
    Object? type = null,
  }) {
    return _then(_$DocumentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentImpl implements _Document {
  const _$DocumentImpl(
      {this.id = 0, @JsonKey(name: 'docId') this.docId = '', this.type = ''});

  factory _$DocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: 'docId')
  final String docId;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'Document(id: $id, docId: $docId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, docId, type);

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      __$$DocumentImplCopyWithImpl<_$DocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentImplToJson(
      this,
    );
  }
}

abstract class _Document implements Document {
  const factory _Document(
      {final int id,
      @JsonKey(name: 'docId') final String docId,
      final String type}) = _$DocumentImpl;

  factory _Document.fromJson(Map<String, dynamic> json) =
      _$DocumentImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'docId')
  String get docId;
  @override
  String get type;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
