// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  factory UserProfileModel({
    @Default(false) @JsonKey(name: 'status') bool status,
    @Default('') @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') UserData? data,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

@freezed
class UserData with _$UserData {
  factory UserData({
    @JsonKey(name: 'user') UserProfile? user,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default(0) @JsonKey(name: 'uid') int uid,
    @Default('') @JsonKey(name: 'name') String name,
    @Default(null) @JsonKey(name: 'email') String? email,
    @Default('unverified') @JsonKey(name: 'email_verify') String emailVerify,
    @Default('') @JsonKey(name: 'phone_number') String phoneNumber,
    @Default('unverified')
    @JsonKey(name: 'phone_number_verify')
    String phoneNumberVerify,
    @Default('') @JsonKey(name: 'country') String country,
    @Default('') @JsonKey(name: 'city') String city,
    @Default('') @JsonKey(name: 'address') String address,
    @Default(null) @JsonKey(name: 'dob') String? dob,
    @Default('active') @JsonKey(name: 'status') String status,
    @Default('unverified')
    @JsonKey(name: 'account_verify')
    String accountVerify,
    @Default('') @JsonKey(name: 'my_reffer_code') String myRefferCode,
    @Default('') @JsonKey(name: 'createdAt') String createdAt,
    @JsonKey(name: 'profile_image') ProfileImage? profileImage,
    @JsonKey(name: 'wallet') List<Wallet>? wallet, // Change to List<Wallet>
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

@freezed
class ProfileImage with _$ProfileImage {
  factory ProfileImage({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'path') String path,
  }) = _ProfileImage;

  factory ProfileImage.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageFromJson(json);
}

@freezed
class Wallet with _$Wallet {
  factory Wallet({
    @Default(0) @JsonKey(name: 'income') int income,
  }) = _Wallet;

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}
