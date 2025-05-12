import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_create_model.freezed.dart';
part 'fcm_create_model.g.dart';

@freezed
class FcmCreateModel with _$FcmCreateModel {
  const factory FcmCreateModel({
    final String? name,
    @Default('defaultValue') final String? title,
    @JsonKey(name: 'token') required String registrationId,
    @JsonKey(name: 'deviceId') String? deviceId,
    @Default(true) final bool? active,
    required String type,
  }) = _FcmCreateModel;

  factory FcmCreateModel.fromJson(Map<String, Object?> json) =>
      _$FcmCreateModelFromJson(json);
}
