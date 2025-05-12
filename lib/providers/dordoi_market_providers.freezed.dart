// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dordoi_market_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DordoiContainerListState {
  AsyncValue<List<DordoiContainerModel>> get list =>
      throw _privateConstructorUsedError;
  DordoiContainerParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of DordoiContainerListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DordoiContainerListStateCopyWith<DordoiContainerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DordoiContainerListStateCopyWith<$Res> {
  factory $DordoiContainerListStateCopyWith(DordoiContainerListState value,
          $Res Function(DordoiContainerListState) then) =
      _$DordoiContainerListStateCopyWithImpl<$Res, DordoiContainerListState>;
  @useResult
  $Res call(
      {AsyncValue<List<DordoiContainerModel>> list,
      DordoiContainerParamsModel params,
      bool isPageNotFound});

  $DordoiContainerParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$DordoiContainerListStateCopyWithImpl<$Res,
        $Val extends DordoiContainerListState>
    implements $DordoiContainerListStateCopyWith<$Res> {
  _$DordoiContainerListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DordoiContainerListState
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
              as AsyncValue<List<DordoiContainerModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DordoiContainerParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of DordoiContainerListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DordoiContainerParamsModelCopyWith<$Res> get params {
    return $DordoiContainerParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DordoiContainerListStateImplCopyWith<$Res>
    implements $DordoiContainerListStateCopyWith<$Res> {
  factory _$$DordoiContainerListStateImplCopyWith(
          _$DordoiContainerListStateImpl value,
          $Res Function(_$DordoiContainerListStateImpl) then) =
      __$$DordoiContainerListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<DordoiContainerModel>> list,
      DordoiContainerParamsModel params,
      bool isPageNotFound});

  @override
  $DordoiContainerParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$DordoiContainerListStateImplCopyWithImpl<$Res>
    extends _$DordoiContainerListStateCopyWithImpl<$Res,
        _$DordoiContainerListStateImpl>
    implements _$$DordoiContainerListStateImplCopyWith<$Res> {
  __$$DordoiContainerListStateImplCopyWithImpl(
      _$DordoiContainerListStateImpl _value,
      $Res Function(_$DordoiContainerListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DordoiContainerListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$DordoiContainerListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<DordoiContainerModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DordoiContainerParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DordoiContainerListStateImpl implements _DordoiContainerListState {
  const _$DordoiContainerListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const DordoiContainerParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<DordoiContainerModel>> list;
  @override
  @JsonKey()
  final DordoiContainerParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'DordoiContainerListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DordoiContainerListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of DordoiContainerListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DordoiContainerListStateImplCopyWith<_$DordoiContainerListStateImpl>
      get copyWith => __$$DordoiContainerListStateImplCopyWithImpl<
          _$DordoiContainerListStateImpl>(this, _$identity);
}

abstract class _DordoiContainerListState implements DordoiContainerListState {
  const factory _DordoiContainerListState(
      {final AsyncValue<List<DordoiContainerModel>> list,
      final DordoiContainerParamsModel params,
      final bool isPageNotFound}) = _$DordoiContainerListStateImpl;

  @override
  AsyncValue<List<DordoiContainerModel>> get list;
  @override
  DordoiContainerParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of DordoiContainerListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DordoiContainerListStateImplCopyWith<_$DordoiContainerListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
