// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeModelImpl _$$ResumeModelImplFromJson(Map<String, dynamic> json) =>
    _$ResumeModelImpl(
      id: (json['id'] as num).toInt(),
      jobTitle: json['position'] as String?,
      salary: json['expected_salary'] as String?,
      experience: json['experience_key'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$ResumeModelImplToJson(_$ResumeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': instance.jobTitle,
      'expected_salary': instance.salary,
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

_$ResumeDetailsModelImpl _$$ResumeDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResumeDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      fio: json['full_name'] as String?,
      jobTitle: json['position'] as String?,
      experience: json['experience_key'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      expectedSalary: json['expected_salary'] as String?,
      description: json['description'] as String?,
      dateOfRegistration: json['publication_date'] == null
          ? null
          : DateTime.parse(json['publication_date'] as String),
      phoneNumber: json['phone_number'] as String?,
      whatsappNumber: json['whatsapp'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$ResumeDetailsModelImplToJson(
        _$ResumeDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fio,
      'position': instance.jobTitle,
      'experience_key': instance.experience,
      'age': instance.age,
      'gender': instance.gender,
      'expected_salary': instance.expectedSalary,
      'description': instance.description,
      'publication_date': instance.dateOfRegistration?.toIso8601String(),
      'phone_number': instance.phoneNumber,
      'whatsapp': instance.whatsappNumber,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
    };
