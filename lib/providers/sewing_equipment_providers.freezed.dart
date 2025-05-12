// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sewing_equipment_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SewingEquipmentListState {
  AsyncValue<List<SewingEquipmentModel>> get list =>
      throw _privateConstructorUsedError;
  SewingEquipmentParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of SewingEquipmentListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SewingEquipmentListStateCopyWith<SewingEquipmentListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SewingEquipmentListStateCopyWith<$Res> {
  factory $SewingEquipmentListStateCopyWith(SewingEquipmentListState value,
          $Res Function(SewingEquipmentListState) then) =
      _$SewingEquipmentListStateCopyWithImpl<$Res, SewingEquipmentListState>;
  @useResult
  $Res call(
      {AsyncValue<List<SewingEquipmentModel>> list,
      SewingEquipmentParamsModel params,
      bool isPageNotFound});

  $SewingEquipmentParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$SewingEquipmentListStateCopyWithImpl<$Res,
        $Val extends SewingEquipmentListState>
    implements $SewingEquipmentListStateCopyWith<$Res> {
  _$SewingEquipmentListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SewingEquipmentListState
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
              as AsyncValue<List<SewingEquipmentModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SewingEquipmentParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of SewingEquipmentListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SewingEquipmentParamsModelCopyWith<$Res> get params {
    return $SewingEquipmentParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SewingEquipmentListStateImplCopyWith<$Res>
    implements $SewingEquipmentListStateCopyWith<$Res> {
  factory _$$SewingEquipmentListStateImplCopyWith(
          _$SewingEquipmentListStateImpl value,
          $Res Function(_$SewingEquipmentListStateImpl) then) =
      __$$SewingEquipmentListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<SewingEquipmentModel>> list,
      SewingEquipmentParamsModel params,
      bool isPageNotFound});

  @override
  $SewingEquipmentParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$SewingEquipmentListStateImplCopyWithImpl<$Res>
    extends _$SewingEquipmentListStateCopyWithImpl<$Res,
        _$SewingEquipmentListStateImpl>
    implements _$$SewingEquipmentListStateImplCopyWith<$Res> {
  __$$SewingEquipmentListStateImplCopyWithImpl(
      _$SewingEquipmentListStateImpl _value,
      $Res Function(_$SewingEquipmentListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SewingEquipmentListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$SewingEquipmentListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SewingEquipmentModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SewingEquipmentParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SewingEquipmentListStateImpl implements _SewingEquipmentListState {
  const _$SewingEquipmentListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const SewingEquipmentParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<SewingEquipmentModel>> list;
  @override
  @JsonKey()
  final SewingEquipmentParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'SewingEquipmentListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SewingEquipmentListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of SewingEquipmentListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SewingEquipmentListStateImplCopyWith<_$SewingEquipmentListStateImpl>
      get copyWith => __$$SewingEquipmentListStateImplCopyWithImpl<
          _$SewingEquipmentListStateImpl>(this, _$identity);
}

abstract class _SewingEquipmentListState implements SewingEquipmentListState {
  const factory _SewingEquipmentListState(
      {final AsyncValue<List<SewingEquipmentModel>> list,
      final SewingEquipmentParamsModel params,
      final bool isPageNotFound}) = _$SewingEquipmentListStateImpl;

  @override
  AsyncValue<List<SewingEquipmentModel>> get list;
  @override
  SewingEquipmentParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of SewingEquipmentListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SewingEquipmentListStateImplCopyWith<_$SewingEquipmentListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
