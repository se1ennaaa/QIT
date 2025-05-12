// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_role_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRoleModel _$UserRoleModelFromJson(Map<String, dynamic> json) {
  return _UserRoleModel.fromJson(json);
}

/// @nodoc
mixin _$UserRoleModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;

  /// Serializes this UserRoleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRoleModelCopyWith<UserRoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRoleModelCopyWith<$Res> {
  factory $UserRoleModelCopyWith(
          UserRoleModel value, $Res Function(UserRoleModel) then) =
      _$UserRoleModelCopyWithImpl<$Res, UserRoleModel>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'slug') String? slug});
}

/// @nodoc
class _$UserRoleModelCopyWithImpl<$Res, $Val extends UserRoleModel>
    implements $UserRoleModelCopyWith<$Res> {
  _$UserRoleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRoleModelImplCopyWith<$Res>
    implements $UserRoleModelCopyWith<$Res> {
  factory _$$UserRoleModelImplCopyWith(
          _$UserRoleModelImpl value, $Res Function(_$UserRoleModelImpl) then) =
      __$$UserRoleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'slug') String? slug});
}

/// @nodoc
class __$$UserRoleModelImplCopyWithImpl<$Res>
    extends _$UserRoleModelCopyWithImpl<$Res, _$UserRoleModelImpl>
    implements _$$UserRoleModelImplCopyWith<$Res> {
  __$$UserRoleModelImplCopyWithImpl(
      _$UserRoleModelImpl _value, $Res Function(_$UserRoleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$UserRoleModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRoleModelImpl implements _UserRoleModel {
  const _$UserRoleModelImpl(
      {required this.name,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'slug') this.slug});

  factory _$UserRoleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRoleModelImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'slug')
  final String? slug;

  @override
  String toString() {
    return 'UserRoleModel(name: $name, description: $description, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRoleModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, slug);

  /// Create a copy of UserRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRoleModelImplCopyWith<_$UserRoleModelImpl> get copyWith =>
      __$$UserRoleModelImplCopyWithImpl<_$UserRoleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRoleModelImplToJson(
      this,
    );
  }
}

abstract class _UserRoleModel implements UserRoleModel {
  const factory _UserRoleModel(
      {required final String name,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'slug') final String? slug}) = _$UserRoleModelImpl;

  factory _UserRoleModel.fromJson(Map<String, dynamic> json) =
      _$UserRoleModelImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'slug')
  String? get slug;

  /// Create a copy of UserRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRoleModelImplCopyWith<_$UserRoleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
