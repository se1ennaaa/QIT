// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_estate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RealEstateModel _$RealEstateModelFromJson(Map<String, dynamic> json) {
  return _RealEstateModel.fromJson(json);
}

/// @nodoc
mixin _$RealEstateModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'area')
  String? get area => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;

  /// Serializes this RealEstateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RealEstateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RealEstateModelCopyWith<RealEstateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealEstateModelCopyWith<$Res> {
  factory $RealEstateModelCopyWith(
          RealEstateModel value, $Res Function(RealEstateModel) then) =
      _$RealEstateModelCopyWithImpl<$Res, RealEstateModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'area') String? area,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class _$RealEstateModelCopyWithImpl<$Res, $Val extends RealEstateModel>
    implements $RealEstateModelCopyWith<$Res> {
  _$RealEstateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RealEstateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? price = freezed,
    Object? area = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RealEstateModelImplCopyWith<$Res>
    implements $RealEstateModelCopyWith<$Res> {
  factory _$$RealEstateModelImplCopyWith(_$RealEstateModelImpl value,
          $Res Function(_$RealEstateModelImpl) then) =
      __$$RealEstateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'area') String? area,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});
}

/// @nodoc
class __$$RealEstateModelImplCopyWithImpl<$Res>
    extends _$RealEstateModelCopyWithImpl<$Res, _$RealEstateModelImpl>
    implements _$$RealEstateModelImplCopyWith<$Res> {
  __$$RealEstateModelImplCopyWithImpl(
      _$RealEstateModelImpl _value, $Res Function(_$RealEstateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealEstateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? price = freezed,
    Object? area = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$RealEstateModelImpl(
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
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
class _$RealEstateModelImpl implements _RealEstateModel {
  const _$RealEstateModelImpl(
      {required this.id,
      @JsonKey(name: 'images') final List<String> images = const [],
      @JsonKey(name: 'title') this.name,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'area') this.area,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false})
      : _images = images;

  factory _$RealEstateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealEstateModelImplFromJson(json);

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
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'area')
  final String? area;
  @override
  @JsonKey(name: 'status')
  final ModerationStatus? status;
  @override
  @JsonKey(name: 'isLike')
  final bool isLike;

  @override
  String toString() {
    return 'RealEstateModel(id: $id, images: $images, name: $name, price: $price, area: $area, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealEstateModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.area, area) || other.area == area) &&
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
      price,
      area,
      status,
      isLike);

  /// Create a copy of RealEstateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealEstateModelImplCopyWith<_$RealEstateModelImpl> get copyWith =>
      __$$RealEstateModelImplCopyWithImpl<_$RealEstateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealEstateModelImplToJson(
      this,
    );
  }
}

abstract class _RealEstateModel implements RealEstateModel {
  const factory _RealEstateModel(
      {required final int id,
      @JsonKey(name: 'images') final List<String> images,
      @JsonKey(name: 'title') final String? name,
      @JsonKey(name: 'price') final int? price,
      @JsonKey(name: 'area') final String? area,
      @JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike') final bool isLike}) = _$RealEstateModelImpl;

  factory _RealEstateModel.fromJson(Map<String, dynamic> json) =
      _$RealEstateModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'title')
  String? get name;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'area')
  String? get area;
  @override
  @JsonKey(name: 'status')
  ModerationStatus? get status;
  @override
  @JsonKey(name: 'isLike')
  bool get isLike;

  /// Create a copy of RealEstateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealEstateModelImplCopyWith<_$RealEstateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RealEstateParamsModel _$RealEstateParamsModelFromJson(
    Map<String, dynamic> json) {
  return _PlayerQueryParams.fromJson(json);
}

/// @nodoc
mixin _$RealEstateParamsModel {
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

  /// Serializes this RealEstateParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RealEstateParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RealEstateParamsModelCopyWith<RealEstateParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealEstateParamsModelCopyWith<$Res> {
  factory $RealEstateParamsModelCopyWith(RealEstateParamsModel value,
          $Res Function(RealEstateParamsModel) then) =
      _$RealEstateParamsModelCopyWithImpl<$Res, RealEstateParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'search') String? searchText,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'is_my') bool isMy,
      @JsonKey(name: 'is_favorites') bool isFavorites});
}

