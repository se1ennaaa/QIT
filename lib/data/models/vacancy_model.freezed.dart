// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vacancy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VacancyModel _$VacancyModelFromJson(Map<String, dynamic> json) {
  return _VacancyModel.fromJson(json);
}

/// @nodoc
mixin _$VacancyModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary')
  String? get salary => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;

  /// Serializes this VacancyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VacancyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VacancyModelCopyWith<VacancyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyModelCopyWith<$Res> {
  factory $VacancyModelCopyWith(
          VacancyModel value, $Res Function(VacancyModel) then) =
      _$VacancyModelCopyWithImpl<$Res, VacancyModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'salary') String? salary,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class _$VacancyModelCopyWithImpl<$Res, $Val extends VacancyModel>
    implements $VacancyModelCopyWith<$Res> {
  _$VacancyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VacancyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? salary = freezed,
    Object? address = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
abstract class _$$VacancyModelImplCopyWith<$Res>
    implements $VacancyModelCopyWith<$Res> {
  factory _$$VacancyModelImplCopyWith(
          _$VacancyModelImpl value, $Res Function(_$VacancyModelImpl) then) =
      __$$VacancyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'salary') String? salary,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class __$$VacancyModelImplCopyWithImpl<$Res>
    extends _$VacancyModelCopyWithImpl<$Res, _$VacancyModelImpl>
    implements _$$VacancyModelImplCopyWith<$Res> {
  __$$VacancyModelImplCopyWithImpl(
      _$VacancyModelImpl _value, $Res Function(_$VacancyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VacancyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? salary = freezed,
    Object? address = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$VacancyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
class _$VacancyModelImpl implements _VacancyModel {
  const _$VacancyModelImpl(
      {required this.id,
      @JsonKey(name: 'images') final List<String> images = const [],
      @JsonKey(name: 'title') this.name,
      @JsonKey(name: 'salary') this.salary,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false})
      : _images = images;

  factory _$VacancyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VacancyModelImplFromJson(json);

  @override
  final int id;
  final List<String> _images;
  @override
  @JsonKey(name: 'images')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'title')
  final String? name;
  @override
  @JsonKey(name: 'salary')
  final String? salary;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'status')
  final ModerationStatus? status;
  @override
  @JsonKey(name: 'isLike')
  final bool isLike;

  @override
  String toString() {
    return 'VacancyModel(id: $id, images: $images, name: $name, salary: $salary, address: $address, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VacancyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLike, isLike) || other.isLike == isLike));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      salary,
      address,
      status,
      isLike);

  /// Create a copy of VacancyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VacancyModelImplCopyWith<_$VacancyModelImpl> get copyWith =>
      __$$VacancyModelImplCopyWithImpl<_$VacancyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VacancyModelImplToJson(
      this,
    );
  }
}

abstract class _VacancyModel implements VacancyModel {
  const factory _VacancyModel(
      {required final int id,
      @JsonKey(name: 'images') final List<String> images,
      @JsonKey(name: 'title') final String? name,
      @JsonKey(name: 'salary') final String? salary,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike') final bool isLike}) = _$VacancyModelImpl;

  factory _VacancyModel.fromJson(Map<String, dynamic> json) =
      _$VacancyModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'title')
  String? get name;
  @override
  @JsonKey(name: 'salary')
  String? get salary;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'status')
  ModerationStatus? get status;
  @override
  @JsonKey(name: 'isLike')
  bool get isLike;

  /// Create a copy of VacancyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VacancyModelImplCopyWith<_$VacancyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VacancyParamsModel _$VacancyParamsModelFromJson(Map<String, dynamic> json) {
  return _PlayerQueryParams.fromJson(json);
}

/// @nodoc
mixin _$VacancyParamsModel {
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

  /// Serializes this VacancyParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VacancyParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VacancyParamsModelCopyWith<VacancyParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyParamsModelCopyWith<$Res> {
  factory $VacancyParamsModelCopyWith(
          VacancyParamsModel value, $Res Function(VacancyParamsModel) then) =
      _$VacancyParamsModelCopyWithImpl<$Res, VacancyParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'search') String? searchText,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'is_my') bool isMy,
      @JsonKey(name: 'is_favorites') bool isFavorites});
}

