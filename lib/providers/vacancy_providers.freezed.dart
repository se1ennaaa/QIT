// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vacancy_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VacancyListState {
  AsyncValue<List<VacancyModel>> get list => throw _privateConstructorUsedError;
  VacancyParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of VacancyListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VacancyListStateCopyWith<VacancyListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyListStateCopyWith<$Res> {
  factory $VacancyListStateCopyWith(
          VacancyListState value, $Res Function(VacancyListState) then) =
      _$VacancyListStateCopyWithImpl<$Res, VacancyListState>;
  @useResult
  $Res call(
      {AsyncValue<List<VacancyModel>> list,
      VacancyParamsModel params,
      bool isPageNotFound});

  $VacancyParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$VacancyListStateCopyWithImpl<$Res, $Val extends VacancyListState>
    implements $VacancyListStateCopyWith<$Res> {
  _$VacancyListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VacancyListState
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
              as AsyncValue<List<VacancyModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as VacancyParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of VacancyListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VacancyParamsModelCopyWith<$Res> get params {
    return $VacancyParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VacancyListStateImplCopyWith<$Res>
    implements $VacancyListStateCopyWith<$Res> {
  factory _$$VacancyListStateImplCopyWith(_$VacancyListStateImpl value,
          $Res Function(_$VacancyListStateImpl) then) =
      __$$VacancyListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<VacancyModel>> list,
      VacancyParamsModel params,
      bool isPageNotFound});

  @override
  $VacancyParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$VacancyListStateImplCopyWithImpl<$Res>
    extends _$VacancyListStateCopyWithImpl<$Res, _$VacancyListStateImpl>
    implements _$$VacancyListStateImplCopyWith<$Res> {
  __$$VacancyListStateImplCopyWithImpl(_$VacancyListStateImpl _value,
      $Res Function(_$VacancyListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VacancyListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$VacancyListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<VacancyModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as VacancyParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VacancyListStateImpl implements _VacancyListState {
  const _$VacancyListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const VacancyParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<VacancyModel>> list;
  @override
  @JsonKey()
  final VacancyParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'VacancyListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VacancyListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of VacancyListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VacancyListStateImplCopyWith<_$VacancyListStateImpl> get copyWith =>
      __$$VacancyListStateImplCopyWithImpl<_$VacancyListStateImpl>(
          this, _$identity);
}

abstract class _VacancyListState implements VacancyListState {
  const factory _VacancyListState(
      {final AsyncValue<List<VacancyModel>> list,
      final VacancyParamsModel params,
      final bool isPageNotFound}) = _$VacancyListStateImpl;

  @override
  AsyncValue<List<VacancyModel>> get list;
  @override
  VacancyParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of VacancyListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VacancyListStateImplCopyWith<_$VacancyListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
