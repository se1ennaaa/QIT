// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManagerModelImpl _$$ManagerModelImplFromJson(Map<String, dynamic> json) =>
    _$ManagerModelImpl(
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      image: json['image'] as String?,
      fio: json['name'] as String?,
      experience: json['experience_key'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$ManagerModelImplToJson(_$ManagerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'image': instance.image,
      'name': instance.fio,
      'experience_key': instance.experience,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
    };

const _$ModerationStatusEnumMap = {
  ModerationStatus.pending: 'pending',
  ModerationStatus.rejected: 'rejected',
  ModerationStatus.approved: 'approved',
};

_$PlayerQueryParamsImpl _$$PlayerQueryParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PlayerQueryParamsImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      searchText: json['search'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      isMy: json['is_my'] as bool? ?? false,
      isFavorites: json['is_favorites'] as bool? ?? false,
    );

Map<String, dynamic> _$$PlayerQueryParamsImplToJson(
        _$PlayerQueryParamsImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'search': instance.searchText,
      'category_id': instance.categoryId,
      'is_my': instance.isMy,
      'is_favorites': instance.isFavorites,
    };

_$ManagerDetailsModelImpl _$$ManagerDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ManagerDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
      fio: json['name'] as String?,
      experience: json['experience_key'] as String?,
      description: json['description'] as String?,
      dateOfRegistration: json['publication_date'] == null
          ? null
          : DateTime.parse(json['publication_date'] as String),
      phoneNumber: json['phone_number'] as String?,
      whatsappNumber: json['whatsapp'] as String?,
    );

Map<String, dynamic> _$$ManagerDetailsModelImplToJson(
        _$ManagerDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
      'name': instance.fio,
      'experience_key': instance.experience,
      'description': instance.description,
      'publication_date': instance.dateOfRegistration?.toIso8601String(),
      'phone_number': instance.phoneNumber,
      'whatsapp': instance.whatsappNumber,
    };
