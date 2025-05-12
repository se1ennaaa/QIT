// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FcmCreateModel _$FcmCreateModelFromJson(Map<String, dynamic> json) {
  return _FcmCreateModel.fromJson(json);
}

/// @nodoc
mixin _$FcmCreateModel {
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String get registrationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceId')
  String? get deviceId => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this FcmCreateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FcmCreateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FcmCreateModelCopyWith<FcmCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcmCreateModelCopyWith<$Res> {
  factory $FcmCreateModelCopyWith(
          FcmCreateModel value, $Res Function(FcmCreateModel) then) =
      _$FcmCreateModelCopyWithImpl<$Res, FcmCreateModel>;
  @useResult
  $Res call(
      {String? name,
      String? title,
      @JsonKey(name: 'token') String registrationId,
      @JsonKey(name: 'deviceId') String? deviceId,
      bool? active,
      String type});
}

/// @nodoc
class _$FcmCreateModelCopyWithImpl<$Res, $Val extends FcmCreateModel>
    implements $FcmCreateModelCopyWith<$Res> {
  _$FcmCreateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FcmCreateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
    Object? registrationId = null,
    Object? deviceId = freezed,
    Object? active = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationId: null == registrationId
          ? _value.registrationId
          : registrationId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FcmCreateModelImplCopyWith<$Res>
    implements $FcmCreateModelCopyWith<$Res> {
  factory _$$FcmCreateModelImplCopyWith(_$FcmCreateModelImpl value,
          $Res Function(_$FcmCreateModelImpl) then) =
      __$$FcmCreateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? title,
      @JsonKey(name: 'token') String registrationId,
      @JsonKey(name: 'deviceId') String? deviceId,
      bool? active,
      String type});
}

/// @nodoc
class __$$FcmCreateModelImplCopyWithImpl<$Res>
    extends _$FcmCreateModelCopyWithImpl<$Res, _$FcmCreateModelImpl>
    implements _$$FcmCreateModelImplCopyWith<$Res> {
  __$$FcmCreateModelImplCopyWithImpl(
      _$FcmCreateModelImpl _value, $Res Function(_$FcmCreateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FcmCreateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
    Object? registrationId = null,
    Object? deviceId = freezed,
    Object? active = freezed,
    Object? type = null,
  }) {
    return _then(_$FcmCreateModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationId: null == registrationId
          ? _value.registrationId
          : registrationId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FcmCreateModelImpl implements _FcmCreateModel {
  const _$FcmCreateModelImpl(
      {this.name,
      this.title = 'defaultValue',
      @JsonKey(name: 'token') required this.registrationId,
      @JsonKey(name: 'deviceId') this.deviceId,
      this.active = true,
      required this.type});

  factory _$FcmCreateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FcmCreateModelImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey(name: 'token')
  final String registrationId;
  @override
  @JsonKey(name: 'deviceId')
  final String? deviceId;
  @override
  @JsonKey()
  final bool? active;
  @override
  final String type;

  @override
  String toString() {
    return 'FcmCreateModel(name: $name, title: $title, registrationId: $registrationId, deviceId: $deviceId, active: $active, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FcmCreateModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.registrationId, registrationId) ||
                other.registrationId == registrationId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, title, registrationId, deviceId, active, type);

  /// Create a copy of FcmCreateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FcmCreateModelImplCopyWith<_$FcmCreateModelImpl> get copyWith =>
      __$$FcmCreateModelImplCopyWithImpl<_$FcmCreateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FcmCreateModelImplToJson(
      this,
    );
  }
}

abstract class _FcmCreateModel implements FcmCreateModel {
  const factory _FcmCreateModel(
      {final String? name,
      final String? title,
      @JsonKey(name: 'token') required final String registrationId,
      @JsonKey(name: 'deviceId') final String? deviceId,
      final bool? active,
      required final String type}) = _$FcmCreateModelImpl;

  factory _FcmCreateModel.fromJson(Map<String, dynamic> json) =
      _$FcmCreateModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get title;
  @override
  @JsonKey(name: 'token')
  String get registrationId;
  @override
  @JsonKey(name: 'deviceId')
  String? get deviceId;
  @override
  bool? get active;
  @override
  String get type;

  /// Create a copy of FcmCreateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FcmCreateModelImplCopyWith<_$FcmCreateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
