// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseModelImpl _$$CourseModelImplFromJson(Map<String, dynamic> json) =>
    _$CourseModelImpl(
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['name'] as String?,
      format: json['teaching_format'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$CourseModelImplToJson(_$CourseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'teaching_format': instance.format,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
    };

const _$ModerationStatusEnumMap = {
  ModerationStatus.pending: 'pending',
  ModerationStatus.rejected: 'rejected',
  ModerationStatus.approved: 'approved',
};

_$CourseParamsModelImpl _$$CourseParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseParamsModelImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      searchText: json['search'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      isMy: json['is_my'] as bool? ?? false,
      isFavorites: json['is_favorites'] as bool? ?? false,
    );

Map<String, dynamic> _$$CourseParamsModelImplToJson(
        _$CourseParamsModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'search': instance.searchText,
      'category_id': instance.categoryId,
      'is_my': instance.isMy,
      'is_favorites': instance.isFavorites,
    };

_$CourseDetailsModelImpl _$$CourseDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['name'] as String?,
      format: json['teaching_format'] as String?,
      description: json['description'] as String?,
      address: json['teaching_address'] as String?,
      dateOfRegistration: json['publication_date'] == null
          ? null
          : DateTime.parse(json['publication_date'] as String),
      phoneNumber: json['phone_number'] as String?,
      whatsappNumber: json['whatsapp'] as String?,
    );

Map<String, dynamic> _$$CourseDetailsModelImplToJson(
        _$CourseDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
      'images': instance.images,
      'name': instance.name,
      'teaching_format': instance.format,
      'description': instance.description,
      'teaching_address': instance.address,
      'publication_date': instance.dateOfRegistration?.toIso8601String(),
      'phone_number': instance.phoneNumber,
      'whatsapp': instance.whatsappNumber,
    };
