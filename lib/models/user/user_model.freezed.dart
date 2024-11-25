// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'status')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  UserData get data => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') UserData data});

  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
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

  /// Create a copy of UserModel
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
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') UserData data});

  @override
  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$UserModelImpl(
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
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') required this.data});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool status;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'data')
  final UserData data;

  @override
  String toString() {
    return 'UserModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {@JsonKey(name: 'status') final bool status,
      @JsonKey(name: 'message') final String message,
      @JsonKey(name: 'data') required final UserData data}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  UserData get data;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  @JsonKey(name: 'user')
  User get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
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
  $Res call(
      {@JsonKey(name: 'user') User user, @JsonKey(name: 'token') String token});

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
  $Res call(
      {@JsonKey(name: 'user') User user, @JsonKey(name: 'token') String token});

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
  _$UserDataImpl(
      {@JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'token') this.token = ''});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final User user;
  @override
  @JsonKey(name: 'token')
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
  factory _UserData(
      {@JsonKey(name: 'user') required final User user,
      @JsonKey(name: 'token') final String token}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  User get user;
  @override
  @JsonKey(name: 'token')
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
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'uid')
  int get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'uuid')
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_seen')
  String get lastSeen => throw _privateConstructorUsedError;
  @JsonKey(name: 'ip_address')
  String get ipAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'isQualified')
  bool get isQualified => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verify')
  String get emailVerify => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number_verify')
  String get phoneNumberVerify => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob')
  String get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_verify')
  String get accountVerify => throw _privateConstructorUsedError;
  @JsonKey(name: 'my_reffer_code')
  String get myRefferCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_by_code')
  String? get referralByCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'reffrral_by_id')
  int? get reffrralById => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents')
  List<Document> get documents => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'roles')
  List<Role> get roles => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'uid') int uid,
      @JsonKey(name: 'uuid') String uuid,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'last_seen') String lastSeen,
      @JsonKey(name: 'ip_address') String ipAddress,
      @JsonKey(name: 'isQualified') bool isQualified,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'email_verify') String emailVerify,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'country_code') String countryCode,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'phone_number_verify') String phoneNumberVerify,
      @JsonKey(name: 'dob') String dob,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'account_verify') String accountVerify,
      @JsonKey(name: 'my_reffer_code') String myRefferCode,
      @JsonKey(name: 'referral_by_code') String? referralByCode,
      @JsonKey(name: 'reffrral_by_id') int? reffrralById,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt,
      @JsonKey(name: 'documents') List<Document> documents,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'roles') List<Role> roles});
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
    Object? lastSeen = null,
    Object? ipAddress = null,
    Object? isQualified = null,
    Object? email = null,
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
    Object? myRefferCode = null,
    Object? referralByCode = freezed,
    Object? reffrralById = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? documents = null,
    Object? profileImage = freezed,
    Object? roles = null,
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
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      isQualified: null == isQualified
          ? _value.isQualified
          : isQualified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
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
      myRefferCode: null == myRefferCode
          ? _value.myRefferCode
          : myRefferCode // ignore: cast_nullable_to_non_nullable
              as String,
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
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
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
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'uid') int uid,
      @JsonKey(name: 'uuid') String uuid,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'last_seen') String lastSeen,
      @JsonKey(name: 'ip_address') String ipAddress,
      @JsonKey(name: 'isQualified') bool isQualified,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'email_verify') String emailVerify,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'country_code') String countryCode,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'phone_number_verify') String phoneNumberVerify,
      @JsonKey(name: 'dob') String dob,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'account_verify') String accountVerify,
      @JsonKey(name: 'my_reffer_code') String myRefferCode,
      @JsonKey(name: 'referral_by_code') String? referralByCode,
      @JsonKey(name: 'reffrral_by_id') int? reffrralById,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt,
      @JsonKey(name: 'documents') List<Document> documents,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'roles') List<Role> roles});
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
    Object? lastSeen = null,
    Object? ipAddress = null,
    Object? isQualified = null,
    Object? email = null,
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
    Object? myRefferCode = null,
    Object? referralByCode = freezed,
    Object? reffrralById = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? documents = null,
    Object? profileImage = freezed,
    Object? roles = null,
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
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      isQualified: null == isQualified
          ? _value.isQualified
          : isQualified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
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
      myRefferCode: null == myRefferCode
          ? _value.myRefferCode
          : myRefferCode // ignore: cast_nullable_to_non_nullable
              as String,
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
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'uid') this.uid = 0,
      @JsonKey(name: 'uuid') this.uuid = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'last_seen') this.lastSeen = '',
      @JsonKey(name: 'ip_address') this.ipAddress = '',
      @JsonKey(name: 'isQualified') this.isQualified = false,
      @JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'email_verify') this.emailVerify = 'unverified',
      @JsonKey(name: 'country') this.country = '',
      @JsonKey(name: 'city') this.city = '',
      @JsonKey(name: 'address') this.address = '',
      @JsonKey(name: 'country_code') this.countryCode = '',
      @JsonKey(name: 'phone_number') this.phoneNumber = '',
      @JsonKey(name: 'phone_number_verify')
      this.phoneNumberVerify = 'unverified',
      @JsonKey(name: 'dob') this.dob = '',
      @JsonKey(name: 'status') this.status = 'active',
      @JsonKey(name: 'account_verify') this.accountVerify = 'verified',
      @JsonKey(name: 'my_reffer_code') this.myRefferCode = '',
      @JsonKey(name: 'referral_by_code') this.referralByCode,
      @JsonKey(name: 'reffrral_by_id') this.reffrralById,
      @JsonKey(name: 'createdAt') this.createdAt = '',
      @JsonKey(name: 'updatedAt') this.updatedAt = '',
      @JsonKey(name: 'documents') final List<Document> documents = const [],
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'roles') final List<Role> roles = const []})
      : _documents = documents,
        _roles = roles;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'uid')
  final int uid;
  @override
  @JsonKey(name: 'uuid')
  final String uuid;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'last_seen')
  final String lastSeen;
  @override
  @JsonKey(name: 'ip_address')
  final String ipAddress;
  @override
  @JsonKey(name: 'isQualified')
  final bool isQualified;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'email_verify')
  final String emailVerify;
  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'address')
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
  @JsonKey(name: 'dob')
  final String dob;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'account_verify')
  final String accountVerify;
  @override
  @JsonKey(name: 'my_reffer_code')
  final String myRefferCode;
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
  @JsonKey(name: 'documents')
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  final List<Role> _roles;
  @override
  @JsonKey(name: 'roles')
  List<Role> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  String toString() {
    return 'User(id: $id, uid: $uid, uuid: $uuid, name: $name, lastSeen: $lastSeen, ipAddress: $ipAddress, isQualified: $isQualified, email: $email, emailVerify: $emailVerify, country: $country, city: $city, address: $address, countryCode: $countryCode, phoneNumber: $phoneNumber, phoneNumberVerify: $phoneNumberVerify, dob: $dob, status: $status, accountVerify: $accountVerify, myRefferCode: $myRefferCode, referralByCode: $referralByCode, reffrralById: $reffrralById, createdAt: $createdAt, updatedAt: $updatedAt, documents: $documents, profileImage: $profileImage, roles: $roles)';
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
                other.profileImage == profileImage) &&
            const DeepCollectionEquality().equals(other._roles, _roles));
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
        profileImage,
        const DeepCollectionEquality().hash(_roles)
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
  factory _User(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'uid') final int uid,
      @JsonKey(name: 'uuid') final String uuid,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'last_seen') final String lastSeen,
      @JsonKey(name: 'ip_address') final String ipAddress,
      @JsonKey(name: 'isQualified') final bool isQualified,
      @JsonKey(name: 'email') final String email,
      @JsonKey(name: 'email_verify') final String emailVerify,
      @JsonKey(name: 'country') final String country,
      @JsonKey(name: 'city') final String city,
      @JsonKey(name: 'address') final String address,
      @JsonKey(name: 'country_code') final String countryCode,
      @JsonKey(name: 'phone_number') final String phoneNumber,
      @JsonKey(name: 'phone_number_verify') final String phoneNumberVerify,
      @JsonKey(name: 'dob') final String dob,
      @JsonKey(name: 'status') final String status,
      @JsonKey(name: 'account_verify') final String accountVerify,
      @JsonKey(name: 'my_reffer_code') final String myRefferCode,
      @JsonKey(name: 'referral_by_code') final String? referralByCode,
      @JsonKey(name: 'reffrral_by_id') final int? reffrralById,
      @JsonKey(name: 'createdAt') final String createdAt,
      @JsonKey(name: 'updatedAt') final String updatedAt,
      @JsonKey(name: 'documents') final List<Document> documents,
      @JsonKey(name: 'profile_image') final String? profileImage,
      @JsonKey(name: 'roles') final List<Role> roles}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'uid')
  int get uid;
  @override
  @JsonKey(name: 'uuid')
  String get uuid;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'last_seen')
  String get lastSeen;
  @override
  @JsonKey(name: 'ip_address')
  String get ipAddress;
  @override
  @JsonKey(name: 'isQualified')
  bool get isQualified;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'email_verify')
  String get emailVerify;
  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'address')
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
  @JsonKey(name: 'dob')
  String get dob;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'account_verify')
  String get accountVerify;
  @override
  @JsonKey(name: 'my_reffer_code')
  String get myRefferCode;
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
  @JsonKey(name: 'documents')
  List<Document> get documents;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'roles')
  List<Role> get roles;

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
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'docId')
  String get docId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
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
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'docId') String docId,
      @JsonKey(name: 'type') String type});
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
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'docId') String docId,
      @JsonKey(name: 'type') String type});
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
  _$DocumentImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'docId') this.docId = '',
      @JsonKey(name: 'type') this.type = ''});

  factory _$DocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'docId')
  final String docId;
  @override
  @JsonKey(name: 'type')
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
  factory _Document(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'docId') final String docId,
      @JsonKey(name: 'type') final String type}) = _$DocumentImpl;

  factory _Document.fromJson(Map<String, dynamic> json) =
      _$DocumentImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'docId')
  String get docId;
  @override
  @JsonKey(name: 'type')
  String get type;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Role to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleImplCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$RoleImplCopyWith(
          _$RoleImpl value, $Res Function(_$RoleImpl) then) =
      __$$RoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$RoleImplCopyWithImpl<$Res>
    extends _$RoleCopyWithImpl<$Res, _$RoleImpl>
    implements _$$RoleImplCopyWith<$Res> {
  __$$RoleImplCopyWithImpl(_$RoleImpl _value, $Res Function(_$RoleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$RoleImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleImpl implements _Role {
  _$RoleImpl({@JsonKey(name: 'name') this.name = ''});

  factory _$RoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'Role(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      __$$RoleImplCopyWithImpl<_$RoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleImplToJson(
      this,
    );
  }
}

abstract class _Role implements Role {
  factory _Role({@JsonKey(name: 'name') final String name}) = _$RoleImpl;

  factory _Role.fromJson(Map<String, dynamic> json) = _$RoleImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
