// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceListState {
  AsyncValue<List<ServiceModel>> get list => throw _privateConstructorUsedError;
  ServiceParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of ServiceListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceListStateCopyWith<ServiceListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceListStateCopyWith<$Res> {
  factory $ServiceListStateCopyWith(
          ServiceListState value, $Res Function(ServiceListState) then) =
      _$ServiceListStateCopyWithImpl<$Res, ServiceListState>;
  @useResult
  $Res call(
      {AsyncValue<List<ServiceModel>> list,
      ServiceParamsModel params,
      bool isPageNotFound});

  $ServiceParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$ServiceListStateCopyWithImpl<$Res, $Val extends ServiceListState>
    implements $ServiceListStateCopyWith<$Res> {
  _$ServiceListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceListState
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
              as AsyncValue<List<ServiceModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ServiceParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ServiceListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceParamsModelCopyWith<$Res> get params {
    return $ServiceParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceListStateImplCopyWith<$Res>
    implements $ServiceListStateCopyWith<$Res> {
  factory _$$ServiceListStateImplCopyWith(_$ServiceListStateImpl value,
          $Res Function(_$ServiceListStateImpl) then) =
      __$$ServiceListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<ServiceModel>> list,
      ServiceParamsModel params,
      bool isPageNotFound});

  @override
  $ServiceParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$ServiceListStateImplCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res, _$ServiceListStateImpl>
    implements _$$ServiceListStateImplCopyWith<$Res> {
  __$$ServiceListStateImplCopyWithImpl(_$ServiceListStateImpl _value,
      $Res Function(_$ServiceListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$ServiceListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ServiceModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ServiceParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceListStateImpl implements _ServiceListState {
  const _$ServiceListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const ServiceParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<ServiceModel>> list;
  @override
  @JsonKey()
  final ServiceParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'ServiceListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of ServiceListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceListStateImplCopyWith<_$ServiceListStateImpl> get copyWith =>
      __$$ServiceListStateImplCopyWithImpl<_$ServiceListStateImpl>(
          this, _$identity);
}

abstract class _ServiceListState implements ServiceListState {
  const factory _ServiceListState(
      {final AsyncValue<List<ServiceModel>> list,
      final ServiceParamsModel params,
      final bool isPageNotFound}) = _$ServiceListStateImpl;

  @override
  AsyncValue<List<ServiceModel>> get list;
  @override
  ServiceParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of ServiceListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceListStateImplCopyWith<_$ServiceListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
