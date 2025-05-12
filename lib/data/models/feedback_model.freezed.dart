// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedbackModel _$FeedbackModelFromJson(Map<String, dynamic> json) {
  return _FeedbackModel.fromJson(json);
}

/// @nodoc
mixin _$FeedbackModel {
  int get id => throw _privateConstructorUsedError;
  DateTime? get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_id')
  int? get typeId => throw _privateConstructorUsedError;

  /// Serializes this FeedbackModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackModelCopyWith<FeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackModelCopyWith<$Res> {
  factory $FeedbackModelCopyWith(
          FeedbackModel value, $Res Function(FeedbackModel) then) =
      _$FeedbackModelCopyWithImpl<$Res, FeedbackModel>;
  @useResult
  $Res call(
      {int id,
      DateTime? createAt,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'type_id') int? typeId});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$FeedbackModelCopyWithImpl<$Res, $Val extends FeedbackModel>
    implements $FeedbackModelCopyWith<$Res> {
  _$FeedbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = freezed,
    Object? text = freezed,
    Object? user = freezed,
    Object? rating = freezed,
    Object? type = freezed,
    Object? typeId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of FeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedbackModelImplCopyWith<$Res>
    implements $FeedbackModelCopyWith<$Res> {
  factory _$$FeedbackModelImplCopyWith(
          _$FeedbackModelImpl value, $Res Function(_$FeedbackModelImpl) then) =
      __$$FeedbackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime? createAt,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'type_id') int? typeId});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$FeedbackModelImplCopyWithImpl<$Res>
    extends _$FeedbackModelCopyWithImpl<$Res, _$FeedbackModelImpl>
    implements _$$FeedbackModelImplCopyWith<$Res> {
  __$$FeedbackModelImplCopyWithImpl(
      _$FeedbackModelImpl _value, $Res Function(_$FeedbackModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = freezed,
    Object? text = freezed,
    Object? user = freezed,
    Object? rating = freezed,
    Object? type = freezed,
    Object? typeId = freezed,
  }) {
    return _then(_$FeedbackModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackModelImpl implements _FeedbackModel {
  const _$FeedbackModelImpl(
      {required this.id,
      this.createAt,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'type_id') this.typeId});

  factory _$FeedbackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackModelImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime? createAt;
  @override
  @JsonKey(name: 'text')
  final String? text;
  @override
  @JsonKey(name: 'user')
  final UserModel? user;
  @override
  @JsonKey(name: 'rating')
  final double? rating;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'type_id')
  final int? typeId;

  @override
  String toString() {
    return 'FeedbackModel(id: $id, createAt: $createAt, text: $text, user: $user, rating: $rating, type: $type, typeId: $typeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeId, typeId) || other.typeId == typeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createAt, text, user, rating, type, typeId);

  /// Create a copy of FeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackModelImplCopyWith<_$FeedbackModelImpl> get copyWith =>
      __$$FeedbackModelImplCopyWithImpl<_$FeedbackModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackModelImplToJson(
      this,
    );
  }
}

abstract class _FeedbackModel implements FeedbackModel {
  const factory _FeedbackModel(
      {required final int id,
      final DateTime? createAt,
      @JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'user') final UserModel? user,
      @JsonKey(name: 'rating') final double? rating,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'type_id') final int? typeId}) = _$FeedbackModelImpl;

  factory _FeedbackModel.fromJson(Map<String, dynamic> json) =
      _$FeedbackModelImpl.fromJson;

  @override
  int get id;
  @override
  DateTime? get createAt;
  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'user')
  UserModel? get user;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'type_id')
  int? get typeId;

  /// Create a copy of FeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackModelImplCopyWith<_$FeedbackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedbackParamsModel _$FeedbackParamsModelFromJson(Map<String, dynamic> json) {
  return _FeedbackParamsModel.fromJson(json);
}

/// @nodoc
mixin _$FeedbackParamsModel {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_id')
  int? get typeId => throw _privateConstructorUsedError;

  /// Serializes this FeedbackParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackParamsModelCopyWith<FeedbackParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackParamsModelCopyWith<$Res> {
  factory $FeedbackParamsModelCopyWith(
          FeedbackParamsModel value, $Res Function(FeedbackParamsModel) then) =
      _$FeedbackParamsModelCopyWithImpl<$Res, FeedbackParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'type_id') int? typeId});
}

/// @nodoc
class _$FeedbackParamsModelCopyWithImpl<$Res, $Val extends FeedbackParamsModel>
    implements $FeedbackParamsModelCopyWith<$Res> {
  _$FeedbackParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? type = freezed,
    Object? typeId = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedbackParamsModelImplCopyWith<$Res>
    implements $FeedbackParamsModelCopyWith<$Res> {
  factory _$$FeedbackParamsModelImplCopyWith(_$FeedbackParamsModelImpl value,
          $Res Function(_$FeedbackParamsModelImpl) then) =
      __$$FeedbackParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'type_id') int? typeId});
}

/// @nodoc
class __$$FeedbackParamsModelImplCopyWithImpl<$Res>
    extends _$FeedbackParamsModelCopyWithImpl<$Res, _$FeedbackParamsModelImpl>
    implements _$$FeedbackParamsModelImplCopyWith<$Res> {
  __$$FeedbackParamsModelImplCopyWithImpl(_$FeedbackParamsModelImpl _value,
      $Res Function(_$FeedbackParamsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? type = freezed,
    Object? typeId = freezed,
  }) {
    return _then(_$FeedbackParamsModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackParamsModelImpl extends _FeedbackParamsModel {
  const _$FeedbackParamsModelImpl(
      {@JsonKey(name: 'page') this.page = 1,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'type_id') this.typeId})
      : super._();

  factory _$FeedbackParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackParamsModelImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'type_id')
  final int? typeId;

  @override
  String toString() {
    return 'FeedbackParamsModel(page: $page, type: $type, typeId: $typeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackParamsModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeId, typeId) || other.typeId == typeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, type, typeId);

  /// Create a copy of FeedbackParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackParamsModelImplCopyWith<_$FeedbackParamsModelImpl> get copyWith =>
      __$$FeedbackParamsModelImplCopyWithImpl<_$FeedbackParamsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackParamsModelImplToJson(
      this,
    );
  }
}

abstract class _FeedbackParamsModel extends FeedbackParamsModel {
  const factory _FeedbackParamsModel(
      {@JsonKey(name: 'page') final int page,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'type_id') final int? typeId}) = _$FeedbackParamsModelImpl;
  const _FeedbackParamsModel._() : super._();

  factory _FeedbackParamsModel.fromJson(Map<String, dynamic> json) =
      _$FeedbackParamsModelImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'type_id')
  int? get typeId;

  /// Create a copy of FeedbackParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackParamsModelImplCopyWith<_$FeedbackParamsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
