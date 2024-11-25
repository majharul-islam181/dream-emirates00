// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorsModelImpl _$$VendorsModelImplFromJson(Map<String, dynamic> json) =>
    _$VendorsModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Company.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$VendorsModelImplToJson(_$VendorsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      initID: json['init_ID'] as String? ?? '',
      logo: json['logo'] == null
          ? null
          : Logo.fromJson(json['logo'] as Map<String, dynamic>),
      watermark: json['watermark'] == null
          ? null
          : Watermark.fromJson(json['watermark'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'init_ID': instance.initID,
      'logo': instance.logo,
      'watermark': instance.watermark,
      'users': instance.users,
    };

_$LogoImpl _$$LogoImplFromJson(Map<String, dynamic> json) => _$LogoImpl(
      path: json['path'] as String? ?? '',
    );

Map<String, dynamic> _$$LogoImplToJson(_$LogoImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
    };

_$WatermarkImpl _$$WatermarkImplFromJson(Map<String, dynamic> json) =>
    _$WatermarkImpl(
      path: json['path'] as String? ?? '',
    );

Map<String, dynamic> _$$WatermarkImplToJson(_$WatermarkImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      wallet: (json['wallet'] as List<dynamic>?)
              ?.map((e) => Wallet.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wallet': instance.wallet,
    };

_$WalletImpl _$$WalletImplFromJson(Map<String, dynamic> json) => _$WalletImpl(
      virtualTrading: (json['virtual_trading'] as num?)?.toDouble() ?? 0.0,
      virtualTradingBonus:
          (json['virtual_trading_bonus'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$WalletImplToJson(_$WalletImpl instance) =>
    <String, dynamic>{
      'virtual_trading': instance.virtualTrading,
      'virtual_trading_bonus': instance.virtualTradingBonus,
    };
