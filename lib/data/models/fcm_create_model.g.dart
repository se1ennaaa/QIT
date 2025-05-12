// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_create_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FcmCreateModelImpl _$$FcmCreateModelImplFromJson(Map<String, dynamic> json) =>
    _$FcmCreateModelImpl(
      name: json['name'] as String?,
      title: json['title'] as String? ?? 'defaultValue',
      registrationId: json['token'] as String,
      deviceId: json['deviceId'] as String?,
      active: json['active'] as bool? ?? true,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$FcmCreateModelImplToJson(
        _$FcmCreateModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'token': instance.registrationId,
      'deviceId': instance.deviceId,
      'active': instance.active,
      'type': instance.type,
    };
