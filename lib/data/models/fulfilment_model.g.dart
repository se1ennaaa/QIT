// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfilment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FulfilmentModelImpl _$$FulfilmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FulfilmentModelImpl(
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['name'] as String?,
      address: json['address'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$FulfilmentModelImplToJson(
        _$FulfilmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'address': instance.address,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
    };

const _$ModerationStatusEnumMap = {
  ModerationStatus.pending: 'pending',
  ModerationStatus.rejected: 'rejected',
  ModerationStatus.approved: 'approved',
};

_$FulfilmentParamsModelImpl _$$FulfilmentParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FulfilmentParamsModelImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      searchText: json['search'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      isMy: json['is_my'] as bool? ?? false,
      isFavorites: json['is_favorites'] as bool? ?? false,
    );

Map<String, dynamic> _$$FulfilmentParamsModelImplToJson(
        _$FulfilmentParamsModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'search': instance.searchText,
      'category_id': instance.categoryId,
      'is_my': instance.isMy,
      'is_favorites': instance.isFavorites,
    };

_$FulfilmentDetailsModelImpl _$$FulfilmentDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FulfilmentDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['name'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      dateOfRegistration: json['publicated_date'] == null
          ? null
          : DateTime.parse(json['publicated_date'] as String),
      phoneNumber: json['phone_number'] as String?,
      whatsappNumber: json['whatsapp'] as String?,
    );

Map<String, dynamic> _$$FulfilmentDetailsModelImplToJson(
        _$FulfilmentDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
      'images': instance.images,
      'name': instance.name,
      'address': instance.address,
      'description': instance.description,
      'publicated_date': instance.dateOfRegistration?.toIso8601String(),
      'phone_number': instance.phoneNumber,
      'whatsapp': instance.whatsappNumber,
    };
