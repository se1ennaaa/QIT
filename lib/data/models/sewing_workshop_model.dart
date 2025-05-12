import 'package:chelnok_mob/data/models/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sewing_workshop_model.freezed.dart';
part 'sewing_workshop_model.g.dart';

@freezed
class SewingWorkshopModel with _$SewingWorkshopModel {
  const factory SewingWorkshopModel({
    required int id,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'category') final CategoryModel? category,
    @JsonKey(name: 'rating') final double? rating,
    @JsonKey(name: 'address') final String? address,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _SewingWorkshopModel;

  factory SewingWorkshopModel.fromJson(Map<String, dynamic> json) =>
      _$SewingWorkshopModelFromJson(json);
}

@freezed
class SewingWorkshopParamsModel with _$SewingWorkshopParamsModel {
  const SewingWorkshopParamsModel._();

  const factory SewingWorkshopParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _SewingWorkshopParamsModel;

  factory SewingWorkshopParamsModel.fromJson(Map<String, dynamic> json) =>
      _$SewingWorkshopParamsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {
      'page': page,
      'offset': 15,
      if (searchText != null && searchText!.isNotEmpty) 'query': searchText,
      if (categoryId != null) 'category': categoryId,
      if (isMy) 'is_my': isMy,
      if (isFavorites) 'is_favorites': isFavorites,
    };
  }
}

@freezed
class SewingWorkshopDetailsModel with _$SewingWorkshopDetailsModel {
  const SewingWorkshopDetailsModel._();
  const factory SewingWorkshopDetailsModel({
    required int id,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'category') final CategoryModel? category,
    @JsonKey(name: 'rating') final double? rating,
    @JsonKey(name: 'ratings_count') final int? ratingsCount,
    @JsonKey(name: 'address') final String? address,
    @JsonKey(name: 'production_capacity') final String? productiveCapacity,
    @JsonKey(name: 'production_service_life')
    final String? productionExperience,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'registration_date') final DateTime? dateOfRegistration,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _SewingWorkshopDetailsModel;

  factory SewingWorkshopDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$SewingWorkshopDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}

enum ModerationStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('rejected')
  rejected,
  @JsonValue('approved')
  approved;

  bool get isPending => this == pending;
  bool get isRejected => this == rejected;
  bool get isApproved => this == approved;
}
