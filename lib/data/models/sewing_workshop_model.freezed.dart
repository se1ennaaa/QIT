// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sewing_workshop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SewingWorkshopModel _$SewingWorkshopModelFromJson(Map<String, dynamic> json) {
  return _SewingWorkshopModel.fromJson(json);
}

/// @nodoc
mixin _$SewingWorkshopModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryModel? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;

  /// Serializes this SewingWorkshopModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SewingWorkshopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SewingWorkshopModelCopyWith<SewingWorkshopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SewingWorkshopModelCopyWith<$Res> {
  factory $SewingWorkshopModelCopyWith(
          SewingWorkshopModel value, $Res Function(SewingWorkshopModel) then) =
      _$SewingWorkshopModelCopyWithImpl<$Res, SewingWorkshopModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$SewingWorkshopModelCopyWithImpl<$Res, $Val extends SewingWorkshopModel>
    implements $SewingWorkshopModelCopyWith<$Res> {
  _$SewingWorkshopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SewingWorkshopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? rating = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
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

  /// Create a copy of SewingWorkshopModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SewingWorkshopModelImplCopyWith<$Res>
    implements $SewingWorkshopModelCopyWith<$Res> {
  factory _$$SewingWorkshopModelImplCopyWith(_$SewingWorkshopModelImpl value,
          $Res Function(_$SewingWorkshopModelImpl) then) =
      __$$SewingWorkshopModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$SewingWorkshopModelImplCopyWithImpl<$Res>
    extends _$SewingWorkshopModelCopyWithImpl<$Res, _$SewingWorkshopModelImpl>
    implements _$$SewingWorkshopModelImplCopyWith<$Res> {
  __$$SewingWorkshopModelImplCopyWithImpl(_$SewingWorkshopModelImpl _value,
      $Res Function(_$SewingWorkshopModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SewingWorkshopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? rating = freezed,
    Object? address = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$SewingWorkshopModelImpl(
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$SewingWorkshopModelImpl implements _SewingWorkshopModel {
  const _$SewingWorkshopModelImpl(
      {required this.id,
      @JsonKey(name: 'images') final List<String> images = const [],
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false})
      : _images = images;

  factory _$SewingWorkshopModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SewingWorkshopModelImplFromJson(json);

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
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'category')
  final CategoryModel? category;
  @override
  @JsonKey(name: 'rating')
  final double? rating;
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
    return 'SewingWorkshopModel(id: $id, images: $images, name: $name, category: $category, rating: $rating, address: $address, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SewingWorkshopModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.rating, rating) || other.rating == rating) &&
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
      category,
      rating,
      address,
      status,
      isLike);

  /// Create a copy of SewingWorkshopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SewingWorkshopModelImplCopyWith<_$SewingWorkshopModelImpl> get copyWith =>
      __$$SewingWorkshopModelImplCopyWithImpl<_$SewingWorkshopModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SewingWorkshopModelImplToJson(
      this,
    );
  }
}

abstract class _SewingWorkshopModel implements SewingWorkshopModel {
  const factory _SewingWorkshopModel(
      {required final int id,
      @JsonKey(name: 'images') final List<String> images,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'category') final CategoryModel? category,
      @JsonKey(name: 'rating') final double? rating,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike') final bool isLike}) = _$SewingWorkshopModelImpl;

  factory _SewingWorkshopModel.fromJson(Map<String, dynamic> json) =
      _$SewingWorkshopModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'category')
  CategoryModel? get category;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'status')
  ModerationStatus? get status;
  @override
  @JsonKey(name: 'isLike')
  bool get isLike;

  /// Create a copy of SewingWorkshopModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SewingWorkshopModelImplCopyWith<_$SewingWorkshopModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SewingWorkshopParamsModel _$SewingWorkshopParamsModelFromJson(
    Map<String, dynamic> json) {
  return _SewingWorkshopParamsModel.fromJson(json);
}

/// @nodoc
mixin _$SewingWorkshopParamsModel {
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

  /// Serializes this SewingWorkshopParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SewingWorkshopParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SewingWorkshopParamsModelCopyWith<SewingWorkshopParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SewingWorkshopParamsModelCopyWith<$Res> {
  factory $SewingWorkshopParamsModelCopyWith(SewingWorkshopParamsModel value,
          $Res Function(SewingWorkshopParamsModel) then) =
      _$SewingWorkshopParamsModelCopyWithImpl<$Res, SewingWorkshopParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'search') String? searchText,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'is_my') bool isMy,
      @JsonKey(name: 'is_favorites') bool isFavorites});
}

