// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sewing_workshop_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SewingWorkshopListState {
  AsyncValue<List<SewingWorkshopModel>> get list =>
      throw _privateConstructorUsedError;
  SewingWorkshopParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of SewingWorkshopListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SewingWorkshopListStateCopyWith<SewingWorkshopListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SewingWorkshopListStateCopyWith<$Res> {
  factory $SewingWorkshopListStateCopyWith(SewingWorkshopListState value,
          $Res Function(SewingWorkshopListState) then) =
      _$SewingWorkshopListStateCopyWithImpl<$Res, SewingWorkshopListState>;
  @useResult
  $Res call(
      {AsyncValue<List<SewingWorkshopModel>> list,
      SewingWorkshopParamsModel params,
      bool isPageNotFound});

  $SewingWorkshopParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$SewingWorkshopListStateCopyWithImpl<$Res,
        $Val extends SewingWorkshopListState>
    implements $SewingWorkshopListStateCopyWith<$Res> {
  _$SewingWorkshopListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SewingWorkshopListState
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
              as AsyncValue<List<SewingWorkshopModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SewingWorkshopParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of SewingWorkshopListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SewingWorkshopParamsModelCopyWith<$Res> get params {
    return $SewingWorkshopParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SewingWorkshopListStateImplCopyWith<$Res>
    implements $SewingWorkshopListStateCopyWith<$Res> {
  factory _$$SewingWorkshopListStateImplCopyWith(
          _$SewingWorkshopListStateImpl value,
          $Res Function(_$SewingWorkshopListStateImpl) then) =
      __$$SewingWorkshopListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<SewingWorkshopModel>> list,
      SewingWorkshopParamsModel params,
      bool isPageNotFound});

  @override
  $SewingWorkshopParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$SewingWorkshopListStateImplCopyWithImpl<$Res>
    extends _$SewingWorkshopListStateCopyWithImpl<$Res,
        _$SewingWorkshopListStateImpl>
    implements _$$SewingWorkshopListStateImplCopyWith<$Res> {
  __$$SewingWorkshopListStateImplCopyWithImpl(
      _$SewingWorkshopListStateImpl _value,
      $Res Function(_$SewingWorkshopListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SewingWorkshopListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$SewingWorkshopListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SewingWorkshopModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SewingWorkshopParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SewingWorkshopListStateImpl implements _SewingWorkshopListState {
  const _$SewingWorkshopListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const SewingWorkshopParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<SewingWorkshopModel>> list;
  @override
  @JsonKey()
  final SewingWorkshopParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'SewingWorkshopListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SewingWorkshopListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of SewingWorkshopListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SewingWorkshopListStateImplCopyWith<_$SewingWorkshopListStateImpl>
      get copyWith => __$$SewingWorkshopListStateImplCopyWithImpl<
          _$SewingWorkshopListStateImpl>(this, _$identity);
}

abstract class _SewingWorkshopListState implements SewingWorkshopListState {
  const factory _SewingWorkshopListState(
      {final AsyncValue<List<SewingWorkshopModel>> list,
      final SewingWorkshopParamsModel params,
      final bool isPageNotFound}) = _$SewingWorkshopListStateImpl;

  @override
  AsyncValue<List<SewingWorkshopModel>> get list;
  @override
  SewingWorkshopParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of SewingWorkshopListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SewingWorkshopListStateImplCopyWith<_$SewingWorkshopListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
