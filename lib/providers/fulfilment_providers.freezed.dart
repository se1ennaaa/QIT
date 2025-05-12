// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fulfilment_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FulfilmentListState {
  AsyncValue<List<FulfilmentModel>> get list =>
      throw _privateConstructorUsedError;
  FulfilmentParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of FulfilmentListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FulfilmentListStateCopyWith<FulfilmentListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FulfilmentListStateCopyWith<$Res> {
  factory $FulfilmentListStateCopyWith(
          FulfilmentListState value, $Res Function(FulfilmentListState) then) =
      _$FulfilmentListStateCopyWithImpl<$Res, FulfilmentListState>;
  @useResult
  $Res call(
      {AsyncValue<List<FulfilmentModel>> list,
      FulfilmentParamsModel params,
      bool isPageNotFound});

  $FulfilmentParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$FulfilmentListStateCopyWithImpl<$Res, $Val extends FulfilmentListState>
    implements $FulfilmentListStateCopyWith<$Res> {
  _$FulfilmentListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FulfilmentListState
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
              as AsyncValue<List<FulfilmentModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as FulfilmentParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of FulfilmentListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FulfilmentParamsModelCopyWith<$Res> get params {
    return $FulfilmentParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FulfilmentListStateImplCopyWith<$Res>
    implements $FulfilmentListStateCopyWith<$Res> {
  factory _$$FulfilmentListStateImplCopyWith(_$FulfilmentListStateImpl value,
          $Res Function(_$FulfilmentListStateImpl) then) =
      __$$FulfilmentListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<FulfilmentModel>> list,
      FulfilmentParamsModel params,
      bool isPageNotFound});

  @override
  $FulfilmentParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$FulfilmentListStateImplCopyWithImpl<$Res>
    extends _$FulfilmentListStateCopyWithImpl<$Res, _$FulfilmentListStateImpl>
    implements _$$FulfilmentListStateImplCopyWith<$Res> {
  __$$FulfilmentListStateImplCopyWithImpl(_$FulfilmentListStateImpl _value,
      $Res Function(_$FulfilmentListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FulfilmentListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$FulfilmentListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<FulfilmentModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as FulfilmentParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FulfilmentListStateImpl implements _FulfilmentListState {
  const _$FulfilmentListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const FulfilmentParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<FulfilmentModel>> list;
  @override
  @JsonKey()
  final FulfilmentParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'FulfilmentListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FulfilmentListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of FulfilmentListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FulfilmentListStateImplCopyWith<_$FulfilmentListStateImpl> get copyWith =>
      __$$FulfilmentListStateImplCopyWithImpl<_$FulfilmentListStateImpl>(
          this, _$identity);
}

abstract class _FulfilmentListState implements FulfilmentListState {
  const factory _FulfilmentListState(
      {final AsyncValue<List<FulfilmentModel>> list,
      final FulfilmentParamsModel params,
      final bool isPageNotFound}) = _$FulfilmentListStateImpl;

  @override
  AsyncValue<List<FulfilmentModel>> get list;
  @override
  FulfilmentParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of FulfilmentListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FulfilmentListStateImplCopyWith<_$FulfilmentListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
