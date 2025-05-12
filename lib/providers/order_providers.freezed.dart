// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderListState {
  AsyncValue<List<OrderModel>> get list => throw _privateConstructorUsedError;
  OrderParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of OrderListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderListStateCopyWith<OrderListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListStateCopyWith<$Res> {
  factory $OrderListStateCopyWith(
          OrderListState value, $Res Function(OrderListState) then) =
      _$OrderListStateCopyWithImpl<$Res, OrderListState>;
  @useResult
  $Res call(
      {AsyncValue<List<OrderModel>> list,
      OrderParamsModel params,
      bool isPageNotFound});

  $OrderParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$OrderListStateCopyWithImpl<$Res, $Val extends OrderListState>
    implements $OrderListStateCopyWith<$Res> {
  _$OrderListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderListState
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
              as AsyncValue<List<OrderModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as OrderParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of OrderListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderParamsModelCopyWith<$Res> get params {
    return $OrderParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderListStateImplCopyWith<$Res>
    implements $OrderListStateCopyWith<$Res> {
  factory _$$OrderListStateImplCopyWith(_$OrderListStateImpl value,
          $Res Function(_$OrderListStateImpl) then) =
      __$$OrderListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<OrderModel>> list,
      OrderParamsModel params,
      bool isPageNotFound});

  @override
  $OrderParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$OrderListStateImplCopyWithImpl<$Res>
    extends _$OrderListStateCopyWithImpl<$Res, _$OrderListStateImpl>
    implements _$$OrderListStateImplCopyWith<$Res> {
  __$$OrderListStateImplCopyWithImpl(
      _$OrderListStateImpl _value, $Res Function(_$OrderListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$OrderListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<OrderModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as OrderParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OrderListStateImpl implements _OrderListState {
  const _$OrderListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const OrderParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<OrderModel>> list;
  @override
  @JsonKey()
  final OrderParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'OrderListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of OrderListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListStateImplCopyWith<_$OrderListStateImpl> get copyWith =>
      __$$OrderListStateImplCopyWithImpl<_$OrderListStateImpl>(
          this, _$identity);
}

abstract class _OrderListState implements OrderListState {
  const factory _OrderListState(
      {final AsyncValue<List<OrderModel>> list,
      final OrderParamsModel params,
      final bool isPageNotFound}) = _$OrderListStateImpl;

  @override
  AsyncValue<List<OrderModel>> get list;
  @override
  OrderParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of OrderListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderListStateImplCopyWith<_$OrderListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
