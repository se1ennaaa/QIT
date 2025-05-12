// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_management_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdManagementState {
  AdManagementStatus get status => throw _privateConstructorUsedError;
  DynamicFormModel get model => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AdManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdManagementStateCopyWith<AdManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdManagementStateCopyWith<$Res> {
  factory $AdManagementStateCopyWith(
          AdManagementState value, $Res Function(AdManagementState) then) =
      _$AdManagementStateCopyWithImpl<$Res, AdManagementState>;
  @useResult
  $Res call({AdManagementStatus status, DynamicFormModel model, String? error});

  $DynamicFormModelCopyWith<$Res> get model;
}

/// @nodoc
class _$AdManagementStateCopyWithImpl<$Res, $Val extends AdManagementState>
    implements $AdManagementStateCopyWith<$Res> {
  _$AdManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? model = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AdManagementStatus,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DynamicFormModel,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AdManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DynamicFormModelCopyWith<$Res> get model {
    return $DynamicFormModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdManagementStateImplCopyWith<$Res>
    implements $AdManagementStateCopyWith<$Res> {
  factory _$$AdManagementStateImplCopyWith(_$AdManagementStateImpl value,
          $Res Function(_$AdManagementStateImpl) then) =
      __$$AdManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdManagementStatus status, DynamicFormModel model, String? error});

  @override
  $DynamicFormModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$AdManagementStateImplCopyWithImpl<$Res>
    extends _$AdManagementStateCopyWithImpl<$Res, _$AdManagementStateImpl>
    implements _$$AdManagementStateImplCopyWith<$Res> {
  __$$AdManagementStateImplCopyWithImpl(_$AdManagementStateImpl _value,
      $Res Function(_$AdManagementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? model = null,
    Object? error = freezed,
  }) {
    return _then(_$AdManagementStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AdManagementStatus,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DynamicFormModel,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AdManagementStateImpl implements _AdManagementState {
  const _$AdManagementStateImpl(
      {this.status = AdManagementStatus.initial,
      this.model = const DynamicFormModel(),
      this.error});

  @override
  @JsonKey()
  final AdManagementStatus status;
  @override
  @JsonKey()
  final DynamicFormModel model;
  @override
  final String? error;

  @override
  String toString() {
    return 'AdManagementState(status: $status, model: $model, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdManagementStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, model, error);

  /// Create a copy of AdManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdManagementStateImplCopyWith<_$AdManagementStateImpl> get copyWith =>
      __$$AdManagementStateImplCopyWithImpl<_$AdManagementStateImpl>(
          this, _$identity);
}

abstract class _AdManagementState implements AdManagementState {
  const factory _AdManagementState(
      {final AdManagementStatus status,
      final DynamicFormModel model,
      final String? error}) = _$AdManagementStateImpl;

  @override
  AdManagementStatus get status;
  @override
  DynamicFormModel get model;
  @override
  String? get error;

  /// Create a copy of AdManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdManagementStateImplCopyWith<_$AdManagementStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