/// @nodoc
class _$VacancyParamsModelCopyWithImpl<$Res, $Val extends VacancyParamsModel>
    implements $VacancyParamsModelCopyWith<$Res> {
  _$VacancyParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VacancyParamsModel
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
    implements $VacancyParamsModelCopyWith<$Res> {
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
    extends _$VacancyParamsModelCopyWithImpl<$Res, _$PlayerQueryParamsImpl>
    implements _$$PlayerQueryParamsImplCopyWith<$Res> {
  __$$PlayerQueryParamsImplCopyWithImpl(_$PlayerQueryParamsImpl _value,
      $Res Function(_$PlayerQueryParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VacancyParamsModel
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
    return 'VacancyParamsModel(page: $page, searchText: $searchText, categoryId: $categoryId, isMy: $isMy, isFavorites: $isFavorites)';
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

  /// Create a copy of VacancyParamsModel
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

abstract class _PlayerQueryParams extends VacancyParamsModel {
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

  /// Create a copy of VacancyParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerQueryParamsImplCopyWith<_$PlayerQueryParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VacancyDetailsModel _$VacancyDetailsModelFromJson(Map<String, dynamic> json) {
  return _VacancyDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$VacancyDetailsModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_experience')
  String? get experience => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary')
  String? get salary => throw _privateConstructorUsedError;
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

  /// Serializes this VacancyDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VacancyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VacancyDetailsModelCopyWith<VacancyDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyDetailsModelCopyWith<$Res> {
  factory $VacancyDetailsModelCopyWith(
          VacancyDetailsModel value, $Res Function(VacancyDetailsModel) then) =
      _$VacancyDetailsModelCopyWithImpl<$Res, VacancyDetailsModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'work_experience') String? experience,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'salary') String? salary,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'publication_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class _$VacancyDetailsModelCopyWithImpl<$Res, $Val extends VacancyDetailsModel>
    implements $VacancyDetailsModelCopyWith<$Res> {
  _$VacancyDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VacancyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? experience = freezed,
    Object? address = freezed,
    Object? salary = freezed,
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
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
abstract class _$$VacancyDetailsModelImplCopyWith<$Res>
    implements $VacancyDetailsModelCopyWith<$Res> {
  factory _$$VacancyDetailsModelImplCopyWith(_$VacancyDetailsModelImpl value,
          $Res Function(_$VacancyDetailsModelImpl) then) =
      __$$VacancyDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'work_experience') String? experience,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'salary') String? salary,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'publication_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class __$$VacancyDetailsModelImplCopyWithImpl<$Res>
    extends _$VacancyDetailsModelCopyWithImpl<$Res, _$VacancyDetailsModelImpl>
    implements _$$VacancyDetailsModelImplCopyWith<$Res> {
  __$$VacancyDetailsModelImplCopyWithImpl(_$VacancyDetailsModelImpl _value,
      $Res Function(_$VacancyDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VacancyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? experience = freezed,
    Object? address = freezed,
    Object? salary = freezed,
    Object? description = freezed,
    Object? dateOfRegistration = freezed,
    Object? phoneNumber = freezed,
    Object? whatsappNumber = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$VacancyDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
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
class _$VacancyDetailsModelImpl extends _VacancyDetailsModel {
  const _$VacancyDetailsModelImpl(
      {required this.id,
      @JsonKey(name: 'images') final List<String> images = const [],
      @JsonKey(name: 'title') this.name,
      @JsonKey(name: 'work_experience') this.experience,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'salary') this.salary,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'publication_date') this.dateOfRegistration,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'whatsapp') this.whatsappNumber,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false})
      : _images = images,
        super._();

  factory _$VacancyDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VacancyDetailsModelImplFromJson(json);

  @override
  final int id;
  final List<String> _images;
  @override
  @JsonKey(name: 'images')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'title')
  final String? name;
  @override
  @JsonKey(name: 'work_experience')
  final String? experience;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'salary')
  final String? salary;
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
    return 'VacancyDetailsModel(id: $id, images: $images, name: $name, experience: $experience, address: $address, salary: $salary, description: $description, dateOfRegistration: $dateOfRegistration, phoneNumber: $phoneNumber, whatsappNumber: $whatsappNumber, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VacancyDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.salary, salary) || other.salary == salary) &&
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
      const DeepCollectionEquality().hash(_images),
      name,
      experience,
      address,
      salary,
      description,
      dateOfRegistration,
      phoneNumber,
      whatsappNumber,
      status,
      isLike);

  /// Create a copy of VacancyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VacancyDetailsModelImplCopyWith<_$VacancyDetailsModelImpl> get copyWith =>
      __$$VacancyDetailsModelImplCopyWithImpl<_$VacancyDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VacancyDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _VacancyDetailsModel extends VacancyDetailsModel {
  const factory _VacancyDetailsModel(
      {required final int id,
      @JsonKey(name: 'images') final List<String> images,
      @JsonKey(name: 'title') final String? name,
      @JsonKey(name: 'work_experience') final String? experience,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'salary') final String? salary,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'publication_date') final DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'whatsapp') final String? whatsappNumber,
      @JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike') final bool isLike}) = _$VacancyDetailsModelImpl;
  const _VacancyDetailsModel._() : super._();

  factory _VacancyDetailsModel.fromJson(Map<String, dynamic> json) =
      _$VacancyDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'title')
  String? get name;
  @override
  @JsonKey(name: 'work_experience')
  String? get experience;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'salary')
  String? get salary;
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

  /// Create a copy of VacancyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VacancyDetailsModelImplCopyWith<_$VacancyDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
