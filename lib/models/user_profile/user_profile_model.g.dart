// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileModelImpl _$$UserProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileModelImplToJson(
        _$UserProfileModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      user: json['user'] == null
          ? null
          : UserProfile.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      uid: (json['uid'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? null,
      emailVerify: json['email_verify'] as String? ?? 'unverified',
      phoneNumber: json['phone_number'] as String? ?? '',
      phoneNumberVerify: json['phone_number_verify'] as String? ?? 'unverified',
      country: json['country'] as String? ?? '',
      city: json['city'] as String? ?? '',
      address: json['address'] as String? ?? '',
      dob: json['dob'] as String? ?? null,
      status: json['status'] as String? ?? 'active',
      accountVerify: json['account_verify'] as String? ?? 'unverified',
      myRefferCode: json['my_reffer_code'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      profileImage: json['profile_image'] == null
          ? null
          : ProfileImage.fromJson(
              json['profile_image'] as Map<String, dynamic>),
      wallet: (json['wallet'] as List<dynamic>?)
          ?.map((e) => Wallet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'email_verify': instance.emailVerify,
      'phone_number': instance.phoneNumber,
      'phone_number_verify': instance.phoneNumberVerify,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'dob': instance.dob,
      'status': instance.status,
      'account_verify': instance.accountVerify,
      'my_reffer_code': instance.myRefferCode,
      'createdAt': instance.createdAt,
      'profile_image': instance.profileImage,
      'wallet': instance.wallet,
    };

_$ProfileImageImpl _$$ProfileImageImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImageImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      path: json['path'] as String? ?? '',
    );

Map<String, dynamic> _$$ProfileImageImplToJson(_$ProfileImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'path': instance.path,
    };

_$WalletImpl _$$WalletImplFromJson(Map<String, dynamic> json) => _$WalletImpl(
      income: (json['income'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WalletImplToJson(_$WalletImpl instance) =>
    <String, dynamic>{
      'income': instance.income,
    };
