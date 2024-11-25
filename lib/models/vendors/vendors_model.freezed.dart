// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendors_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorsModel _$VendorsModelFromJson(Map<String, dynamic> json) {
  return _VendorsModel.fromJson(json);
}

/// @nodoc
mixin _$VendorsModel {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Company> get data => throw _privateConstructorUsedError;

  /// Serializes this VendorsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorsModelCopyWith<VendorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorsModelCopyWith<$Res> {
  factory $VendorsModelCopyWith(
          VendorsModel value, $Res Function(VendorsModel) then) =
      _$VendorsModelCopyWithImpl<$Res, VendorsModel>;
  @useResult
  $Res call({bool status, String message, List<Company> data});
}

/// @nodoc
class _$VendorsModelCopyWithImpl<$Res, $Val extends VendorsModel>
    implements $VendorsModelCopyWith<$Res> {
  _$VendorsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorsModel
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
              as List<Company>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorsModelImplCopyWith<$Res>
    implements $VendorsModelCopyWith<$Res> {
  factory _$$VendorsModelImplCopyWith(
          _$VendorsModelImpl value, $Res Function(_$VendorsModelImpl) then) =
      __$$VendorsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String message, List<Company> data});
}

/// @nodoc
class __$$VendorsModelImplCopyWithImpl<$Res>
    extends _$VendorsModelCopyWithImpl<$Res, _$VendorsModelImpl>
    implements _$$VendorsModelImplCopyWith<$Res> {
  __$$VendorsModelImplCopyWithImpl(
      _$VendorsModelImpl _value, $Res Function(_$VendorsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendorsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$VendorsModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorsModelImpl implements _VendorsModel {
  _$VendorsModelImpl(
      {this.status = false,
      this.message = '',
      final List<Company> data = const []})
      : _data = data;

  factory _$VendorsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorsModelImplFromJson(json);

  @override
  @JsonKey()
  final bool status;
  @override
  @JsonKey()
  final String message;
  final List<Company> _data;
  @override
  @JsonKey()
  List<Company> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'VendorsModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of VendorsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorsModelImplCopyWith<_$VendorsModelImpl> get copyWith =>
      __$$VendorsModelImplCopyWithImpl<_$VendorsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorsModelImplToJson(
      this,
    );
  }
}

abstract class _VendorsModel implements VendorsModel {
  factory _VendorsModel(
      {final bool status,
      final String message,
      final List<Company> data}) = _$VendorsModelImpl;

  factory _VendorsModel.fromJson(Map<String, dynamic> json) =
      _$VendorsModelImpl.fromJson;

  @override
  bool get status;
  @override
  String get message;
  @override
  List<Company> get data;

  /// Create a copy of VendorsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorsModelImplCopyWith<_$VendorsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'init_ID')
  String get initID => throw _privateConstructorUsedError;
  Logo? get logo => throw _privateConstructorUsedError;
  Watermark? get watermark => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;

  /// Serializes this Company to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'init_ID') String initID,
      Logo? logo,
      Watermark? watermark,
      List<User> users});

  $LogoCopyWith<$Res>? get logo;
  $WatermarkCopyWith<$Res>? get watermark;
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? initID = null,
    Object? logo = freezed,
    Object? watermark = freezed,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      initID: null == initID
          ? _value.initID
          : initID // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Logo?,
      watermark: freezed == watermark
          ? _value.watermark
          : watermark // ignore: cast_nullable_to_non_nullable
              as Watermark?,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LogoCopyWith<$Res>? get logo {
    if (_value.logo == null) {
      return null;
    }

    return $LogoCopyWith<$Res>(_value.logo!, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WatermarkCopyWith<$Res>? get watermark {
    if (_value.watermark == null) {
      return null;
    }

    return $WatermarkCopyWith<$Res>(_value.watermark!, (value) {
      return _then(_value.copyWith(watermark: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'init_ID') String initID,
      Logo? logo,
      Watermark? watermark,
      List<User> users});

  @override
  $LogoCopyWith<$Res>? get logo;
  @override
  $WatermarkCopyWith<$Res>? get watermark;
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? initID = null,
    Object? logo = freezed,
    Object? watermark = freezed,
    Object? users = null,
  }) {
    return _then(_$CompanyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      initID: null == initID
          ? _value.initID
          : initID // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Logo?,
      watermark: freezed == watermark
          ? _value.watermark
          : watermark // ignore: cast_nullable_to_non_nullable
              as Watermark?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  _$CompanyImpl(
      {this.id = 0,
      this.name = '',
      @JsonKey(name: 'init_ID') this.initID = '',
      this.logo,
      this.watermark,
      final List<User> users = const []})
      : _users = users;

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'init_ID')
  final String initID;
  @override
  final Logo? logo;
  @override
  final Watermark? watermark;
  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'Company(id: $id, name: $name, initID: $initID, logo: $logo, watermark: $watermark, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.initID, initID) || other.initID == initID) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.watermark, watermark) ||
                other.watermark == watermark) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, initID, logo,
      watermark, const DeepCollectionEquality().hash(_users));

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  factory _Company(
      {final int id,
      final String name,
      @JsonKey(name: 'init_ID') final String initID,
      final Logo? logo,
      final Watermark? watermark,
      final List<User> users}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'init_ID')
  String get initID;
  @override
  Logo? get logo;
  @override
  Watermark? get watermark;
  @override
  List<User> get users;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Logo _$LogoFromJson(Map<String, dynamic> json) {
  return _Logo.fromJson(json);
}

/// @nodoc
mixin _$Logo {
  String get path => throw _privateConstructorUsedError;

  /// Serializes this Logo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Logo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogoCopyWith<Logo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoCopyWith<$Res> {
  factory $LogoCopyWith(Logo value, $Res Function(Logo) then) =
      _$LogoCopyWithImpl<$Res, Logo>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class _$LogoCopyWithImpl<$Res, $Val extends Logo>
    implements $LogoCopyWith<$Res> {
  _$LogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Logo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogoImplCopyWith<$Res> implements $LogoCopyWith<$Res> {
  factory _$$LogoImplCopyWith(
          _$LogoImpl value, $Res Function(_$LogoImpl) then) =
      __$$LogoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$LogoImplCopyWithImpl<$Res>
    extends _$LogoCopyWithImpl<$Res, _$LogoImpl>
    implements _$$LogoImplCopyWith<$Res> {
  __$$LogoImplCopyWithImpl(_$LogoImpl _value, $Res Function(_$LogoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Logo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$LogoImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogoImpl implements _Logo {
  _$LogoImpl({this.path = ''});

  factory _$LogoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoImplFromJson(json);

  @override
  @JsonKey()
  final String path;

  @override
  String toString() {
    return 'Logo(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of Logo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoImplCopyWith<_$LogoImpl> get copyWith =>
      __$$LogoImplCopyWithImpl<_$LogoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoImplToJson(
      this,
    );
  }
}

abstract class _Logo implements Logo {
  factory _Logo({final String path}) = _$LogoImpl;

  factory _Logo.fromJson(Map<String, dynamic> json) = _$LogoImpl.fromJson;

  @override
  String get path;

  /// Create a copy of Logo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoImplCopyWith<_$LogoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Watermark _$WatermarkFromJson(Map<String, dynamic> json) {
  return _Watermark.fromJson(json);
}

/// @nodoc
mixin _$Watermark {
  String get path => throw _privateConstructorUsedError;

  /// Serializes this Watermark to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Watermark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WatermarkCopyWith<Watermark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatermarkCopyWith<$Res> {
  factory $WatermarkCopyWith(Watermark value, $Res Function(Watermark) then) =
      _$WatermarkCopyWithImpl<$Res, Watermark>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class _$WatermarkCopyWithImpl<$Res, $Val extends Watermark>
    implements $WatermarkCopyWith<$Res> {
  _$WatermarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Watermark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WatermarkImplCopyWith<$Res>
    implements $WatermarkCopyWith<$Res> {
  factory _$$WatermarkImplCopyWith(
          _$WatermarkImpl value, $Res Function(_$WatermarkImpl) then) =
      __$$WatermarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$WatermarkImplCopyWithImpl<$Res>
    extends _$WatermarkCopyWithImpl<$Res, _$WatermarkImpl>
    implements _$$WatermarkImplCopyWith<$Res> {
  __$$WatermarkImplCopyWithImpl(
      _$WatermarkImpl _value, $Res Function(_$WatermarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Watermark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$WatermarkImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WatermarkImpl implements _Watermark {
  _$WatermarkImpl({this.path = ''});

  factory _$WatermarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$WatermarkImplFromJson(json);

  @override
  @JsonKey()
  final String path;

  @override
  String toString() {
    return 'Watermark(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatermarkImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of Watermark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatermarkImplCopyWith<_$WatermarkImpl> get copyWith =>
      __$$WatermarkImplCopyWithImpl<_$WatermarkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WatermarkImplToJson(
      this,
    );
  }
}

abstract class _Watermark implements Watermark {
  factory _Watermark({final String path}) = _$WatermarkImpl;

  factory _Watermark.fromJson(Map<String, dynamic> json) =
      _$WatermarkImpl.fromJson;

  @override
  String get path;

  /// Create a copy of Watermark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatermarkImplCopyWith<_$WatermarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  List<Wallet> get wallet => throw _privateConstructorUsedError;

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
  $Res call({int id, List<Wallet> wallet});
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
    Object? wallet = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
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
  $Res call({int id, List<Wallet> wallet});
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
    Object? wallet = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      wallet: null == wallet
          ? _value._wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl({this.id = 0, final List<Wallet> wallet = const []})
      : _wallet = wallet;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  final List<Wallet> _wallet;
  @override
  @JsonKey()
  List<Wallet> get wallet {
    if (_wallet is EqualUnmodifiableListView) return _wallet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallet);
  }

  @override
  String toString() {
    return 'User(id: $id, wallet: $wallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._wallet, _wallet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_wallet));

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
  factory _User({final int id, final List<Wallet> wallet}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  List<Wallet> get wallet;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return _Wallet.fromJson(json);
}

/// @nodoc
mixin _$Wallet {
  @JsonKey(name: 'virtual_trading')
  double get virtualTrading => throw _privateConstructorUsedError;
  @JsonKey(name: 'virtual_trading_bonus')
  double get virtualTradingBonus => throw _privateConstructorUsedError;

  /// Serializes this Wallet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletCopyWith<Wallet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCopyWith<$Res> {
  factory $WalletCopyWith(Wallet value, $Res Function(Wallet) then) =
      _$WalletCopyWithImpl<$Res, Wallet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'virtual_trading') double virtualTrading,
      @JsonKey(name: 'virtual_trading_bonus') double virtualTradingBonus});
}

/// @nodoc
class _$WalletCopyWithImpl<$Res, $Val extends Wallet>
    implements $WalletCopyWith<$Res> {
  _$WalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? virtualTrading = null,
    Object? virtualTradingBonus = null,
  }) {
    return _then(_value.copyWith(
      virtualTrading: null == virtualTrading
          ? _value.virtualTrading
          : virtualTrading // ignore: cast_nullable_to_non_nullable
              as double,
      virtualTradingBonus: null == virtualTradingBonus
          ? _value.virtualTradingBonus
          : virtualTradingBonus // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletImplCopyWith<$Res> implements $WalletCopyWith<$Res> {
  factory _$$WalletImplCopyWith(
          _$WalletImpl value, $Res Function(_$WalletImpl) then) =
      __$$WalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'virtual_trading') double virtualTrading,
      @JsonKey(name: 'virtual_trading_bonus') double virtualTradingBonus});
}

/// @nodoc
class __$$WalletImplCopyWithImpl<$Res>
    extends _$WalletCopyWithImpl<$Res, _$WalletImpl>
    implements _$$WalletImplCopyWith<$Res> {
  __$$WalletImplCopyWithImpl(
      _$WalletImpl _value, $Res Function(_$WalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? virtualTrading = null,
    Object? virtualTradingBonus = null,
  }) {
    return _then(_$WalletImpl(
      virtualTrading: null == virtualTrading
          ? _value.virtualTrading
          : virtualTrading // ignore: cast_nullable_to_non_nullable
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
class _$WalletImpl implements _Wallet {
  _$WalletImpl(
      {@JsonKey(name: 'virtual_trading') this.virtualTrading = 0.0,
      @JsonKey(name: 'virtual_trading_bonus') this.virtualTradingBonus = 0.0});

  factory _$WalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletImplFromJson(json);

  @override
  @JsonKey(name: 'virtual_trading')
  final double virtualTrading;
  @override
  @JsonKey(name: 'virtual_trading_bonus')
  final double virtualTradingBonus;

  @override
  String toString() {
    return 'Wallet(virtualTrading: $virtualTrading, virtualTradingBonus: $virtualTradingBonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletImpl &&
            (identical(other.virtualTrading, virtualTrading) ||
                other.virtualTrading == virtualTrading) &&
            (identical(other.virtualTradingBonus, virtualTradingBonus) ||
                other.virtualTradingBonus == virtualTradingBonus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, virtualTrading, virtualTradingBonus);

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletImplCopyWith<_$WalletImpl> get copyWith =>
      __$$WalletImplCopyWithImpl<_$WalletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletImplToJson(
      this,
    );
  }
}

abstract class _Wallet implements Wallet {
  factory _Wallet(
      {@JsonKey(name: 'virtual_trading') final double virtualTrading,
      @JsonKey(name: 'virtual_trading_bonus')
      final double virtualTradingBonus}) = _$WalletImpl;

  factory _Wallet.fromJson(Map<String, dynamic> json) = _$WalletImpl.fromJson;

  @override
  @JsonKey(name: 'virtual_trading')
  double get virtualTrading;
  @override
  @JsonKey(name: 'virtual_trading_bonus')
  double get virtualTradingBonus;

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletImplCopyWith<_$WalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
