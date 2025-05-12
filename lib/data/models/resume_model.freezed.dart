// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResumeModel _$ResumeModelFromJson(Map<String, dynamic> json) {
  return _ResumeModel.fromJson(json);
}

/// @nodoc
mixin _$ResumeModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'position')
  String? get jobTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_salary')
  String? get salary => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_key')
  String? get experience => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;

  /// Serializes this ResumeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResumeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResumeModelCopyWith<ResumeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeModelCopyWith<$Res> {
  factory $ResumeModelCopyWith(
          ResumeModel value, $Res Function(ResumeModel) then) =
      _$ResumeModelCopyWithImpl<$Res, ResumeModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'position') String? jobTitle,
      @JsonKey(name: 'expected_salary') String? salary,
      @JsonKey(name: 'experience_key') String? experience,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class _$ResumeModelCopyWithImpl<$Res, $Val extends ResumeModel>
    implements $ResumeModelCopyWith<$Res> {
  _$ResumeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResumeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jobTitle = freezed,
    Object? salary = freezed,
    Object? experience = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationStatus?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResumeModelImplCopyWith<$Res>
    implements $ResumeModelCopyWith<$Res> {
  factory _$$ResumeModelImplCopyWith(
          _$ResumeModelImpl value, $Res Function(_$ResumeModelImpl) then) =
      __$$ResumeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'position') String? jobTitle,
      @JsonKey(name: 'expected_salary') String? salary,
      @JsonKey(name: 'experience_key') String? experience,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class __$$ResumeModelImplCopyWithImpl<$Res>
    extends _$ResumeModelCopyWithImpl<$Res, _$ResumeModelImpl>
    implements _$$ResumeModelImplCopyWith<$Res> {
  __$$ResumeModelImplCopyWithImpl(
      _$ResumeModelImpl _value, $Res Function(_$ResumeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResumeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jobTitle = freezed,
    Object? salary = freezed,
    Object? experience = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$ResumeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationStatus?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeModelImpl implements _ResumeModel {
  const _$ResumeModelImpl(
      {required this.id,
      @JsonKey(name: 'position') this.jobTitle,
      @JsonKey(name: 'expected_salary') this.salary,
      @JsonKey(name: 'experience_key') this.experience,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false});

  factory _$ResumeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'position')
  final String? jobTitle;
  @override
  @JsonKey(name: 'expected_salary')
  final String? salary;
  @override
  @JsonKey(name: 'experience_key')
  final String? experience;
  @override
  @JsonKey(name: 'status')
  final ModerationStatus? status;
  @override
  @JsonKey(name: 'isLike')
  final bool isLike;

  @override
  String toString() {
    return 'ResumeModel(id: $id, jobTitle: $jobTitle, salary: $salary, experience: $experience, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLike, isLike) || other.isLike == isLike));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, jobTitle, salary, experience, status, isLike);

  /// Create a copy of ResumeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeModelImplCopyWith<_$ResumeModelImpl> get copyWith =>
      __$$ResumeModelImplCopyWithImpl<_$ResumeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeModelImplToJson(
      this,
    );
  }
}

abstract class _ResumeModel implements ResumeModel {
  const factory _ResumeModel(
      {required final int id,
      @JsonKey(name: 'position') final String? jobTitle,
      @JsonKey(name: 'expected_salary') final String? salary,
      @JsonKey(name: 'experience_key') final String? experience,
      @JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike') final bool isLike}) = _$ResumeModelImpl;

  factory _ResumeModel.fromJson(Map<String, dynamic> json) =
      _$ResumeModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'position')
  String? get jobTitle;
  @override
  @JsonKey(name: 'expected_salary')
  String? get salary;
  @override
  @JsonKey(name: 'experience_key')
  String? get experience;
  @override
  @JsonKey(name: 'status')
  ModerationStatus? get status;
  @override
  @JsonKey(name: 'isLike')
  bool get isLike;

  /// Create a copy of ResumeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResumeModelImplCopyWith<_$ResumeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResumeParamsModel _$ResumeParamsModelFromJson(Map<String, dynamic> json) {
  return _PlayerQueryParams.fromJson(json);
}

/// @nodoc
mixin _$ResumeParamsModel {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'search')
  String? get searchText => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_my')
  bool get isMy => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorites')
  bool get isFavorites => throw _privateConstructorUsedError;

  /// Serializes this ResumeParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResumeParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResumeParamsModelCopyWith<ResumeParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeParamsModelCopyWith<$Res> {
  factory $ResumeParamsModelCopyWith(
          ResumeParamsModel value, $Res Function(ResumeParamsModel) then) =
      _$ResumeParamsModelCopyWithImpl<$Res, ResumeParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'search') String? searchText,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'is_my') bool isMy,
      @JsonKey(name: 'is_favorites') bool isFavorites});
}

