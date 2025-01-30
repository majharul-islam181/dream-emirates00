// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'vendors_model.freezed.dart';
// part 'vendors_model.g.dart';

// @freezed
// class VendorsModel with _$VendorsModel {
//   factory VendorsModel({
//     @Default(false) bool status,
//     @Default('') String message,
//     @Default([]) List<Company> data,
//   }) = _VendorsModel;

//   factory VendorsModel.fromJson(Map<String, dynamic> json) =>
//       _$VendorsModelFromJson(json);
// }

// @freezed
// class Company with _$Company {
//   factory Company({
//     @Default(0) int id,
//     @Default('') String name,
//     @Default('') @JsonKey(name: 'init_ID') String initID,
//     Logo? logo,
//     Watermark? watermark,
//   }) = _Company;

//   factory Company.fromJson(Map<String, dynamic> json) =>
//       _$CompanyFromJson(json);
// }

// @freezed
// class Logo with _$Logo {
//   factory Logo({
//     @Default('') String path,
//   }) = _Logo;

//   factory Logo.fromJson(Map<String, dynamic> json) => _$LogoFromJson(json);
// }

// @freezed
// class Watermark with _$Watermark {
//   factory Watermark({
//     @Default('') String path,
//   }) = _Watermark;

//   factory Watermark.fromJson(Map<String, dynamic> json) =>
//       _$WatermarkFromJson(json);
// }

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendors_model.freezed.dart';
part 'vendors_model.g.dart';

@freezed
class VendorsModel with _$VendorsModel {
  factory VendorsModel({
    @Default(false) bool status,
    @Default('') String message,
    @Default([]) List<Company> data,
  }) = _VendorsModel;

  factory VendorsModel.fromJson(Map<String, dynamic> json) =>
      _$VendorsModelFromJson(json);
}

@freezed
class Company with _$Company {
  factory Company({
    @Default(0) int id,
    @Default('') String name,
    @Default('') @JsonKey(name: 'init_ID') String initID,
    Logo? logo,
    Watermark? watermark,
    @Default([]) List<User> users,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}

@freezed
class Logo with _$Logo {
  factory Logo({
    @Default('') String path,
  }) = _Logo;

  factory Logo.fromJson(Map<String, dynamic> json) => _$LogoFromJson(json);
}

@freezed
class Watermark with _$Watermark {
  factory Watermark({
    @Default('') String path,
  }) = _Watermark;

  factory Watermark.fromJson(Map<String, dynamic> json) =>
      _$WatermarkFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    @Default(0) int id,
    @Default([]) List<Wallet> wallet,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Wallet with _$Wallet {
  factory Wallet({
    @Default(0.0) @JsonKey(name: 'virtual_trading') double virtualTrading,
    @Default(0.0)
    @JsonKey(name: 'virtual_trading_bonus')
    double virtualTradingBonus,
  }) = _Wallet;

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}
