// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManagerListState {
  AsyncValue<List<ManagerModel>> get list => throw _privateConstructorUsedError;
  ManagerParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of ManagerListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagerListStateCopyWith<ManagerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerListStateCopyWith<$Res> {
  factory $ManagerListStateCopyWith(
          ManagerListState value, $Res Function(ManagerListState) then) =
      _$ManagerListStateCopyWithImpl<$Res, ManagerListState>;
  @useResult
  $Res call(
      {AsyncValue<List<ManagerModel>> list,
      ManagerParamsModel params,
      bool isPageNotFound});

  $ManagerParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$ManagerListStateCopyWithImpl<$Res, $Val extends ManagerListState>
    implements $ManagerListStateCopyWith<$Res> {
  _$ManagerListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerListState
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
              as AsyncValue<List<ManagerModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ManagerParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ManagerListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManagerParamsModelCopyWith<$Res> get params {
    return $ManagerParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ManagerListStateImplCopyWith<$Res>
    implements $ManagerListStateCopyWith<$Res> {
  factory _$$ManagerListStateImplCopyWith(_$ManagerListStateImpl value,
          $Res Function(_$ManagerListStateImpl) then) =
      __$$ManagerListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<ManagerModel>> list,
      ManagerParamsModel params,
      bool isPageNotFound});

  @override
  $ManagerParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$ManagerListStateImplCopyWithImpl<$Res>
    extends _$ManagerListStateCopyWithImpl<$Res, _$ManagerListStateImpl>
    implements _$$ManagerListStateImplCopyWith<$Res> {
  __$$ManagerListStateImplCopyWithImpl(_$ManagerListStateImpl _value,
      $Res Function(_$ManagerListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagerListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$ManagerListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ManagerModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ManagerParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ManagerListStateImpl implements _ManagerListState {
  const _$ManagerListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const ManagerParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<ManagerModel>> list;
  @override
  @JsonKey()
  final ManagerParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'ManagerListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of ManagerListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerListStateImplCopyWith<_$ManagerListStateImpl> get copyWith =>
      __$$ManagerListStateImplCopyWithImpl<_$ManagerListStateImpl>(
          this, _$identity);
}

abstract class _ManagerListState implements ManagerListState {
  const factory _ManagerListState(
      {final AsyncValue<List<ManagerModel>> list,
      final ManagerParamsModel params,
      final bool isPageNotFound}) = _$ManagerListStateImpl;

  @override
  AsyncValue<List<ManagerModel>> get list;
  @override
  ManagerParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of ManagerListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagerListStateImplCopyWith<_$ManagerListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
