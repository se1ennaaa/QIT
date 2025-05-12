// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState {
  AuthStatus get authStatus => throw _privateConstructorUsedError;
  AsyncValue<UserModel> get userProfile => throw _privateConstructorUsedError;
  UserUpdateStatus get updateProfileStatus =>
      throw _privateConstructorUsedError;
  bool get isAvatarUpdated => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {AuthStatus authStatus,
      AsyncValue<UserModel> userProfile,
      UserUpdateStatus updateProfileStatus,
      bool isAvatarUpdated,
      String? errorMessage});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? userProfile = null,
    Object? updateProfileStatus = null,
    Object? isAvatarUpdated = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserModel>,
      updateProfileStatus: null == updateProfileStatus
          ? _value.updateProfileStatus
          : updateProfileStatus // ignore: cast_nullable_to_non_nullable
              as UserUpdateStatus,
      isAvatarUpdated: null == isAvatarUpdated
          ? _value.isAvatarUpdated
          : isAvatarUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthStatus authStatus,
      AsyncValue<UserModel> userProfile,
      UserUpdateStatus updateProfileStatus,
      bool isAvatarUpdated,
      String? errorMessage});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? userProfile = null,
    Object? updateProfileStatus = null,
    Object? isAvatarUpdated = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$UserStateImpl(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserModel>,
      updateProfileStatus: null == updateProfileStatus
          ? _value.updateProfileStatus
          : updateProfileStatus // ignore: cast_nullable_to_non_nullable
              as UserUpdateStatus,
      isAvatarUpdated: null == isAvatarUpdated
          ? _value.isAvatarUpdated
          : isAvatarUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {this.authStatus = AuthStatus.unauthenticated,
      this.userProfile = const AsyncValue.loading(),
      this.updateProfileStatus = UserUpdateStatus.initial,
      this.isAvatarUpdated = false,
      this.errorMessage});

  @override
  @JsonKey()
  final AuthStatus authStatus;
  @override
  @JsonKey()
  final AsyncValue<UserModel> userProfile;
  @override
  @JsonKey()
  final UserUpdateStatus updateProfileStatus;
  @override
  @JsonKey()
  final bool isAvatarUpdated;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'UserState(authStatus: $authStatus, userProfile: $userProfile, updateProfileStatus: $updateProfileStatus, isAvatarUpdated: $isAvatarUpdated, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.updateProfileStatus, updateProfileStatus) ||
                other.updateProfileStatus == updateProfileStatus) &&
            (identical(other.isAvatarUpdated, isAvatarUpdated) ||
                other.isAvatarUpdated == isAvatarUpdated) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authStatus, userProfile,
      updateProfileStatus, isAvatarUpdated, errorMessage);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final AuthStatus authStatus,
      final AsyncValue<UserModel> userProfile,
      final UserUpdateStatus updateProfileStatus,
      final bool isAvatarUpdated,
      final String? errorMessage}) = _$UserStateImpl;

  @override
  AuthStatus get authStatus;
  @override
  AsyncValue<UserModel> get userProfile;
  @override
  UserUpdateStatus get updateProfileStatus;
  @override
  bool get isAvatarUpdated;
  @override
  String? get errorMessage;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
