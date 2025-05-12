// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dordoi_container_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DordoiContainerModelImpl _$$DordoiContainerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DordoiContainerModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      whatsapp: json['whatsapp'] as String?,
      phoneNumber: json['phone_number'] as String?,
      models: (json['models'] as List<dynamic>?)
              ?.map((e) => ModelItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLike: json['isLike'] as bool? ?? false,
      rating: (json['rating'] as num?)?.toDouble(),
      status: $enumDecodeNullable(_$ModerationStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$DordoiContainerModelImplToJson(
        _$DordoiContainerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'whatsapp': instance.whatsapp,
      'phone_number': instance.phoneNumber,
      'models': instance.models,
      'isLike': instance.isLike,
      'rating': instance.rating,
      'status': _$ModerationStatusEnumMap[instance.status],
    };

const _$ModerationStatusEnumMap = {
  ModerationStatus.pending: 'pending',
  ModerationStatus.rejected: 'rejected',
  ModerationStatus.approved: 'approved',
};

_$ModelItemModelImpl _$$ModelItemModelImplFromJson(Map<String, dynamic> json) =>
    _$ModelItemModelImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      categoryId: (json['categoryId'] as num?)?.toInt(),
      sendPrice: json['sendPrice'] as String?,
      price: (json['price'] as num?)?.toInt(),
      image: json['image'] as String?,
      images: json['images'] as List<dynamic>? ?? const [],
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      dordoiId: (json['dordoi_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ModelItemModelImplToJson(
        _$ModelItemModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'sendPrice': instance.sendPrice,
      'price': instance.price,
      'image': instance.image,
      'images': instance.images,
      'category': instance.category,
      'dordoi_id': instance.dordoiId,
    };

_$DordoiContainerParamsModelImpl _$$DordoiContainerParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DordoiContainerParamsModelImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      searchText: json['search'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      isMy: json['is_my'] as bool? ?? false,
      isFavorites: json['is_favorites'] as bool? ?? false,
    );

Map<String, dynamic> _$$DordoiContainerParamsModelImplToJson(
        _$DordoiContainerParamsModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'search': instance.searchText,
      'category_id': instance.categoryId,
      'is_my': instance.isMy,
      'is_favorites': instance.isFavorites,
    };
