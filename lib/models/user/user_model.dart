// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @Default(false) @JsonKey(name: 'status') bool status,
    @Default('') @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') required UserData data,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserData with _$UserData {
  factory UserData({
    @JsonKey(name: 'user') required User user,
    @Default('') @JsonKey(name: 'token') String token,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default(0) @JsonKey(name: 'uid') int uid,
    @Default('') @JsonKey(name: 'uuid') String uuid,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'last_seen') String lastSeen,
    @Default('') @JsonKey(name: 'ip_address') String ipAddress,
    @Default(false) @JsonKey(name: 'isQualified') bool isQualified,
    @Default('') @JsonKey(name: 'email') String email,
    @Default('unverified') @JsonKey(name: 'email_verify') String emailVerify,
    @Default('') @JsonKey(name: 'country') String country,
    @Default('') @JsonKey(name: 'city') String city,
    @Default('') @JsonKey(name: 'address') String address,
    @Default('') @JsonKey(name: 'country_code') String countryCode,
    @Default('') @JsonKey(name: 'phone_number') String phoneNumber,
    @Default('unverified')
    @JsonKey(name: 'phone_number_verify')
    String phoneNumberVerify,
    @Default('') @JsonKey(name: 'dob') String dob,
    @Default('active') @JsonKey(name: 'status') String status,
    @Default('verified') @JsonKey(name: 'account_verify') String accountVerify,
    @Default('') @JsonKey(name: 'my_reffer_code') String myRefferCode,
    @JsonKey(name: 'referral_by_code') String? referralByCode,
    @JsonKey(name: 'reffrral_by_id') int? reffrralById,
    @Default('') @JsonKey(name: 'createdAt') String createdAt,
    @Default('') @JsonKey(name: 'updatedAt') String updatedAt,
    @Default([]) @JsonKey(name: 'documents') List<Document> documents,
    @JsonKey(name: 'profile_image') String? profileImage,
    @Default([]) @JsonKey(name: 'roles') List<Role> roles,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Document with _$Document {
  factory Document({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'docId') String docId,
    @Default('') @JsonKey(name: 'type') String type,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}

@freezed
class Role with _$Role {
  factory Role({
    @Default('') @JsonKey(name: 'name') String name,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}


//flutter packages pub run build_runner build