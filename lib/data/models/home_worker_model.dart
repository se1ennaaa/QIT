import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_worker_model.freezed.dart';
part 'home_worker_model.g.dart';

@freezed
class HomeWorkerModel with _$HomeWorkerModel {
  const factory HomeWorkerModel({
    required int id,
    @JsonKey(name: 'position') final String? jobTitle,
    @JsonKey(name: 'rate') final int? salary,
    @JsonKey(name: 'experience') final String? experience,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _HomeWorkerModel;

  factory HomeWorkerModel.fromJson(Map<String, dynamic> json) =>
      _$HomeWorkerModelFromJson(json);
}

@freezed
class HomeWorkerParamsModel with _$HomeWorkerParamsModel {
  const HomeWorkerParamsModel._();

  const factory HomeWorkerParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _PlayerQueryParams;

  factory HomeWorkerParamsModel.fromJson(Map<String, dynamic> json) =>
      _$HomeWorkerParamsModelFromJson(json);

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
class HomeWorkerDetailsModel with _$HomeWorkerDetailsModel {
  const HomeWorkerDetailsModel._();
  const factory HomeWorkerDetailsModel({
    required int id,
    @JsonKey(name: 'fullName') final String? fio,
    @JsonKey(name: 'position') final String? jobTitle,
    @JsonKey(name: 'experience') final String? experience,
    @JsonKey(name: 'age') final int? age,
    @JsonKey(name: 'gender') final String? gender,
    @JsonKey(name: 'rate') final int? expectedSalary,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'createdAt') final DateTime? dateOfRegistration,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _HomeWorkerDetailsModel;

  factory HomeWorkerDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$HomeWorkerDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
