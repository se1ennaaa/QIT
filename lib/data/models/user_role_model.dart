import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role_model.freezed.dart';
part 'user_role_model.g.dart';

@freezed
class UserRoleModel with _$UserRoleModel {
  const factory UserRoleModel({
    required String name,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'slug') final String? slug,
  }) = _UserRoleModel;

  factory UserRoleModel.fromJson(Map<String, Object?> json) =>
      _$UserRoleModelFromJson(json);
}
