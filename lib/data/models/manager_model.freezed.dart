// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManagerModel _$ManagerModelFromJson(Map<String, dynamic> json) {
  return _ManagerModel.fromJson(json);
}

/// @nodoc
mixin _$ManagerModel {
  int get id => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get fio => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_key')
  String? get experience => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;

  /// Serializes this ManagerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManagerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagerModelCopyWith<ManagerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerModelCopyWith<$Res> {
  factory $ManagerModelCopyWith(
          ManagerModel value, $Res Function(ManagerModel) then) =
      _$ManagerModelCopyWithImpl<$Res, ManagerModel>;
  @useResult
  $Res call(
      {int id,
      List<String> images,
      String? image,
      @JsonKey(name: 'name') String? fio,
      @JsonKey(name: 'experience_key') String? experience,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class _$ManagerModelCopyWithImpl<$Res, $Val extends ManagerModel>
    implements $ManagerModelCopyWith<$Res> {
  _$ManagerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? image = freezed,
    Object? fio = freezed,
    Object? experience = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      fio: freezed == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ManagerModelImplCopyWith<$Res>
    implements $ManagerModelCopyWith<$Res> {
  factory _$$ManagerModelImplCopyWith(
          _$ManagerModelImpl value, $Res Function(_$ManagerModelImpl) then) =
      __$$ManagerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<String> images,
      String? image,
      @JsonKey(name: 'name') String? fio,
      @JsonKey(name: 'experience_key') String? experience,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class __$$ManagerModelImplCopyWithImpl<$Res>
    extends _$ManagerModelCopyWithImpl<$Res, _$ManagerModelImpl>
    implements _$$ManagerModelImplCopyWith<$Res> {
  __$$ManagerModelImplCopyWithImpl(
      _$ManagerModelImpl _value, $Res Function(_$ManagerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? image = freezed,
    Object? fio = freezed,
    Object? experience = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$ManagerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      fio: freezed == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
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
class _$ManagerModelImpl implements _ManagerModel {
  const _$ManagerModelImpl(
      {required this.id,
      final List<String> images = const [],
      this.image,
      @JsonKey(name: 'name') this.fio,
      @JsonKey(name: 'experience_key') this.experience,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false})
      : _images = images;

  factory _$ManagerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagerModelImplFromJson(json);

  @override
  final int id;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? image;
  @override
  @JsonKey(name: 'name')
  final String? fio;
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
    return 'ManagerModel(id: $id, images: $images, image: $image, fio: $fio, experience: $experience, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.fio, fio) || other.fio == fio) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLike, isLike) || other.isLike == isLike));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_images),
      image,
      fio,
      experience,
      status,
      isLike);

  /// Create a copy of ManagerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerModelImplCopyWith<_$ManagerModelImpl> get copyWith =>
      __$$ManagerModelImplCopyWithImpl<_$ManagerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManagerModelImplToJson(
      this,
    );
  }
}

abstract class _ManagerModel implements ManagerModel {
  const factory _ManagerModel(
      {required final int id,
      final List<String> images,
      final String? image,
      @JsonKey(name: 'name') final String? fio,
      @JsonKey(name: 'experience_key') final String? experience,
      @JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike') final bool isLike}) = _$ManagerModelImpl;

  factory _ManagerModel.fromJson(Map<String, dynamic> json) =
      _$ManagerModelImpl.fromJson;

  @override
  int get id;
  @override
  List<String> get images;
  @override
  String? get image;
  @override
  @JsonKey(name: 'name')
  String? get fio;
  @override
  @JsonKey(name: 'experience_key')
  String? get experience;
  @override
  @JsonKey(name: 'status')
  ModerationStatus? get status;
  @override
  @JsonKey(name: 'isLike')
  bool get isLike;

  /// Create a copy of ManagerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagerModelImplCopyWith<_$ManagerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ManagerParamsModel _$ManagerParamsModelFromJson(Map<String, dynamic> json) {
  return _PlayerQueryParams.fromJson(json);
}

/// @nodoc
mixin _$ManagerParamsModel {
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

  /// Serializes this ManagerParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManagerParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagerParamsModelCopyWith<ManagerParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerParamsModelCopyWith<$Res> {
  factory $ManagerParamsModelCopyWith(
          ManagerParamsModel value, $Res Function(ManagerParamsModel) then) =
      _$ManagerParamsModelCopyWithImpl<$Res, ManagerParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'search') String? searchText,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'is_my') bool isMy,
      @JsonKey(name: 'is_favorites') bool isFavorites});
}

/// @nodoc
class _$ManagerParamsModelCopyWithImpl<$Res, $Val extends ManagerParamsModel>
    implements $ManagerParamsModelCopyWith<$Res> {
  _$ManagerParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerParamsModel
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
    implements $ManagerParamsModelCopyWith<$Res> {
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
    extends _$ManagerParamsModelCopyWithImpl<$Res, _$PlayerQueryParamsImpl>
    implements _$$PlayerQueryParamsImplCopyWith<$Res> {
  __$$PlayerQueryParamsImplCopyWithImpl(_$PlayerQueryParamsImpl _value,
      $Res Function(_$PlayerQueryParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagerParamsModel
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
    return 'ManagerParamsModel(page: $page, searchText: $searchText, categoryId: $categoryId, isMy: $isMy, isFavorites: $isFavorites)';
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

  /// Create a copy of ManagerParamsModel
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

abstract class _PlayerQueryParams extends ManagerParamsModel {
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

  /// Create a copy of ManagerParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerQueryParamsImplCopyWith<_$PlayerQueryParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ManagerDetailsModel _$ManagerDetailsModelFromJson(Map<String, dynamic> json) {
  return _ManagerDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ManagerDetailsModel {
  int get id =>
      throw _privateConstructorUsedError; // @Default([]) @JsonKey(name: 'images') final List<String> images,
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get fio => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_key')
  String? get experience => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'publication_date')
  DateTime? get dateOfRegistration => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp')
  String? get whatsappNumber => throw _privateConstructorUsedError;

  /// Serializes this ManagerDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManagerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagerDetailsModelCopyWith<ManagerDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerDetailsModelCopyWith<$Res> {
  factory $ManagerDetailsModelCopyWith(
          ManagerDetailsModel value, $Res Function(ManagerDetailsModel) then) =
      _$ManagerDetailsModelCopyWithImpl<$Res, ManagerDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String? image,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike,
      @JsonKey(name: 'name') String? fio,
      @JsonKey(name: 'experience_key') String? experience,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'publication_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber});
}

/// @nodoc
class _$ManagerDetailsModelCopyWithImpl<$Res, $Val extends ManagerDetailsModel>
    implements $ManagerDetailsModelCopyWith<$Res> {
  _$ManagerDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? status = freezed,
    Object? isLike = null,
    Object? fio = freezed,
    Object? experience = freezed,
    Object? description = freezed,
    Object? dateOfRegistration = freezed,
    Object? phoneNumber = freezed,
    Object? whatsappNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationStatus?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      fio: freezed == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManagerDetailsModelImplCopyWith<$Res>
    implements $ManagerDetailsModelCopyWith<$Res> {
  factory _$$ManagerDetailsModelImplCopyWith(_$ManagerDetailsModelImpl value,
          $Res Function(_$ManagerDetailsModelImpl) then) =
      __$$ManagerDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? image,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike,
      @JsonKey(name: 'name') String? fio,
      @JsonKey(name: 'experience_key') String? experience,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'publication_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber});
}

/// @nodoc
class __$$ManagerDetailsModelImplCopyWithImpl<$Res>
    extends _$ManagerDetailsModelCopyWithImpl<$Res, _$ManagerDetailsModelImpl>
    implements _$$ManagerDetailsModelImplCopyWith<$Res> {
  __$$ManagerDetailsModelImplCopyWithImpl(_$ManagerDetailsModelImpl _value,
      $Res Function(_$ManagerDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? status = freezed,
    Object? isLike = null,
    Object? fio = freezed,
    Object? experience = freezed,
    Object? description = freezed,
    Object? dateOfRegistration = freezed,
    Object? phoneNumber = freezed,
    Object? whatsappNumber = freezed,
  }) {
    return _then(_$ManagerDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationStatus?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      fio: freezed == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagerDetailsModelImpl extends _ManagerDetailsModel {
  const _$ManagerDetailsModelImpl(
      {required this.id,
      this.image,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false,
      @JsonKey(name: 'name') this.fio,
      @JsonKey(name: 'experience_key') this.experience,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'publication_date') this.dateOfRegistration,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'whatsapp') this.whatsappNumber})
      : super._();

  factory _$ManagerDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagerDetailsModelImplFromJson(json);

  @override
  final int id;
// @Default([]) @JsonKey(name: 'images') final List<String> images,
  @override
  final String? image;
  @override
  @JsonKey(name: 'status')
  final ModerationStatus? status;
  @override
  @JsonKey(name: 'isLike')
  final bool isLike;
  @override
  @JsonKey(name: 'name')
  final String? fio;
  @override
  @JsonKey(name: 'experience_key')
  final String? experience;
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
  String toString() {
    return 'ManagerDetailsModel(id: $id, image: $image, status: $status, isLike: $isLike, fio: $fio, experience: $experience, description: $description, dateOfRegistration: $dateOfRegistration, phoneNumber: $phoneNumber, whatsappNumber: $whatsappNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.fio, fio) || other.fio == fio) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dateOfRegistration, dateOfRegistration) ||
                other.dateOfRegistration == dateOfRegistration) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, status, isLike, fio,
      experience, description, dateOfRegistration, phoneNumber, whatsappNumber);

  /// Create a copy of ManagerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerDetailsModelImplCopyWith<_$ManagerDetailsModelImpl> get copyWith =>
      __$$ManagerDetailsModelImplCopyWithImpl<_$ManagerDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManagerDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ManagerDetailsModel extends ManagerDetailsModel {
  const factory _ManagerDetailsModel(
          {required final int id,
          final String? image,
          @JsonKey(name: 'status') final ModerationStatus? status,
          @JsonKey(name: 'isLike') final bool isLike,
          @JsonKey(name: 'name') final String? fio,
          @JsonKey(name: 'experience_key') final String? experience,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'publication_date') final DateTime? dateOfRegistration,
          @JsonKey(name: 'phone_number') final String? phoneNumber,
          @JsonKey(name: 'whatsapp') final String? whatsappNumber}) =
      _$ManagerDetailsModelImpl;
  const _ManagerDetailsModel._() : super._();

  factory _ManagerDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ManagerDetailsModelImpl.fromJson;

  @override
  int get id; // @Default([]) @JsonKey(name: 'images') final List<String> images,
  @override
  String? get image;
  @override
  @JsonKey(name: 'status')
  ModerationStatus? get status;
  @override
  @JsonKey(name: 'isLike')
  bool get isLike;
  @override
  @JsonKey(name: 'name')
  String? get fio;
  @override
  @JsonKey(name: 'experience_key')
  String? get experience;
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

  /// Create a copy of ManagerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagerDetailsModelImplCopyWith<_$ManagerDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
