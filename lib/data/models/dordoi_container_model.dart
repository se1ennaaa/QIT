import 'package:chelnok_mob/data/models/category_model.dart';
import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dordoi_container_model.freezed.dart';
part 'dordoi_container_model.g.dart';

@freezed
class DordoiContainerModel with _$DordoiContainerModel {
  const DordoiContainerModel._();
  const factory DordoiContainerModel({
    required int id,
    final String? name,
    final String? whatsapp,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @Default([]) final List<ModelItemModel> models,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
    @JsonKey(name: 'rating') final double? rating,
    @JsonKey(name: 'status') final ModerationStatus? status,
  }) = _DordoiContainerModel;

  factory DordoiContainerModel.fromJson(Map<String, dynamic> json) =>
      _$DordoiContainerModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'whatsapp': whatsapp,
      'phone_number': phoneNumber,
    };
  }
}

@freezed
class ModelItemModel with _$ModelItemModel {
  const ModelItemModel._();
  const factory ModelItemModel({
    final String? name,
    final String? description,
    final int? categoryId,
    final String? sendPrice,
    @JsonKey(name: 'price') final int? price,
    final String? image,
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default([])
    final List<dynamic> sendImages,
    @Default([]) final List<dynamic> images,
    @JsonKey(name: 'category') final CategoryModel? category,
    @JsonKey(name: 'dordoi_id') final int? dordoiId,
  }) = _ModelItemModel;

  factory ModelItemModel.fromJson(Map<String, dynamic> json) =>
      _$ModelItemModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'category_id': categoryId,
      'dordoi_id': dordoiId,
      'price': sendPrice,
      'image': image,
      'images': sendImages,
    };
  }
}

@freezed
class DordoiContainerParamsModel with _$DordoiContainerParamsModel {
  const DordoiContainerParamsModel._();
  const factory DordoiContainerParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _DordoiContainerParamsModel;

  factory DordoiContainerParamsModel.fromJson(Map<String, dynamic> json) =>
      _$DordoiContainerParamsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {
      'page': page,
      'offset': 15,
      if (searchText != null && searchText!.isNotEmpty) 'query': searchText,
      if (categoryId != null) 'category': categoryId,
      if (isFavorites) 'is_favorites': isFavorites,
      if (isMy) 'is_my': isMy,
    };
  }
}