/// @nodoc
class _$ResumeParamsModelCopyWithImpl<$Res, $Val extends ResumeParamsModel>
    implements $ResumeParamsModelCopyWith<$Res> {
  _$ResumeParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResumeParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? searchText = freezed,
    Object? categoryId = freezed,
    Object? isMy = null,
    Object? isFavorites = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      isMy: null == isMy
          ? _value.isMy
          : isMy // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorites: null == isFavorites
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerQueryParamsImplCopyWith<$Res>
    implements $ResumeParamsModelCopyWith<$Res> {
  factory _$$PlayerQueryParamsImplCopyWith(_$PlayerQueryParamsImpl value,
          $Res Function(_$PlayerQueryParamsImpl) then) =
      __$$PlayerQueryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'search') String? searchText,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'is_my') bool isMy,
      @JsonKey(name: 'is_favorites') bool isFavorites});
}

/// @nodoc
class __$$PlayerQueryParamsImplCopyWithImpl<$Res>
    extends _$ResumeParamsModelCopyWithImpl<$Res, _$PlayerQueryParamsImpl>
    implements _$$PlayerQueryParamsImplCopyWith<$Res> {
  __$$PlayerQueryParamsImplCopyWithImpl(_$PlayerQueryParamsImpl _value,
      $Res Function(_$PlayerQueryParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResumeParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? searchText = freezed,
    Object? categoryId = freezed,
    Object? isMy = null,
    Object? isFavorites = null,
  }) {
    return _then(_$PlayerQueryParamsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      isMy: null == isMy
          ? _value.isMy
          : isMy // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorites: null == isFavorites
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerQueryParamsImpl extends _PlayerQueryParams {
  const _$PlayerQueryParamsImpl(
      {@JsonKey(name: 'page') this.page = 1,
      @JsonKey(name: 'search') this.searchText,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'is_my') this.isMy = false,
      @JsonKey(name: 'is_favorites') this.isFavorites = false})
      : super._();

  factory _$PlayerQueryParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerQueryParamsImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'search')
  final String? searchText;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'is_my')
  final bool isMy;
  @override
  @JsonKey(name: 'is_favorites')
  final bool isFavorites;

  @override
  String toString() {
    return 'ResumeParamsModel(page: $page, searchText: $searchText, categoryId: $categoryId, isMy: $isMy, isFavorites: $isFavorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerQueryParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.isMy, isMy) || other.isMy == isMy) &&
            (identical(other.isFavorites, isFavorites) ||
                other.isFavorites == isFavorites));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, searchText, categoryId, isMy, isFavorites);

  /// Create a copy of ResumeParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerQueryParamsImplCopyWith<_$PlayerQueryParamsImpl> get copyWith =>
      __$$PlayerQueryParamsImplCopyWithImpl<_$PlayerQueryParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerQueryParamsImplToJson(
      this,
    );
  }
}

abstract class _PlayerQueryParams extends ResumeParamsModel {
  const factory _PlayerQueryParams(
          {@JsonKey(name: 'page') final int page,
          @JsonKey(name: 'search') final String? searchText,
          @JsonKey(name: 'category_id') final int? categoryId,
          @JsonKey(name: 'is_my') final bool isMy,
          @JsonKey(name: 'is_favorites') final bool isFavorites}) =
      _$PlayerQueryParamsImpl;
  const _PlayerQueryParams._() : super._();

