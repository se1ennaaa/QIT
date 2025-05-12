import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    final int? id,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'last_name') final String? surname,
    @JsonKey(name: 'email') final String? email,
    @JsonKey(name: 'sign_type') final String? signType,
    @JsonKey(name: 'avatar') final String? avatarUrl,
    @JsonKey(includeToJson: false, includeFromJson: false)
    final File? avatarFile,
    @Default('Бишкек') @JsonKey(name: 'city') final String city,
    @JsonKey(name: 'phone_number') final String? phone,
    @JsonKey(name: 'role') final UserRoleType? role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {
      if (name != null) 'name': name,
      if (surname != null) 'last_name': surname,
      'city': city,
      if (email != null) 'email': email,
      'avatar': avatarUrl,
      if (phone != null) 'phone_number': phone,
    };
  }
}

enum UserRoleType {
  @JsonValue('user')
  user,
  @JsonValue('sewing_workshop')
  sewingWorkshop,
  @JsonValue('customer')
  customer;

  bool get isUser => this == user;
  bool get isSewingWorkshop => this == sewingWorkshop;
  bool get isCustomer => this == customer;
}
