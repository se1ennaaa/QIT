// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      surname: json['last_name'] as String?,
      email: json['email'] as String?,
      signType: json['sign_type'] as String?,
      avatarUrl: json['avatar'] as String?,
      city: json['city'] as String? ?? 'Бишкек',
      phone: json['phone_number'] as String?,
      role: $enumDecodeNullable(_$UserRoleTypeEnumMap, json['role']),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'last_name': instance.surname,
      'email': instance.email,
      'sign_type': instance.signType,
      'avatar': instance.avatarUrl,
      'city': instance.city,
      'phone_number': instance.phone,
      'role': _$UserRoleTypeEnumMap[instance.role],
    };

const _$UserRoleTypeEnumMap = {
  UserRoleType.user: 'user',
  UserRoleType.sewingWorkshop: 'sewing_workshop',
  UserRoleType.customer: 'customer',
};
