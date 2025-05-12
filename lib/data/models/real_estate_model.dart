import 'package:chelnok_mob/data/models/category_model.dart';
import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'real_estate_model.freezed.dart';
part 'real_estate_model.g.dart';

@freezed
class RealEstateModel with _$RealEstateModel {
  const factory RealEstateModel({
    required int id,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'title') final String? name,
    @JsonKey(name: 'price') final int? price,
    @JsonKey(name: 'area') final String? area,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _RealEstateModel;

  factory RealEstateModel.fromJson(Map<String, dynamic> json) =>
      _$RealEstateModelFromJson(json);
}

@freezed
class RealEstateParamsModel with _$RealEstateParamsModel {
  const RealEstateParamsModel._();

  const factory RealEstateParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _PlayerQueryParams;

  factory RealEstateParamsModel.fromJson(Map<String, dynamic> json) =>
      _$RealEstateParamsModelFromJson(json);

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
class RealEstateDetailsModel with _$RealEstateDetailsModel {
  const RealEstateDetailsModel._();
  const factory RealEstateDetailsModel({
    required int id,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'title') final String? name,
    @JsonKey(name: 'category') final CategoryModel? category,
    @JsonKey(name: 'area') final String? area,
    @JsonKey(name: 'price') final int? price,
    @JsonKey(name: 'region_consideration') final String? regionOfConsideration,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'registration_date') final DateTime? dateOfRegistration,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _RealEstateDetailsModel;

  factory RealEstateDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$RealEstateDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
