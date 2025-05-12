// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sewing_workshop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SewingWorkshopModelImpl _$$SewingWorkshopModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SewingWorkshopModelImpl(
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['name'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toDouble(),
      address: json['address'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$SewingWorkshopModelImplToJson(
        _$SewingWorkshopModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'category': instance.category,
      'rating': instance.rating,
      'address': instance.address,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
    };

const _$ModerationStatusEnumMap = {
  ModerationStatus.pending: 'pending',
  ModerationStatus.rejected: 'rejected',
  ModerationStatus.approved: 'approved',
};

_$SewingWorkshopParamsModelImpl _$$SewingWorkshopParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SewingWorkshopParamsModelImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      searchText: json['search'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      isMy: json['is_my'] as bool? ?? false,
      isFavorites: json['is_favorites'] as bool? ?? false,
    );

Map<String, dynamic> _$$SewingWorkshopParamsModelImplToJson(
        _$SewingWorkshopParamsModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'search': instance.searchText,
      'category_id': instance.categoryId,
      'is_my': instance.isMy,
      'is_favorites': instance.isFavorites,
    };

_$SewingWorkshopDetailsModelImpl _$$SewingWorkshopDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SewingWorkshopDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['name'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toDouble(),
      ratingsCount: (json['ratings_count'] as num?)?.toInt(),
      address: json['address'] as String?,
      productiveCapacity: json['production_capacity'] as String?,
      productionExperience: json['production_service_life'] as String?,
      description: json['description'] as String?,
      dateOfRegistration: json['registration_date'] == null
          ? null
          : DateTime.parse(json['registration_date'] as String),
      phoneNumber: json['phone_number'] as String?,
      whatsappNumber: json['whatsapp'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$SewingWorkshopDetailsModelImplToJson(
        _$SewingWorkshopDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'category': instance.category,
      'rating': instance.rating,
      'ratings_count': instance.ratingsCount,
      'address': instance.address,
      'production_capacity': instance.productiveCapacity,
      'production_service_life': instance.productionExperience,
      'description': instance.description,
      'registration_date': instance.dateOfRegistration?.toIso8601String(),
      'phone_number': instance.phoneNumber,
      'whatsapp': instance.whatsappNumber,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
    };
