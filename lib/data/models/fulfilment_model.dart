import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fulfilment_model.freezed.dart';
part 'fulfilment_model.g.dart';

@freezed
class FulfilmentModel with _$FulfilmentModel {
  const factory FulfilmentModel({
    required int id,
    @Default([]) final List<String> images,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'address') final String? address,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _FulfilmentModel;

  factory FulfilmentModel.fromJson(Map<String, dynamic> json) =>
      _$FulfilmentModelFromJson(json);
}

@freezed
class FulfilmentParamsModel with _$FulfilmentParamsModel {
  const FulfilmentParamsModel._();

  const factory FulfilmentParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _FulfilmentParamsModel;

  factory FulfilmentParamsModel.fromJson(Map<String, dynamic> json) =>
      _$FulfilmentParamsModelFromJson(json);

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
class FulfilmentDetailsModel with _$FulfilmentDetailsModel {
  const FulfilmentDetailsModel._();
  const factory FulfilmentDetailsModel({
    required int id,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'address') final String? address,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'publicated_date') final DateTime? dateOfRegistration,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
  }) = _FulfilmentDetailsModel;

  factory FulfilmentDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$FulfilmentDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
