// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  LoginStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get googleAccessToken => throw _privateConstructorUsedError;
  Map<String, dynamic>? get yandexData => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {LoginStatus status,
      String? error,
      String? googleAccessToken,
      Map<String, dynamic>? yandexData});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? googleAccessToken = freezed,
    Object? yandexData = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      googleAccessToken: freezed == googleAccessToken
          ? _value.googleAccessToken
          : googleAccessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      yandexData: freezed == yandexData
          ? _value.yandexData
          : yandexData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginStatus status,
      String? error,
      String? googleAccessToken,
      Map<String, dynamic>? yandexData});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? googleAccessToken = freezed,
    Object? yandexData = freezed,
  }) {
    return _then(_$LoginStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      googleAccessToken: freezed == googleAccessToken
          ? _value.googleAccessToken
          : googleAccessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      yandexData: freezed == yandexData
          ? _value._yandexData
          : yandexData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.status = LoginStatus.initial,
      this.error,
      this.googleAccessToken,
      final Map<String, dynamic>? yandexData})
      : _yandexData = yandexData;

  @override
  @JsonKey()
  final LoginStatus status;
  @override
  final String? error;
  @override
  final String? googleAccessToken;
  final Map<String, dynamic>? _yandexData;
  @override
  Map<String, dynamic>? get yandexData {
    final value = _yandexData;
    if (value == null) return null;
    if (_yandexData is EqualUnmodifiableMapView) return _yandexData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'LoginState(status: $status, error: $error, googleAccessToken: $googleAccessToken, yandexData: $yandexData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.googleAccessToken, googleAccessToken) ||
                other.googleAccessToken == googleAccessToken) &&
            const DeepCollectionEquality()
                .equals(other._yandexData, _yandexData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error, googleAccessToken,
      const DeepCollectionEquality().hash(_yandexData));

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final LoginStatus status,
      final String? error,
      final String? googleAccessToken,
      final Map<String, dynamic>? yandexData}) = _$LoginStateImpl;

  @override
  LoginStatus get status;
  @override
  String? get error;
  @override
  String? get googleAccessToken;
  @override
  Map<String, dynamic>? get yandexData;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
