import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@freezed
class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    required int id,
    @Default([]) final List<String> images,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'price') final int? price,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}

@freezed
class ServiceParamsModel with _$ServiceParamsModel {
  const ServiceParamsModel._();

  const factory ServiceParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _PlayerQueryParams;

  factory ServiceParamsModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceParamsModelFromJson(json);

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
class ServiceDetailsModel with _$ServiceDetailsModel {
  const ServiceDetailsModel._();
  const factory ServiceDetailsModel({
    required int id,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'price') final int? price,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'publication_date') final DateTime? dateOfRegistration,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _ServiceDetailsModel;

  factory ServiceDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
