import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_model.freezed.dart';
part 'resume_model.g.dart';

@freezed
class ResumeModel with _$ResumeModel {
  const factory ResumeModel({
    required int id,
    @JsonKey(name: 'position') final String? jobTitle,
    @JsonKey(name: 'expected_salary') final String? salary,
    @JsonKey(name: 'experience_key') final String? experience,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _ResumeModel;

  factory ResumeModel.fromJson(Map<String, dynamic> json) =>
      _$ResumeModelFromJson(json);
}

@freezed
class ResumeParamsModel with _$ResumeParamsModel {
  const ResumeParamsModel._();

  const factory ResumeParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _PlayerQueryParams;

  factory ResumeParamsModel.fromJson(Map<String, dynamic> json) =>
      _$ResumeParamsModelFromJson(json);

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
class ResumeDetailsModel with _$ResumeDetailsModel {
  const ResumeDetailsModel._();
  const factory ResumeDetailsModel({
    required int id,
    @JsonKey(name: 'full_name') final String? fio,
    @JsonKey(name: 'position') final String? jobTitle,
    @JsonKey(name: 'experience_key') final String? experience,
    @JsonKey(name: 'age') final int? age,
    @JsonKey(name: 'gender') final String? gender,
    @JsonKey(name: 'expected_salary') final String? expectedSalary,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'publication_date') final DateTime? dateOfRegistration,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _ResumeDetailsModel;

  factory ResumeDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ResumeDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
