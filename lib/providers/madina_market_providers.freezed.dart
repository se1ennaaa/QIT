// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'madina_market_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MadinaContainerListState {
  AsyncValue<List<MadinaContainerModel>> get list =>
      throw _privateConstructorUsedError;
  MadinaContainerParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of MadinaContainerListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MadinaContainerListStateCopyWith<MadinaContainerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MadinaContainerListStateCopyWith<$Res> {
  factory $MadinaContainerListStateCopyWith(MadinaContainerListState value,
          $Res Function(MadinaContainerListState) then) =
      _$MadinaContainerListStateCopyWithImpl<$Res, MadinaContainerListState>;
  @useResult
  $Res call(
      {AsyncValue<List<MadinaContainerModel>> list,
      MadinaContainerParamsModel params,
      bool isPageNotFound});

  $MadinaContainerParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$MadinaContainerListStateCopyWithImpl<$Res,
        $Val extends MadinaContainerListState>
    implements $MadinaContainerListStateCopyWith<$Res> {
  _$MadinaContainerListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MadinaContainerListState
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
              as AsyncValue<List<MadinaContainerModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as MadinaContainerParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MadinaContainerListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MadinaContainerParamsModelCopyWith<$Res> get params {
    return $MadinaContainerParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MadinaContainerListStateImplCopyWith<$Res>
    implements $MadinaContainerListStateCopyWith<$Res> {
  factory _$$MadinaContainerListStateImplCopyWith(
          _$MadinaContainerListStateImpl value,
          $Res Function(_$MadinaContainerListStateImpl) then) =
      __$$MadinaContainerListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<MadinaContainerModel>> list,
      MadinaContainerParamsModel params,
      bool isPageNotFound});

  @override
  $MadinaContainerParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$MadinaContainerListStateImplCopyWithImpl<$Res>
    extends _$MadinaContainerListStateCopyWithImpl<$Res,
        _$MadinaContainerListStateImpl>
    implements _$$MadinaContainerListStateImplCopyWith<$Res> {
  __$$MadinaContainerListStateImplCopyWithImpl(
      _$MadinaContainerListStateImpl _value,
      $Res Function(_$MadinaContainerListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MadinaContainerListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$MadinaContainerListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<MadinaContainerModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as MadinaContainerParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MadinaContainerListStateImpl implements _MadinaContainerListState {
  const _$MadinaContainerListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const MadinaContainerParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<MadinaContainerModel>> list;
  @override
  @JsonKey()
  final MadinaContainerParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'MadinaContainerListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MadinaContainerListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of MadinaContainerListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MadinaContainerListStateImplCopyWith<_$MadinaContainerListStateImpl>
      get copyWith => __$$MadinaContainerListStateImplCopyWithImpl<
          _$MadinaContainerListStateImpl>(this, _$identity);
}

abstract class _MadinaContainerListState implements MadinaContainerListState {
  const factory _MadinaContainerListState(
      {final AsyncValue<List<MadinaContainerModel>> list,
      final MadinaContainerParamsModel params,
      final bool isPageNotFound}) = _$MadinaContainerListStateImpl;

  @override
  AsyncValue<List<MadinaContainerModel>> get list;
  @override
  MadinaContainerParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of MadinaContainerListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MadinaContainerListStateImplCopyWith<_$MadinaContainerListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
