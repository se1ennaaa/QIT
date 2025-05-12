import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_model.freezed.dart';
part 'registration_model.g.dart';

@freezed
class RegistrationModel with _$RegistrationModel {
  const RegistrationModel._();

  const factory RegistrationModel({
    @Default('name') final String? name,
    @Default('last_name') final String? lastName,
    final String? email,
    final String? password,
    final String? confirmPassword,
    final String? role,
    final String? code,
    final String? signType,
  }) = _RegistrationModel;

  factory RegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'last_name': lastName,
      'password': password,
      'email': email,
      'code': code,
      "role": role ?? 'user',
      'sign_type': 'email',
    };
  }
}
