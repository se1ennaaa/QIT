// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get surname => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'sign_type')
  String? get signType => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  File? get avatarFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  UserRoleType? get role => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'last_name') String? surname,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'sign_type') String? signType,
      @JsonKey(name: 'avatar') String? avatarUrl,
      @JsonKey(includeToJson: false, includeFromJson: false) File? avatarFile,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'phone_number') String? phone,
      @JsonKey(name: 'role') UserRoleType? role});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? signType = freezed,
    Object? avatarUrl = freezed,
    Object? avatarFile = freezed,
    Object? city = null,
    Object? phone = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      signType: freezed == signType
          ? _value.signType
          : signType // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarFile: freezed == avatarFile
          ? _value.avatarFile
          : avatarFile // ignore: cast_nullable_to_non_nullable
              as File?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRoleType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'last_name') String? surname,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'sign_type') String? signType,
      @JsonKey(name: 'avatar') String? avatarUrl,
      @JsonKey(includeToJson: false, includeFromJson: false) File? avatarFile,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'phone_number') String? phone,
      @JsonKey(name: 'role') UserRoleType? role});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? signType = freezed,
    Object? avatarUrl = freezed,
    Object? avatarFile = freezed,
    Object? city = null,
    Object? phone = freezed,
    Object? role = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      signType: freezed == signType
          ? _value.signType
          : signType // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarFile: freezed == avatarFile
          ? _value.avatarFile
          : avatarFile // ignore: cast_nullable_to_non_nullable
              as File?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRoleType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'last_name') this.surname,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'sign_type') this.signType,
      @JsonKey(name: 'avatar') this.avatarUrl,
      @JsonKey(includeToJson: false, includeFromJson: false) this.avatarFile,
      @JsonKey(name: 'city') this.city = 'Бишкек',
      @JsonKey(name: 'phone_number') this.phone,
      @JsonKey(name: 'role') this.role})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'last_name')
  final String? surname;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'sign_type')
  final String? signType;
  @override
  @JsonKey(name: 'avatar')
  final String? avatarUrl;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final File? avatarFile;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'phone_number')
  final String? phone;
  @override
  @JsonKey(name: 'role')
  final UserRoleType? role;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, surname: $surname, email: $email, signType: $signType, avatarUrl: $avatarUrl, avatarFile: $avatarFile, city: $city, phone: $phone, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.signType, signType) ||
                other.signType == signType) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.avatarFile, avatarFile) ||
                other.avatarFile == avatarFile) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, surname, email,
      signType, avatarUrl, avatarFile, city, phone, role);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'last_name') final String? surname,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'sign_type') final String? signType,
      @JsonKey(name: 'avatar') final String? avatarUrl,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final File? avatarFile,
      @JsonKey(name: 'city') final String city,
      @JsonKey(name: 'phone_number') final String? phone,
      @JsonKey(name: 'role') final UserRoleType? role}) = _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'last_name')
  String? get surname;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'sign_type')
  String? get signType;
  @override
  @JsonKey(name: 'avatar')
  String? get avatarUrl;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  File? get avatarFile;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'phone_number')
  String? get phone;
  @override
  @JsonKey(name: 'role')
  UserRoleType? get role;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
