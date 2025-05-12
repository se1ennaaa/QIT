// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationListState {
  AsyncValue<List<NotificationModel>> get list =>
      throw _privateConstructorUsedError;
  NotificationParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of NotificationListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationListStateCopyWith<NotificationListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListStateCopyWith<$Res> {
  factory $NotificationListStateCopyWith(NotificationListState value,
          $Res Function(NotificationListState) then) =
      _$NotificationListStateCopyWithImpl<$Res, NotificationListState>;
  @useResult
  $Res call(
      {AsyncValue<List<NotificationModel>> list,
      NotificationParamsModel params,
      bool isPageNotFound});

  $NotificationParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$NotificationListStateCopyWithImpl<$Res,
        $Val extends NotificationListState>
    implements $NotificationListStateCopyWith<$Res> {
  _$NotificationListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<NotificationModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NotificationParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of NotificationListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationParamsModelCopyWith<$Res> get params {
    return $NotificationParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationListStateImplCopyWith<$Res>
    implements $NotificationListStateCopyWith<$Res> {
  factory _$$NotificationListStateImplCopyWith(
          _$NotificationListStateImpl value,
          $Res Function(_$NotificationListStateImpl) then) =
      __$$NotificationListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<NotificationModel>> list,
      NotificationParamsModel params,
      bool isPageNotFound});

  @override
  $NotificationParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$NotificationListStateImplCopyWithImpl<$Res>
    extends _$NotificationListStateCopyWithImpl<$Res,
        _$NotificationListStateImpl>
    implements _$$NotificationListStateImplCopyWith<$Res> {
  __$$NotificationListStateImplCopyWithImpl(_$NotificationListStateImpl _value,
      $Res Function(_$NotificationListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$NotificationListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<NotificationModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NotificationParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NotificationListStateImpl implements _NotificationListState {
  const _$NotificationListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const NotificationParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<NotificationModel>> list;
  @override
  @JsonKey()
  final NotificationParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'NotificationListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of NotificationListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationListStateImplCopyWith<_$NotificationListStateImpl>
      get copyWith => __$$NotificationListStateImplCopyWithImpl<
          _$NotificationListStateImpl>(this, _$identity);
}

abstract class _NotificationListState implements NotificationListState {
  const factory _NotificationListState(
      {final AsyncValue<List<NotificationModel>> list,
      final NotificationParamsModel params,
      final bool isPageNotFound}) = _$NotificationListStateImpl;

  @override
  AsyncValue<List<NotificationModel>> get list;
  @override
  NotificationParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of NotificationListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationListStateImplCopyWith<_$NotificationListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