/// @nodoc
class _$RealEstateParamsModelCopyWithImpl<$Res,
        $Val extends RealEstateParamsModel>
    implements $RealEstateParamsModelCopyWith<$Res> {
  _$RealEstateParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RealEstateParamsModel
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
    implements $RealEstateParamsModelCopyWith<$Res> {
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
    extends _$RealEstateParamsModelCopyWithImpl<$Res, _$PlayerQueryParamsImpl>
    implements _$$PlayerQueryParamsImplCopyWith<$Res> {
  __$$PlayerQueryParamsImplCopyWithImpl(_$PlayerQueryParamsImpl _value,
      $Res Function(_$PlayerQueryParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealEstateParamsModel
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
    return 'RealEstateParamsModel(page: $page, searchText: $searchText, categoryId: $categoryId, isMy: $isMy, isFavorites: $isFavorites)';
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

  /// Create a copy of RealEstateParamsModel
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

abstract class _PlayerQueryParams extends RealEstateParamsModel {
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

  /// Create a copy of RealEstateParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerQueryParamsImplCopyWith<_$PlayerQueryParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RealEstateDetailsModel _$RealEstateDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _RealEstateDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$RealEstateDetailsModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryModel? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'area')
  String? get area => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_consideration')
  String? get regionOfConsideration => throw _privateConstructorUsedError;
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

  /// Serializes this RealEstateDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RealEstateDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RealEstateDetailsModelCopyWith<RealEstateDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealEstateDetailsModelCopyWith<$Res> {
  factory $RealEstateDetailsModelCopyWith(RealEstateDetailsModel value,
          $Res Function(RealEstateDetailsModel) then) =
      _$RealEstateDetailsModelCopyWithImpl<$Res, RealEstateDetailsModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'area') String? area,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'region_consideration') String? regionOfConsideration,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'registration_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$RealEstateDetailsModelCopyWithImpl<$Res,
        $Val extends RealEstateDetailsModel>
    implements $RealEstateDetailsModelCopyWith<$Res> {
  _$RealEstateDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RealEstateDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? area = freezed,
    Object? price = freezed,
    Object? regionOfConsideration = freezed,
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
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      regionOfConsideration: freezed == regionOfConsideration
          ? _value.regionOfConsideration
          : regionOfConsideration // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of RealEstateDetailsModel
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
abstract class _$$RealEstateDetailsModelImplCopyWith<$Res>
    implements $RealEstateDetailsModelCopyWith<$Res> {
  factory _$$RealEstateDetailsModelImplCopyWith(
          _$RealEstateDetailsModelImpl value,
          $Res Function(_$RealEstateDetailsModelImpl) then) =
      __$$RealEstateDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'area') String? area,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'region_consideration') String? regionOfConsideration,
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
class __$$RealEstateDetailsModelImplCopyWithImpl<$Res>
    extends _$RealEstateDetailsModelCopyWithImpl<$Res,
        _$RealEstateDetailsModelImpl>
    implements _$$RealEstateDetailsModelImplCopyWith<$Res> {
  __$$RealEstateDetailsModelImplCopyWithImpl(
      _$RealEstateDetailsModelImpl _value,
      $Res Function(_$RealEstateDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealEstateDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? area = freezed,
    Object? price = freezed,
    Object? regionOfConsideration = freezed,
    Object? description = freezed,
    Object? dateOfRegistration = freezed,
    Object? phoneNumber = freezed,
    Object? whatsappNumber = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$RealEstateDetailsModelImpl(
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
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      regionOfConsideration: freezed == regionOfConsideration
          ? _value.regionOfConsideration
          : regionOfConsideration // ignore: cast_nullable_to_non_nullable
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
class _$RealEstateDetailsModelImpl extends _RealEstateDetailsModel {
  const _$RealEstateDetailsModelImpl(
      {required this.id,
      @JsonKey(name: 'images') final List<String> images = const [],
      @JsonKey(name: 'title') this.name,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'area') this.area,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'region_consideration') this.regionOfConsideration,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'registration_date') this.dateOfRegistration,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'whatsapp') this.whatsappNumber,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false})
      : _images = images,
        super._();

  factory _$RealEstateDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealEstateDetailsModelImplFromJson(json);

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
  @JsonKey(name: 'category')
  final CategoryModel? category;
  @override
  @JsonKey(name: 'area')
  final String? area;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'region_consideration')
  final String? regionOfConsideration;
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
    return 'RealEstateDetailsModel(id: $id, images: $images, name: $name, category: $category, area: $area, price: $price, regionOfConsideration: $regionOfConsideration, description: $description, dateOfRegistration: $dateOfRegistration, phoneNumber: $phoneNumber, whatsappNumber: $whatsappNumber, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealEstateDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.regionOfConsideration, regionOfConsideration) ||
                other.regionOfConsideration == regionOfConsideration) &&
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
      area,
      price,
      regionOfConsideration,
      description,
      dateOfRegistration,
      phoneNumber,
      whatsappNumber,
      status,
      isLike);

  /// Create a copy of RealEstateDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealEstateDetailsModelImplCopyWith<_$RealEstateDetailsModelImpl>
      get copyWith => __$$RealEstateDetailsModelImplCopyWithImpl<
          _$RealEstateDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealEstateDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _RealEstateDetailsModel extends RealEstateDetailsModel {
  const factory _RealEstateDetailsModel(
      {required final int id,
      @JsonKey(name: 'images') final List<String> images,
      @JsonKey(name: 'title') final String? name,
      @JsonKey(name: 'category') final CategoryModel? category,
      @JsonKey(name: 'area') final String? area,
      @JsonKey(name: 'price') final int? price,
      @JsonKey(name: 'region_consideration')
      final String? regionOfConsideration,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'registration_date') final DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'whatsapp') final String? whatsappNumber,
      @JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike')
      final bool isLike}) = _$RealEstateDetailsModelImpl;
  const _RealEstateDetailsModel._() : super._();

  factory _RealEstateDetailsModel.fromJson(Map<String, dynamic> json) =
      _$RealEstateDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'title')
  String? get name;
  @override
  @JsonKey(name: 'category')
  CategoryModel? get category;
  @override
  @JsonKey(name: 'area')
  String? get area;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'region_consideration')
  String? get regionOfConsideration;
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

  /// Create a copy of RealEstateDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealEstateDetailsModelImplCopyWith<_$RealEstateDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
