import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required final int id,
    @JsonKey(name: 'title') final String? title,
    @JsonKey(name: 'description') final String? description,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class NotificationParamsModel with _$NotificationParamsModel {
  const NotificationParamsModel._();

  const factory NotificationParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _NotificationParamsModel;

  factory NotificationParamsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationParamsModelFromJson(json);

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
class NotificationDetailsModel with _$NotificationDetailsModel {
  const NotificationDetailsModel._();
  const factory NotificationDetailsModel({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'title') final String? title,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
  }) = _NotificationDetailsModel;

  factory NotificationDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