  factory _PlayerQueryParams.fromJson(Map<String, dynamic> json) =
      _$PlayerQueryParamsImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'search')
  String? get searchText;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'is_my')
  bool get isMy;
  @override
  @JsonKey(name: 'is_favorites')
  bool get isFavorites;

  /// Create a copy of ResumeParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerQueryParamsImplCopyWith<_$PlayerQueryParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResumeDetailsModel _$ResumeDetailsModelFromJson(Map<String, dynamic> json) {
  return _ResumeDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ResumeDetailsModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fio => throw _privateConstructorUsedError;
  @JsonKey(name: 'position')
  String? get jobTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_key')
  String? get experience => throw _privateConstructorUsedError;
  @JsonKey(name: 'age')
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_salary')
  String? get expectedSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'publication_date')
  DateTime? get dateOfRegistration => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp')
  String? get whatsappNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;

  /// Serializes this ResumeDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResumeDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResumeDetailsModelCopyWith<ResumeDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeDetailsModelCopyWith<$Res> {
  factory $ResumeDetailsModelCopyWith(
          ResumeDetailsModel value, $Res Function(ResumeDetailsModel) then) =
      _$ResumeDetailsModelCopyWithImpl<$Res, ResumeDetailsModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'full_name') String? fio,
      @JsonKey(name: 'position') String? jobTitle,
      @JsonKey(name: 'experience_key') String? experience,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'expected_salary') String? expectedSalary,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'publication_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class _$ResumeDetailsModelCopyWithImpl<$Res, $Val extends ResumeDetailsModel>
    implements $ResumeDetailsModelCopyWith<$Res> {
  _$ResumeDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResumeDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fio = freezed,
    Object? jobTitle = freezed,
    Object? experience = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? expectedSalary = freezed,
    Object? description = freezed,
    Object? dateOfRegistration = freezed,
    Object? phoneNumber = freezed,
    Object? whatsappNumber = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fio: freezed == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedSalary: freezed == expectedSalary
          ? _value.expectedSalary
          : expectedSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfRegistration: freezed == dateOfRegistration
          ? _value.dateOfRegistration
          : dateOfRegistration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappNumber: freezed == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationStatus?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResumeDetailsModelImplCopyWith<$Res>
    implements $ResumeDetailsModelCopyWith<$Res> {
  factory _$$ResumeDetailsModelImplCopyWith(_$ResumeDetailsModelImpl value,
          $Res Function(_$ResumeDetailsModelImpl) then) =
      __$$ResumeDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'full_name') String? fio,
      @JsonKey(name: 'position') String? jobTitle,
      @JsonKey(name: 'experience_key') String? experience,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'expected_salary') String? expectedSalary,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'publication_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class __$$ResumeDetailsModelImplCopyWithImpl<$Res>
    extends _$ResumeDetailsModelCopyWithImpl<$Res, _$ResumeDetailsModelImpl>
    implements _$$ResumeDetailsModelImplCopyWith<$Res> {
  __$$ResumeDetailsModelImplCopyWithImpl(_$ResumeDetailsModelImpl _value,
      $Res Function(_$ResumeDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResumeDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fio = freezed,
    Object? jobTitle = freezed,
    Object? experience = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? expectedSalary = freezed,
    Object? description = freezed,
    Object? dateOfRegistration = freezed,
    Object? phoneNumber = freezed,
    Object? whatsappNumber = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$ResumeDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fio: freezed == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedSalary: freezed == expectedSalary
          ? _value.expectedSalary
          : expectedSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfRegistration: freezed == dateOfRegistration
          ? _value.dateOfRegistration
          : dateOfRegistration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappNumber: freezed == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationStatus?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResumeDetailsModelImpl extends _ResumeDetailsModel {
  const _$ResumeDetailsModelImpl(
      {required this.id,
      @JsonKey(name: 'full_name') this.fio,
      @JsonKey(name: 'position') this.jobTitle,
      @JsonKey(name: 'experience_key') this.experience,
      @JsonKey(name: 'age') this.age,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'expected_salary') this.expectedSalary,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'publication_date') this.dateOfRegistration,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'whatsapp') this.whatsappNumber,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false})
      : super._();

  factory _$ResumeDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeDetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'full_name')
  final String? fio;
  @override
  @JsonKey(name: 'position')
  final String? jobTitle;
  @override
  @JsonKey(name: 'experience_key')
  final String? experience;
  @override
  @JsonKey(name: 'age')
  final int? age;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'expected_salary')
  final String? expectedSalary;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'publication_date')
  final DateTime? dateOfRegistration;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'whatsapp')
  final String? whatsappNumber;
  @override
  @JsonKey(name: 'status')
  final ModerationStatus? status;
  @override
  @JsonKey(name: 'isLike')
  final bool isLike;

  @override
  String toString() {
    return 'ResumeDetailsModel(id: $id, fio: $fio, jobTitle: $jobTitle, experience: $experience, age: $age, gender: $gender, expectedSalary: $expectedSalary, description: $description, dateOfRegistration: $dateOfRegistration, phoneNumber: $phoneNumber, whatsappNumber: $whatsappNumber, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fio, fio) || other.fio == fio) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.expectedSalary, expectedSalary) ||
                other.expectedSalary == expectedSalary) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dateOfRegistration, dateOfRegistration) ||
                other.dateOfRegistration == dateOfRegistration) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLike, isLike) || other.isLike == isLike));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fio,
      jobTitle,
      experience,
      age,
      gender,
      expectedSalary,
      description,
      dateOfRegistration,
      phoneNumber,
      whatsappNumber,
      status,
      isLike);

  /// Create a copy of ResumeDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeDetailsModelImplCopyWith<_$ResumeDetailsModelImpl> get copyWith =>
      __$$ResumeDetailsModelImplCopyWithImpl<_$ResumeDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ResumeDetailsModel extends ResumeDetailsModel {
  const factory _ResumeDetailsModel(
      {required final int id,
      @JsonKey(name: 'full_name') final String? fio,
      @JsonKey(name: 'position') final String? jobTitle,
      @JsonKey(name: 'experience_key') final String? experience,
      @JsonKey(name: 'age') final int? age,
      @JsonKey(name: 'gender') final String? gender,
      @JsonKey(name: 'expected_salary') final String? expectedSalary,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'publication_date') final DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'whatsapp') final String? whatsappNumber,
      @JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike') final bool isLike}) = _$ResumeDetailsModelImpl;
  const _ResumeDetailsModel._() : super._();

  factory _ResumeDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ResumeDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'full_name')
  String? get fio;
  @override
  @JsonKey(name: 'position')
  String? get jobTitle;
  @override
  @JsonKey(name: 'experience_key')
  String? get experience;
  @override
  @JsonKey(name: 'age')
  int? get age;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'expected_salary')
  String? get expectedSalary;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'publication_date')
  DateTime? get dateOfRegistration;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'whatsapp')
  String? get whatsappNumber;
  @override
  @JsonKey(name: 'status')
  ModerationStatus? get status;
  @override
  @JsonKey(name: 'isLike')
  bool get isLike;

  /// Create a copy of ResumeDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResumeDetailsModelImplCopyWith<_$ResumeDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
