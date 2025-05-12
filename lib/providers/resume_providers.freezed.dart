// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResumeListState {
  AsyncValue<List<ResumeModel>> get list => throw _privateConstructorUsedError;
  ResumeParamsModel get params => throw _privateConstructorUsedError;
  bool get isPageNotFound => throw _privateConstructorUsedError;

  /// Create a copy of ResumeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResumeListStateCopyWith<ResumeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeListStateCopyWith<$Res> {
  factory $ResumeListStateCopyWith(
          ResumeListState value, $Res Function(ResumeListState) then) =
      _$ResumeListStateCopyWithImpl<$Res, ResumeListState>;
  @useResult
  $Res call(
      {AsyncValue<List<ResumeModel>> list,
      ResumeParamsModel params,
      bool isPageNotFound});

  $ResumeParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class _$ResumeListStateCopyWithImpl<$Res, $Val extends ResumeListState>
    implements $ResumeListStateCopyWith<$Res> {
  _$ResumeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResumeListState
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
              as AsyncValue<List<ResumeModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ResumeParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ResumeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResumeParamsModelCopyWith<$Res> get params {
    return $ResumeParamsModelCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResumeListStateImplCopyWith<$Res>
    implements $ResumeListStateCopyWith<$Res> {
  factory _$$ResumeListStateImplCopyWith(_$ResumeListStateImpl value,
          $Res Function(_$ResumeListStateImpl) then) =
      __$$ResumeListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<ResumeModel>> list,
      ResumeParamsModel params,
      bool isPageNotFound});

  @override
  $ResumeParamsModelCopyWith<$Res> get params;
}

/// @nodoc
class __$$ResumeListStateImplCopyWithImpl<$Res>
    extends _$ResumeListStateCopyWithImpl<$Res, _$ResumeListStateImpl>
    implements _$$ResumeListStateImplCopyWith<$Res> {
  __$$ResumeListStateImplCopyWithImpl(
      _$ResumeListStateImpl _value, $Res Function(_$ResumeListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResumeListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? params = null,
    Object? isPageNotFound = null,
  }) {
    return _then(_$ResumeListStateImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<ResumeModel>>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ResumeParamsModel,
      isPageNotFound: null == isPageNotFound
          ? _value.isPageNotFound
          : isPageNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ResumeListStateImpl implements _ResumeListState {
  const _$ResumeListStateImpl(
      {this.list = const AsyncValue.loading(),
      this.params = const ResumeParamsModel(),
      this.isPageNotFound = false});

  @override
  @JsonKey()
  final AsyncValue<List<ResumeModel>> list;
  @override
  @JsonKey()
  final ResumeParamsModel params;
  @override
  @JsonKey()
  final bool isPageNotFound;

  @override
  String toString() {
    return 'ResumeListState(list: $list, params: $params, isPageNotFound: $isPageNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeListStateImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.isPageNotFound, isPageNotFound) ||
                other.isPageNotFound == isPageNotFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, params, isPageNotFound);

  /// Create a copy of ResumeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeListStateImplCopyWith<_$ResumeListStateImpl> get copyWith =>
      __$$ResumeListStateImplCopyWithImpl<_$ResumeListStateImpl>(
          this, _$identity);
}

abstract class _ResumeListState implements ResumeListState {
  const factory _ResumeListState(
      {final AsyncValue<List<ResumeModel>> list,
      final ResumeParamsModel params,
      final bool isPageNotFound}) = _$ResumeListStateImpl;

  @override
  AsyncValue<List<ResumeModel>> get list;
  @override
  ResumeParamsModel get params;
  @override
  bool get isPageNotFound;

  /// Create a copy of ResumeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResumeListStateImplCopyWith<_$ResumeListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
