// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sewing_equipment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SewingEquipmentModel _$SewingEquipmentModelFromJson(Map<String, dynamic> json) {
  return _SewingEquipmentModel.fromJson(json);
}

/// @nodoc
mixin _$SewingEquipmentModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryModel? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;

  /// Serializes this SewingEquipmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SewingEquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SewingEquipmentModelCopyWith<SewingEquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SewingEquipmentModelCopyWith<$Res> {
  factory $SewingEquipmentModelCopyWith(SewingEquipmentModel value,
          $Res Function(SewingEquipmentModel) then) =
      _$SewingEquipmentModelCopyWithImpl<$Res, SewingEquipmentModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$SewingEquipmentModelCopyWithImpl<$Res,
        $Val extends SewingEquipmentModel>
    implements $SewingEquipmentModelCopyWith<$Res> {
  _$SewingEquipmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SewingEquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? price = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
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

  /// Create a copy of SewingEquipmentModel
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
abstract class _$$SewingEquipmentModelImplCopyWith<$Res>
    implements $SewingEquipmentModelCopyWith<$Res> {
  factory _$$SewingEquipmentModelImplCopyWith(_$SewingEquipmentModelImpl value,
          $Res Function(_$SewingEquipmentModelImpl) then) =
      __$$SewingEquipmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$SewingEquipmentModelImplCopyWithImpl<$Res>
    extends _$SewingEquipmentModelCopyWithImpl<$Res, _$SewingEquipmentModelImpl>
    implements _$$SewingEquipmentModelImplCopyWith<$Res> {
  __$$SewingEquipmentModelImplCopyWithImpl(_$SewingEquipmentModelImpl _value,
      $Res Function(_$SewingEquipmentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SewingEquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$SewingEquipmentModelImpl(
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$SewingEquipmentModelImpl implements _SewingEquipmentModel {
  const _$SewingEquipmentModelImpl(
      {required this.id,
      @JsonKey(name: 'images') final List<String> images = const [],
      @JsonKey(name: 'title') this.name,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false})
      : _images = images;

  factory _$SewingEquipmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SewingEquipmentModelImplFromJson(json);

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
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'status')
  final ModerationStatus? status;
  @override
  @JsonKey(name: 'isLike')
  final bool isLike;

  @override
  String toString() {
    return 'SewingEquipmentModel(id: $id, images: $images, name: $name, category: $category, price: $price, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SewingEquipmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
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
      price,
      status,
      isLike);

  /// Create a copy of SewingEquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SewingEquipmentModelImplCopyWith<_$SewingEquipmentModelImpl>
      get copyWith =>
          __$$SewingEquipmentModelImplCopyWithImpl<_$SewingEquipmentModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SewingEquipmentModelImplToJson(
      this,
    );
  }
}

abstract class _SewingEquipmentModel implements SewingEquipmentModel {
  const factory _SewingEquipmentModel(
      {required final int id,
      @JsonKey(name: 'images') final List<String> images,
      @JsonKey(name: 'title') final String? name,
      @JsonKey(name: 'category') final CategoryModel? category,
      @JsonKey(name: 'price') final int? price,
      @JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike') final bool isLike}) = _$SewingEquipmentModelImpl;

  factory _SewingEquipmentModel.fromJson(Map<String, dynamic> json) =
      _$SewingEquipmentModelImpl.fromJson;

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
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'status')
  ModerationStatus? get status;
  @override
  @JsonKey(name: 'isLike')
  bool get isLike;

  /// Create a copy of SewingEquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SewingEquipmentModelImplCopyWith<_$SewingEquipmentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SewingEquipmentParamsModel _$SewingEquipmentParamsModelFromJson(
    Map<String, dynamic> json) {
  return _PlayerQueryParams.fromJson(json);
}

/// @nodoc
mixin _$SewingEquipmentParamsModel {
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

  /// Serializes this SewingEquipmentParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SewingEquipmentParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SewingEquipmentParamsModelCopyWith<SewingEquipmentParamsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SewingEquipmentParamsModelCopyWith<$Res> {
  factory $SewingEquipmentParamsModelCopyWith(SewingEquipmentParamsModel value,
          $Res Function(SewingEquipmentParamsModel) then) =
      _$SewingEquipmentParamsModelCopyWithImpl<$Res,
          SewingEquipmentParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'search') String? searchText,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'is_my') bool isMy,
      @JsonKey(name: 'is_favorites') bool isFavorites});
}

/// @nodoc
class _$SewingEquipmentParamsModelCopyWithImpl<$Res,
        $Val extends SewingEquipmentParamsModel>
    implements $SewingEquipmentParamsModelCopyWith<$Res> {
  _$SewingEquipmentParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SewingEquipmentParamsModel
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
    implements $SewingEquipmentParamsModelCopyWith<$Res> {
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
    extends _$SewingEquipmentParamsModelCopyWithImpl<$Res,
        _$PlayerQueryParamsImpl>
    implements _$$PlayerQueryParamsImplCopyWith<$Res> {
  __$$PlayerQueryParamsImplCopyWithImpl(_$PlayerQueryParamsImpl _value,
      $Res Function(_$PlayerQueryParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SewingEquipmentParamsModel
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
    return 'SewingEquipmentParamsModel(page: $page, searchText: $searchText, categoryId: $categoryId, isMy: $isMy, isFavorites: $isFavorites)';
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

  /// Create a copy of SewingEquipmentParamsModel
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

abstract class _PlayerQueryParams extends SewingEquipmentParamsModel {
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

  /// Create a copy of SewingEquipmentParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerQueryParamsImplCopyWith<_$PlayerQueryParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SewingEquipmentDetailsModel _$SewingEquipmentDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _SewingEquipmentDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$SewingEquipmentDetailsModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryModel? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_date')
  DateTime? get dateOfRegistration => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp')
  String? get whatsappNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;

  /// Serializes this SewingEquipmentDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SewingEquipmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SewingEquipmentDetailsModelCopyWith<SewingEquipmentDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SewingEquipmentDetailsModelCopyWith<$Res> {
  factory $SewingEquipmentDetailsModelCopyWith(
          SewingEquipmentDetailsModel value,
          $Res Function(SewingEquipmentDetailsModel) then) =
      _$SewingEquipmentDetailsModelCopyWithImpl<$Res,
          SewingEquipmentDetailsModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'published_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$SewingEquipmentDetailsModelCopyWithImpl<$Res,
        $Val extends SewingEquipmentDetailsModel>
    implements $SewingEquipmentDetailsModelCopyWith<$Res> {
  _$SewingEquipmentDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SewingEquipmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? address = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of SewingEquipmentDetailsModel
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
abstract class _$$SewingEquipmentDetailsModelImplCopyWith<$Res>
    implements $SewingEquipmentDetailsModelCopyWith<$Res> {
  factory _$$SewingEquipmentDetailsModelImplCopyWith(
          _$SewingEquipmentDetailsModelImpl value,
          $Res Function(_$SewingEquipmentDetailsModelImpl) then) =
      __$$SewingEquipmentDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'published_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$SewingEquipmentDetailsModelImplCopyWithImpl<$Res>
    extends _$SewingEquipmentDetailsModelCopyWithImpl<$Res,
        _$SewingEquipmentDetailsModelImpl>
    implements _$$SewingEquipmentDetailsModelImplCopyWith<$Res> {
  __$$SewingEquipmentDetailsModelImplCopyWithImpl(
      _$SewingEquipmentDetailsModelImpl _value,
      $Res Function(_$SewingEquipmentDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SewingEquipmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? dateOfRegistration = freezed,
    Object? phoneNumber = freezed,
    Object? whatsappNumber = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$SewingEquipmentDetailsModelImpl(
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
class _$SewingEquipmentDetailsModelImpl extends _SewingEquipmentDetailsModel {
  const _$SewingEquipmentDetailsModelImpl(
      {required this.id,
      @JsonKey(name: 'images') final List<String> images = const [],
      @JsonKey(name: 'title') this.name,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'published_date') this.dateOfRegistration,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'whatsapp') this.whatsappNumber,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false})
      : _images = images,
        super._();

  factory _$SewingEquipmentDetailsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SewingEquipmentDetailsModelImplFromJson(json);

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
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'published_date')
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
    return 'SewingEquipmentDetailsModel(id: $id, images: $images, name: $name, category: $category, price: $price, address: $address, description: $description, dateOfRegistration: $dateOfRegistration, phoneNumber: $phoneNumber, whatsappNumber: $whatsappNumber, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SewingEquipmentDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.address, address) || other.address == address) &&
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
      price,
      address,
      description,
      dateOfRegistration,
      phoneNumber,
      whatsappNumber,
      status,
      isLike);

  /// Create a copy of SewingEquipmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SewingEquipmentDetailsModelImplCopyWith<_$SewingEquipmentDetailsModelImpl>
      get copyWith => __$$SewingEquipmentDetailsModelImplCopyWithImpl<
          _$SewingEquipmentDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SewingEquipmentDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _SewingEquipmentDetailsModel
    extends SewingEquipmentDetailsModel {
  const factory _SewingEquipmentDetailsModel(
          {required final int id,
          @JsonKey(name: 'images') final List<String> images,
          @JsonKey(name: 'title') final String? name,
          @JsonKey(name: 'category') final CategoryModel? category,
          @JsonKey(name: 'price') final int? price,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'published_date') final DateTime? dateOfRegistration,
          @JsonKey(name: 'phone_number') final String? phoneNumber,
          @JsonKey(name: 'whatsapp') final String? whatsappNumber,
          @JsonKey(name: 'status') final ModerationStatus? status,
          @JsonKey(name: 'isLike') final bool isLike}) =
      _$SewingEquipmentDetailsModelImpl;
  const _SewingEquipmentDetailsModel._() : super._();

  factory _SewingEquipmentDetailsModel.fromJson(Map<String, dynamic> json) =
      _$SewingEquipmentDetailsModelImpl.fromJson;

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
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'published_date')
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

  /// Create a copy of SewingEquipmentDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SewingEquipmentDetailsModelImplCopyWith<_$SewingEquipmentDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
