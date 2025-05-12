import 'package:chelnok_mob/data/models/category_model.dart';
import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'madina_container_model.freezed.dart';
part 'madina_container_model.g.dart';

@freezed
class MadinaContainerModel with _$MadinaContainerModel {
  const factory MadinaContainerModel({
    required int id,
    @Default([]) final List<String> images,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'category') final CategoryModel? category,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _MadinaContainerModel;

  factory MadinaContainerModel.fromJson(Map<String, dynamic> json) =>
      _$MadinaContainerModelFromJson(json);
}

@freezed
class MadinaContainerParamsModel with _$MadinaContainerParamsModel {
  const MadinaContainerParamsModel._();

  const factory MadinaContainerParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _PlayerQueryParams;

  factory MadinaContainerParamsModel.fromJson(Map<String, dynamic> json) =>
      _$MadinaContainerParamsModelFromJson(json);

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
class MadinaContainerDetailsModel with _$MadinaContainerDetailsModel {
  const MadinaContainerDetailsModel._();
  const factory MadinaContainerDetailsModel({
    required int id,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'category') final CategoryModel? category,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'price') final int? price,
    @JsonKey(name: 'publication_date') final DateTime? dateOfRegistration,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
  }) = _MadinaContainerDetailsModel;

  factory MadinaContainerDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MadinaContainerDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
