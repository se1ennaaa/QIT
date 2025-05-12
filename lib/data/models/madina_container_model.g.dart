// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'madina_container_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MadinaContainerModelImpl _$$MadinaContainerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MadinaContainerModelImpl(
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['name'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
    );

Map<String, dynamic> _$$MadinaContainerModelImplToJson(
        _$MadinaContainerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'category': instance.category,
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

_$MadinaContainerDetailsModelImpl _$$MadinaContainerDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MadinaContainerDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
      isLike: json['isLike'] as bool? ?? false,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      name: json['name'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toInt(),
      dateOfRegistration: json['publication_date'] == null
          ? null
          : DateTime.parse(json['publication_date'] as String),
      phoneNumber: json['phone_number'] as String?,
      whatsappNumber: json['whatsapp'] as String?,
    );

Map<String, dynamic> _$$MadinaContainerDetailsModelImplToJson(
        _$MadinaContainerDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$ModerationStatusEnumMap[instance.status],
      'isLike': instance.isLike,
      'images': instance.images,
      'name': instance.name,
      'category': instance.category,
      'description': instance.description,
      'price': instance.price,
      'publication_date': instance.dateOfRegistration?.toIso8601String(),
      'phone_number': instance.phoneNumber,
      'whatsapp': instance.whatsappNumber,
    };
