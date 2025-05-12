import 'package:chelnok_mob/data/models/category_model.dart';
import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sewing_equipment_model.freezed.dart';
part 'sewing_equipment_model.g.dart';

@freezed
class SewingEquipmentModel with _$SewingEquipmentModel {
  const factory SewingEquipmentModel({
    required int id,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'title') final String? name,
    @JsonKey(name: 'category') final CategoryModel? category,
    @JsonKey(name: 'price') final int? price,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _SewingEquipmentModel;

  factory SewingEquipmentModel.fromJson(Map<String, dynamic> json) =>
      _$SewingEquipmentModelFromJson(json);
}

@freezed
class SewingEquipmentParamsModel with _$SewingEquipmentParamsModel {
  const SewingEquipmentParamsModel._();

  const factory SewingEquipmentParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _PlayerQueryParams;

  factory SewingEquipmentParamsModel.fromJson(Map<String, dynamic> json) =>
      _$SewingEquipmentParamsModelFromJson(json);

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

@freezed
class SewingEquipmentDetailsModel with _$SewingEquipmentDetailsModel {
  const SewingEquipmentDetailsModel._();
  const factory SewingEquipmentDetailsModel({
    required int id,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'title') final String? name,
    @JsonKey(name: 'category') final CategoryModel? category,
    @JsonKey(name: 'price') final int? price,
    @JsonKey(name: 'address') final String? address,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'published_date') final DateTime? dateOfRegistration,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _SewingEquipmentDetailsModel;

  factory SewingEquipmentDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$SewingEquipmentDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
