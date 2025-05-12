import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseModel with _$CourseModel {
  const factory CourseModel({
    required int id,
    @Default([]) final List<String> images,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'teaching_format') final String? format,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}

@freezed
class CourseParamsModel with _$CourseParamsModel {
  const CourseParamsModel._();

  const factory CourseParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _CourseParamsModel;

  factory CourseParamsModel.fromJson(Map<String, dynamic> json) =>
      _$CourseParamsModelFromJson(json);

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
class CourseDetailsModel with _$CourseDetailsModel {
  const CourseDetailsModel._();
  const factory CourseDetailsModel({
    required int id,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'teaching_format') final String? format,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'teaching_address') final String? address,
    @JsonKey(name: 'publication_date') final DateTime? dateOfRegistration,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
  }) = _CourseDetailsModel;

  factory CourseDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
