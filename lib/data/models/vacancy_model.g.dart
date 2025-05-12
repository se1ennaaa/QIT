// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VacancyModelImpl _$$VacancyModelImplFromJson(Map<String, dynamic> json) =>
    _$VacancyModelImpl(
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['title'] as String?,
      salary: json['salary'] as String?,
      address: json['address'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$VacancyModelImplToJson(_$VacancyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'title': instance.name,
      'salary': instance.salary,
      'address': instance.address,
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

_$VacancyDetailsModelImpl _$$VacancyDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VacancyDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['title'] as String?,
      experience: json['work_experience'] as String?,
      address: json['address'] as String?,
      salary: json['salary'] as String?,
      description: json['description'] as String?,
      dateOfRegistration: json['publication_date'] == null
          ? null
          : DateTime.parse(json['publication_date'] as String),
      phoneNumber: json['phone_number'] as String?,
      whatsappNumber: json['whatsapp'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$VacancyDetailsModelImplToJson(
        _$VacancyDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'title': instance.name,
      'work_experience': instance.experience,
      'address': instance.address,
      'salary': instance.salary,
      'description': instance.description,
      'publication_date': instance.dateOfRegistration?.toIso8601String(),
      'phone_number': instance.phoneNumber,
      'whatsapp': instance.whatsappNumber,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
    };
