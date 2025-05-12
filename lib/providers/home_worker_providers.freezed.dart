// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_worker_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeWorkerListState {
  AsyncValue<List<HomeWorkerModel>> get list =>
      throw _privateConstructorUsedError;
  HomeWorkerParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of HomeWorkerListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeWorkerListStateCopyWith<HomeWorkerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWorkerListStateCopyWith<$Res> {
  factory $HomeWorkerListStateCopyWith(
          HomeWorkerListState value, $Res Function(HomeWorkerListState) then) =
      _$HomeWorkerListStateCopyWithImpl<$Res, HomeWorkerListState>;
  @useResult
  $Res call(
      {AsyncValue<List<HomeWorkerModel>> list,
      HomeWorkerParamsModel params,
      bool isPageNotFound});

  $HomeWorkerParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$HomeWorkerListStateCopyWithImpl<$Res, $Val extends HomeWorkerListState>
    implements $HomeWorkerListStateCopyWith<$Res> {
  _$HomeWorkerListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeWorkerListState
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
              as AsyncValue<List<HomeWorkerModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as HomeWorkerParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of HomeWorkerListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeWorkerParamsModelCopyWith<$Res> get params {
    return $HomeWorkerParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeWorkerListStateImplCopyWith<$Res>
    implements $HomeWorkerListStateCopyWith<$Res> {
  factory _$$HomeWorkerListStateImplCopyWith(_$HomeWorkerListStateImpl value,
          $Res Function(_$HomeWorkerListStateImpl) then) =
      __$$HomeWorkerListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<HomeWorkerModel>> list,
      HomeWorkerParamsModel params,
      bool isPageNotFound});

  @override
  $HomeWorkerParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$HomeWorkerListStateImplCopyWithImpl<$Res>
    extends _$HomeWorkerListStateCopyWithImpl<$Res, _$HomeWorkerListStateImpl>
    implements _$$HomeWorkerListStateImplCopyWith<$Res> {
  __$$HomeWorkerListStateImplCopyWithImpl(_$HomeWorkerListStateImpl _value,
      $Res Function(_$HomeWorkerListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeWorkerListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$HomeWorkerListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<HomeWorkerModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as HomeWorkerParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeWorkerListStateImpl implements _HomeWorkerListState {
  const _$HomeWorkerListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const HomeWorkerParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<HomeWorkerModel>> list;
  @override
  @JsonKey()
  final HomeWorkerParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'HomeWorkerListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeWorkerListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of HomeWorkerListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeWorkerListStateImplCopyWith<_$HomeWorkerListStateImpl> get copyWith =>
      __$$HomeWorkerListStateImplCopyWithImpl<_$HomeWorkerListStateImpl>(
          this, _$identity);
}

abstract class _HomeWorkerListState implements HomeWorkerListState {
  const factory _HomeWorkerListState(
      {final AsyncValue<List<HomeWorkerModel>> list,
      final HomeWorkerParamsModel params,
      final bool isPageNotFound}) = _$HomeWorkerListStateImpl;

  @override
  AsyncValue<List<HomeWorkerModel>> get list;
  @override
  HomeWorkerParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of HomeWorkerListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeWorkerListStateImplCopyWith<_$HomeWorkerListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
