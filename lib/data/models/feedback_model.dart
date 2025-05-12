import 'package:chelnok_mob/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_model.freezed.dart';
part 'feedback_model.g.dart';

@freezed
class FeedbackModel with _$FeedbackModel {
  const factory FeedbackModel({
    required final int id,
    final DateTime? createAt,
    @JsonKey(name: 'text') final String? text,
    @JsonKey(name: 'user') final UserModel? user,
    @JsonKey(name: 'rating') final double? rating,
    @JsonKey(name: 'type') final String? type,
    @JsonKey(name: 'type_id') final int? typeId,
  }) = _FeedbackModel;

  factory FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$FeedbackModelFromJson(json);
}

@freezed
class FeedbackParamsModel with _$FeedbackParamsModel {
  const FeedbackParamsModel._();

  const factory FeedbackParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'type') final String? type,
    @JsonKey(name: 'type_id') final int? typeId,
  }) = _FeedbackParamsModel;

  factory FeedbackParamsModel.fromJson(Map<String, dynamic> json) =>
      _$FeedbackParamsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {
      'page': page,
      'offset': 15,
      'type': type,
      'type_id': typeId,
    };
  }
}
