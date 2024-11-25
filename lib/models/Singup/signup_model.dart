import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_model.freezed.dart';
part 'signup_model.g.dart';

@freezed
class SignupModel with _$SignupModel {
  const factory SignupModel({
    @Default(true) bool status,
    @Default('') String message,
    @Default(UserData()) UserData data,
  }) = _SignupModel;

  factory SignupModel.fromJson(Map<String, dynamic> json) =>
      _$SignupModelFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @Default(User()) User user,
    @Default('') String token,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @Default(0) int id,
    @Default(0) int uid,
    @JsonKey(name: 'uuid') @Default('') String uuid,
    @Default('') String name,
    @JsonKey(name: 'last_seen') @Default(null) String? lastSeen,
    @JsonKey(name: 'ip_address') @Default(null) String? ipAddress,
    @Default(false) bool isQualified,
    @Default(null) String? email,
    @JsonKey(name: 'email_verify') @Default('unverified') String emailVerify,
    @Default('') String country,
    @Default('') String city,
    @Default('') String address,
    @JsonKey(name: 'country_code') @Default('') String countryCode,
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
    @JsonKey(name: 'phone_number_verify')
    @Default('unverified')
    String phoneNumberVerify,
    @Default('') String dob,
    @Default('active') String status,
    @JsonKey(name: 'account_verify')
    @Default('unverified')
    String accountVerify,
    @JsonKey(name: 'my_reffer_code') @Default(null) String? myRefferCode,
    @JsonKey(name: 'referral_by_code') @Default(null) String? referralByCode,
    @JsonKey(name: 'reffrral_by_id') @Default(null) int? reffrralById,
    @JsonKey(name: 'createdAt') @Default('') String createdAt,
    @JsonKey(name: 'updatedAt') @Default('') String updatedAt,
    @Default([]) List<Document> documents,
    @JsonKey(name: 'profile_image') @Default(null) String? profileImage,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Document with _$Document {
  const factory Document({
    @Default(0) int id,
    @JsonKey(name: 'docId') @Default('') String docId,
    @Default('') String type,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}
