// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedbackListState {
  AsyncValue<List<FeedbackModel>> get list =>
      throw _privateConstructorUsedError;
  FeedbackParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackListStateCopyWith<FeedbackListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackListStateCopyWith<$Res> {
  factory $FeedbackListStateCopyWith(
          FeedbackListState value, $Res Function(FeedbackListState) then) =
      _$FeedbackListStateCopyWithImpl<$Res, FeedbackListState>;
  @useResult
  $Res call(
      {AsyncValue<List<FeedbackModel>> list,
      FeedbackParamsModel params,
      bool isPageNotFound});

  $FeedbackParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$FeedbackListStateCopyWithImpl<$Res, $Val extends FeedbackListState>
    implements $FeedbackListStateCopyWith<$Res> {
  _$FeedbackListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackListState
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
              as AsyncValue<List<FeedbackModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as FeedbackParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of FeedbackListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackParamsModelCopyWith<$Res> get params {
    return $FeedbackParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedbackListStateImplCopyWith<$Res>
    implements $FeedbackListStateCopyWith<$Res> {
  factory _$$FeedbackListStateImplCopyWith(_$FeedbackListStateImpl value,
          $Res Function(_$FeedbackListStateImpl) then) =
      __$$FeedbackListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<FeedbackModel>> list,
      FeedbackParamsModel params,
      bool isPageNotFound});

  @override
  $FeedbackParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$FeedbackListStateImplCopyWithImpl<$Res>
    extends _$FeedbackListStateCopyWithImpl<$Res, _$FeedbackListStateImpl>
    implements _$$FeedbackListStateImplCopyWith<$Res> {
  __$$FeedbackListStateImplCopyWithImpl(_$FeedbackListStateImpl _value,
      $Res Function(_$FeedbackListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$FeedbackListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<FeedbackModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as FeedbackParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FeedbackListStateImpl implements _FeedbackListState {
  const _$FeedbackListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const FeedbackParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<FeedbackModel>> list;
  @override
  @JsonKey()
  final FeedbackParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'FeedbackListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of FeedbackListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackListStateImplCopyWith<_$FeedbackListStateImpl> get copyWith =>
      __$$FeedbackListStateImplCopyWithImpl<_$FeedbackListStateImpl>(
          this, _$identity);
}

abstract class _FeedbackListState implements FeedbackListState {
  const factory _FeedbackListState(
      {final AsyncValue<List<FeedbackModel>> list,
      final FeedbackParamsModel params,
      final bool isPageNotFound}) = _$FeedbackListStateImpl;

  @override
  AsyncValue<List<FeedbackModel>> get list;
  @override
  FeedbackParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of FeedbackListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackListStateImplCopyWith<_$FeedbackListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
