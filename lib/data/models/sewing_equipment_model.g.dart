// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sewing_equipment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SewingEquipmentModelImpl _$$SewingEquipmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SewingEquipmentModelImpl(
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['title'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$SewingEquipmentModelImplToJson(
        _$SewingEquipmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'title': instance.name,
      'category': instance.category,
      'price': instance.price,
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

_$SewingEquipmentDetailsModelImpl _$$SewingEquipmentDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SewingEquipmentDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['title'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toInt(),
      address: json['address'] as String?,
      description: json['description'] as String?,
      dateOfRegistration: json['published_date'] == null
          ? null
          : DateTime.parse(json['published_date'] as String),
      phoneNumber: json['phone_number'] as String?,
      whatsappNumber: json['whatsapp'] as String?,
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$SewingEquipmentDetailsModelImplToJson(
        _$SewingEquipmentDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'title': instance.name,
      'category': instance.category,
      'price': instance.price,
      'address': instance.address,
      'description': instance.description,
      'published_date': instance.dateOfRegistration?.toIso8601String(),
      'phone_number': instance.phoneNumber,
      'whatsapp': instance.whatsappNumber,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
    };
