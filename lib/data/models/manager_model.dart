import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manager_model.freezed.dart';
part 'manager_model.g.dart';

@freezed
class ManagerModel with _$ManagerModel {
  const factory ManagerModel({
    required int id,
    @Default([]) final List<String> images,
    final String? image,
    @JsonKey(name: 'name') final String? fio,
    @JsonKey(name: 'experience_key') final String? experience,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _ManagerModel;

  factory ManagerModel.fromJson(Map<String, dynamic> json) =>
      _$ManagerModelFromJson(json);
}

@freezed
class ManagerParamsModel with _$ManagerParamsModel {
  const ManagerParamsModel._();

  const factory ManagerParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _PlayerQueryParams;

  factory ManagerParamsModel.fromJson(Map<String, dynamic> json) =>
      _$ManagerParamsModelFromJson(json);

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
class ManagerDetailsModel with _$ManagerDetailsModel {
  const ManagerDetailsModel._();
  const factory ManagerDetailsModel({
    required int id,
    // @Default([]) @JsonKey(name: 'images') final List<String> images,
    final String? image,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
    @JsonKey(name: 'name') final String? fio,
    @JsonKey(name: 'experience_key') final String? experience,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'publication_date') final DateTime? dateOfRegistration,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
  }) = _ManagerDetailsModel;

  factory ManagerDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ManagerDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
