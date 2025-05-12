// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_estate_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RealEstateListState {
  AsyncValue<List<RealEstateModel>> get list =>
      throw _privateConstructorUsedError;
  RealEstateParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of RealEstateListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RealEstateListStateCopyWith<RealEstateListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealEstateListStateCopyWith<$Res> {
  factory $RealEstateListStateCopyWith(
          RealEstateListState value, $Res Function(RealEstateListState) then) =
      _$RealEstateListStateCopyWithImpl<$Res, RealEstateListState>;
  @useResult
  $Res call(
      {AsyncValue<List<RealEstateModel>> list,
      RealEstateParamsModel params,
      bool isPageNotFound});

  $RealEstateParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$RealEstateListStateCopyWithImpl<$Res, $Val extends RealEstateListState>
    implements $RealEstateListStateCopyWith<$Res> {
  _$RealEstateListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RealEstateListState
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
              as AsyncValue<List<RealEstateModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as RealEstateParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of RealEstateListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RealEstateParamsModelCopyWith<$Res> get params {
    return $RealEstateParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RealEstateListStateImplCopyWith<$Res>
    implements $RealEstateListStateCopyWith<$Res> {
  factory _$$RealEstateListStateImplCopyWith(_$RealEstateListStateImpl value,
          $Res Function(_$RealEstateListStateImpl) then) =
      __$$RealEstateListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<RealEstateModel>> list,
      RealEstateParamsModel params,
      bool isPageNotFound});

  @override
  $RealEstateParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$RealEstateListStateImplCopyWithImpl<$Res>
    extends _$RealEstateListStateCopyWithImpl<$Res, _$RealEstateListStateImpl>
    implements _$$RealEstateListStateImplCopyWith<$Res> {
  __$$RealEstateListStateImplCopyWithImpl(_$RealEstateListStateImpl _value,
      $Res Function(_$RealEstateListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealEstateListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$RealEstateListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<RealEstateModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as RealEstateParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RealEstateListStateImpl implements _RealEstateListState {
  const _$RealEstateListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const RealEstateParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<RealEstateModel>> list;
  @override
  @JsonKey()
  final RealEstateParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'RealEstateListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealEstateListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of RealEstateListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealEstateListStateImplCopyWith<_$RealEstateListStateImpl> get copyWith =>
      __$$RealEstateListStateImplCopyWithImpl<_$RealEstateListStateImpl>(
          this, _$identity);
}

abstract class _RealEstateListState implements RealEstateListState {
  const factory _RealEstateListState(
      {final AsyncValue<List<RealEstateModel>> list,
      final RealEstateParamsModel params,
      final bool isPageNotFound}) = _$RealEstateListStateImpl;

  @override
  AsyncValue<List<RealEstateModel>> get list;
  @override
  RealEstateParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of RealEstateListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealEstateListStateImplCopyWith<_$RealEstateListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
