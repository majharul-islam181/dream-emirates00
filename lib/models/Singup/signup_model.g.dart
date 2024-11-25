// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupModelImpl _$$SignupModelImplFromJson(Map<String, dynamic> json) =>
    _$SignupModelImpl(
      status: json['status'] as bool? ?? true,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const UserData()
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignupModelImplToJson(_$SignupModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      user: json['user'] == null
          ? const User()
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      uid: (json['uid'] as num?)?.toInt() ?? 0,
      uuid: json['uuid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      lastSeen: json['last_seen'] as String? ?? null,
      ipAddress: json['ip_address'] as String? ?? null,
      isQualified: json['isQualified'] as bool? ?? false,
      email: json['email'] as String? ?? null,
      emailVerify: json['email_verify'] as String? ?? 'unverified',
      country: json['country'] as String? ?? '',
      city: json['city'] as String? ?? '',
      address: json['address'] as String? ?? '',
      countryCode: json['country_code'] as String? ?? '',
      phoneNumber: json['phone_number'] as String? ?? '',
      phoneNumberVerify: json['phone_number_verify'] as String? ?? 'unverified',
      dob: json['dob'] as String? ?? '',
      status: json['status'] as String? ?? 'active',
      accountVerify: json['account_verify'] as String? ?? 'unverified',
      myRefferCode: json['my_reffer_code'] as String? ?? null,
      referralByCode: json['referral_by_code'] as String? ?? null,
      reffrralById: (json['reffrral_by_id'] as num?)?.toInt() ?? null,
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      profileImage: json['profile_image'] as String? ?? null,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'uuid': instance.uuid,
      'name': instance.name,
      'last_seen': instance.lastSeen,
      'ip_address': instance.ipAddress,
      'isQualified': instance.isQualified,
      'email': instance.email,
      'email_verify': instance.emailVerify,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'country_code': instance.countryCode,
      'phone_number': instance.phoneNumber,
      'phone_number_verify': instance.phoneNumberVerify,
      'dob': instance.dob,
      'status': instance.status,
      'account_verify': instance.accountVerify,
      'my_reffer_code': instance.myRefferCode,
      'referral_by_code': instance.referralByCode,
      'reffrral_by_id': instance.reffrralById,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'documents': instance.documents,
      'profile_image': instance.profileImage,
    };

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      docId: json['docId'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'docId': instance.docId,
      'type': instance.type,
    };
