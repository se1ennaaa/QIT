import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vacancy_model.freezed.dart';
part 'vacancy_model.g.dart';

@freezed
class VacancyModel with _$VacancyModel {
  const factory VacancyModel({
    required int id,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'title') final String? name,
    @JsonKey(name: 'salary') final String? salary,
    @JsonKey(name: 'address') final String? address,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _VacancyModel;

  factory VacancyModel.fromJson(Map<String, dynamic> json) =>
      _$VacancyModelFromJson(json);
}

@freezed
class VacancyParamsModel with _$VacancyParamsModel {
  const VacancyParamsModel._();

  const factory VacancyParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _PlayerQueryParams;

  factory VacancyParamsModel.fromJson(Map<String, dynamic> json) =>
      _$VacancyParamsModelFromJson(json);

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
class VacancyDetailsModel with _$VacancyDetailsModel {
  const VacancyDetailsModel._();
  const factory VacancyDetailsModel({
    required int id,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'title') final String? name,
    @JsonKey(name: 'work_experience') final String? experience,
    @JsonKey(name: 'address') final String? address,
    @JsonKey(name: 'salary') final String? salary,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'publication_date') final DateTime? dateOfRegistration,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _VacancyDetailsModel;

  factory VacancyDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$VacancyDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