/// @nodoc
class _$SewingWorkshopParamsModelCopyWithImpl<$Res,
        $Val extends SewingWorkshopParamsModel>
    implements $SewingWorkshopParamsModelCopyWith<$Res> {
  _$SewingWorkshopParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SewingWorkshopParamsModel
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
abstract class _$$SewingWorkshopParamsModelImplCopyWith<$Res>
    implements $SewingWorkshopParamsModelCopyWith<$Res> {
  factory _$$SewingWorkshopParamsModelImplCopyWith(
          _$SewingWorkshopParamsModelImpl value,
          $Res Function(_$SewingWorkshopParamsModelImpl) then) =
      __$$SewingWorkshopParamsModelImplCopyWithImpl<$Res>;
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
class __$$SewingWorkshopParamsModelImplCopyWithImpl<$Res>
    extends _$SewingWorkshopParamsModelCopyWithImpl<$Res,
        _$SewingWorkshopParamsModelImpl>
    implements _$$SewingWorkshopParamsModelImplCopyWith<$Res> {
  __$$SewingWorkshopParamsModelImplCopyWithImpl(
      _$SewingWorkshopParamsModelImpl _value,
      $Res Function(_$SewingWorkshopParamsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SewingWorkshopParamsModel
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
    return _then(_$SewingWorkshopParamsModelImpl(
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
class _$SewingWorkshopParamsModelImpl extends _SewingWorkshopParamsModel {
  const _$SewingWorkshopParamsModelImpl(
      {@JsonKey(name: 'page') this.page = 1,
      @JsonKey(name: 'search') this.searchText,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'is_my') this.isMy = false,
      @JsonKey(name: 'is_favorites') this.isFavorites = false})
      : super._();

  factory _$SewingWorkshopParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SewingWorkshopParamsModelImplFromJson(json);

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
    return 'SewingWorkshopParamsModel(page: $page, searchText: $searchText, categoryId: $categoryId, isMy: $isMy, isFavorites: $isFavorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SewingWorkshopParamsModelImpl &&
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

  /// Create a copy of SewingWorkshopParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SewingWorkshopParamsModelImplCopyWith<_$SewingWorkshopParamsModelImpl>
      get copyWith => __$$SewingWorkshopParamsModelImplCopyWithImpl<
          _$SewingWorkshopParamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SewingWorkshopParamsModelImplToJson(
      this,
    );
  }
}

abstract class _SewingWorkshopParamsModel extends SewingWorkshopParamsModel {
  const factory _SewingWorkshopParamsModel(
          {@JsonKey(name: 'page') final int page,
          @JsonKey(name: 'search') final String? searchText,
          @JsonKey(name: 'category_id') final int? categoryId,
          @JsonKey(name: 'is_my') final bool isMy,
          @JsonKey(name: 'is_favorites') final bool isFavorites}) =
      _$SewingWorkshopParamsModelImpl;
  const _SewingWorkshopParamsModel._() : super._();

  factory _SewingWorkshopParamsModel.fromJson(Map<String, dynamic> json) =
      _$SewingWorkshopParamsModelImpl.fromJson;

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

  /// Create a copy of SewingWorkshopParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SewingWorkshopParamsModelImplCopyWith<_$SewingWorkshopParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SewingWorkshopDetailsModel _$SewingWorkshopDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _SewingWorkshopDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$SewingWorkshopDetailsModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryModel? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'ratings_count')
  int? get ratingsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_capacity')
  String? get productiveCapacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_service_life')
  String? get productionExperience => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_date')
  DateTime? get dateOfRegistration => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp')
  String? get whatsappNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;

  /// Serializes this SewingWorkshopDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SewingWorkshopDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SewingWorkshopDetailsModelCopyWith<SewingWorkshopDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SewingWorkshopDetailsModelCopyWith<$Res> {
  factory $SewingWorkshopDetailsModelCopyWith(SewingWorkshopDetailsModel value,
          $Res Function(SewingWorkshopDetailsModel) then) =
      _$SewingWorkshopDetailsModelCopyWithImpl<$Res,
          SewingWorkshopDetailsModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'ratings_count') int? ratingsCount,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'production_capacity') String? productiveCapacity,
      @JsonKey(name: 'production_service_life') String? productionExperience,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'registration_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$SewingWorkshopDetailsModelCopyWithImpl<$Res,
        $Val extends SewingWorkshopDetailsModel>
    implements $SewingWorkshopDetailsModelCopyWith<$Res> {
  _$SewingWorkshopDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SewingWorkshopDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? rating = freezed,
    Object? ratingsCount = freezed,
    Object? address = freezed,
    Object? productiveCapacity = freezed,
    Object? productionExperience = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingsCount: freezed == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      productiveCapacity: freezed == productiveCapacity
          ? _value.productiveCapacity
          : productiveCapacity // ignore: cast_nullable_to_non_nullable
              as String?,
      productionExperience: freezed == productionExperience
          ? _value.productionExperience
          : productionExperience // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of SewingWorkshopDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SewingWorkshopDetailsModelImplCopyWith<$Res>
    implements $SewingWorkshopDetailsModelCopyWith<$Res> {
  factory _$$SewingWorkshopDetailsModelImplCopyWith(
          _$SewingWorkshopDetailsModelImpl value,
          $Res Function(_$SewingWorkshopDetailsModelImpl) then) =
      __$$SewingWorkshopDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'ratings_count') int? ratingsCount,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'production_capacity') String? productiveCapacity,
      @JsonKey(name: 'production_service_life') String? productionExperience,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'registration_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$SewingWorkshopDetailsModelImplCopyWithImpl<$Res>
    extends _$SewingWorkshopDetailsModelCopyWithImpl<$Res,
        _$SewingWorkshopDetailsModelImpl>
    implements _$$SewingWorkshopDetailsModelImplCopyWith<$Res> {
  __$$SewingWorkshopDetailsModelImplCopyWithImpl(
      _$SewingWorkshopDetailsModelImpl _value,
      $Res Function(_$SewingWorkshopDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SewingWorkshopDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? rating = freezed,
    Object? ratingsCount = freezed,
    Object? address = freezed,
    Object? productiveCapacity = freezed,
    Object? productionExperience = freezed,
    Object? description = freezed,
    Object? dateOfRegistration = freezed,
    Object? phoneNumber = freezed,
    Object? whatsappNumber = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$SewingWorkshopDetailsModelImpl(
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingsCount: freezed == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      productiveCapacity: freezed == productiveCapacity
          ? _value.productiveCapacity
          : productiveCapacity // ignore: cast_nullable_to_non_nullable
              as String?,
      productionExperience: freezed == productionExperience
          ? _value.productionExperience
          : productionExperience // ignore: cast_nullable_to_non_nullable
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
class _$SewingWorkshopDetailsModelImpl extends _SewingWorkshopDetailsModel {
  const _$SewingWorkshopDetailsModelImpl(
      {required this.id,
      @JsonKey(name: 'images') final List<String> images = const [],
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'ratings_count') this.ratingsCount,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'production_capacity') this.productiveCapacity,
      @JsonKey(name: 'production_service_life') this.productionExperience,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'registration_date') this.dateOfRegistration,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'whatsapp') this.whatsappNumber,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false})
      : _images = images,
        super._();

  factory _$SewingWorkshopDetailsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SewingWorkshopDetailsModelImplFromJson(json);

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
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'category')
  final CategoryModel? category;
  @override
  @JsonKey(name: 'rating')
  final double? rating;
  @override
  @JsonKey(name: 'ratings_count')
  final int? ratingsCount;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'production_capacity')
  final String? productiveCapacity;
  @override
  @JsonKey(name: 'production_service_life')
  final String? productionExperience;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'registration_date')
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
    return 'SewingWorkshopDetailsModel(id: $id, images: $images, name: $name, category: $category, rating: $rating, ratingsCount: $ratingsCount, address: $address, productiveCapacity: $productiveCapacity, productionExperience: $productionExperience, description: $description, dateOfRegistration: $dateOfRegistration, phoneNumber: $phoneNumber, whatsappNumber: $whatsappNumber, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SewingWorkshopDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingsCount, ratingsCount) ||
                other.ratingsCount == ratingsCount) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.productiveCapacity, productiveCapacity) ||
                other.productiveCapacity == productiveCapacity) &&
            (identical(other.productionExperience, productionExperience) ||
                other.productionExperience == productionExperience) &&
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
      category,
      rating,
      ratingsCount,
      address,
      productiveCapacity,
      productionExperience,
      description,
      dateOfRegistration,
      phoneNumber,
      whatsappNumber,
      status,
      isLike);

  /// Create a copy of SewingWorkshopDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SewingWorkshopDetailsModelImplCopyWith<_$SewingWorkshopDetailsModelImpl>
      get copyWith => __$$SewingWorkshopDetailsModelImplCopyWithImpl<
          _$SewingWorkshopDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SewingWorkshopDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _SewingWorkshopDetailsModel extends SewingWorkshopDetailsModel {
  const factory _SewingWorkshopDetailsModel(
      {required final int id,
      @JsonKey(name: 'images') final List<String> images,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'category') final CategoryModel? category,
      @JsonKey(name: 'rating') final double? rating,
      @JsonKey(name: 'ratings_count') final int? ratingsCount,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'production_capacity') final String? productiveCapacity,
      @JsonKey(name: 'production_service_life')
      final String? productionExperience,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'registration_date') final DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'whatsapp') final String? whatsappNumber,
      @JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike')
      final bool isLike}) = _$SewingWorkshopDetailsModelImpl;
  const _SewingWorkshopDetailsModel._() : super._();

  factory _SewingWorkshopDetailsModel.fromJson(Map<String, dynamic> json) =
      _$SewingWorkshopDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'category')
  CategoryModel? get category;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(name: 'ratings_count')
  int? get ratingsCount;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'production_capacity')
  String? get productiveCapacity;
  @override
  @JsonKey(name: 'production_service_life')
  String? get productionExperience;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'registration_date')
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

  /// Create a copy of SewingWorkshopDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SewingWorkshopDetailsModelImplCopyWith<_$SewingWorkshopDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
