// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_worker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeWorkerModelImpl _$$HomeWorkerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeWorkerModelImpl(
      id: (json['id'] as num).toInt(),
      jobTitle: json['position'] as String?,
      salary: (json['rate'] as num?)?.toInt(),
      experience: json['experience'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$HomeWorkerModelImplToJson(
        _$HomeWorkerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': instance.jobTitle,
      'rate': instance.salary,
      'experience': instance.experience,
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

_$HomeWorkerDetailsModelImpl _$$HomeWorkerDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeWorkerDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      fio: json['fullName'] as String?,
      jobTitle: json['position'] as String?,
      experience: json['experience'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      expectedSalary: (json['rate'] as num?)?.toInt(),
      description: json['description'] as String?,
      dateOfRegistration: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      phoneNumber: json['phone_number'] as String?,
      whatsappNumber: json['whatsapp'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$HomeWorkerDetailsModelImplToJson(
        _$HomeWorkerDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fio,
      'position': instance.jobTitle,
      'experience': instance.experience,
      'age': instance.age,
      'gender': instance.gender,
      'rate': instance.expectedSalary,
      'description': instance.description,
      'createdAt': instance.dateOfRegistration?.toIso8601String(),
      'phone_number': instance.phoneNumber,
      'whatsapp': instance.whatsappNumber,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
    };
