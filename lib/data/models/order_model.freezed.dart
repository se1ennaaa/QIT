// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryModel? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int id,
      List<String> images,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'count') int? quantity,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of OrderModel
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
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<String> images,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'count') int? quantity,
      @JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? status = freezed,
    Object? isLike = null,
  }) {
    return _then(_$OrderModelImpl(
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
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
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {required this.id,
      final List<String> images = const [],
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'count') this.quantity,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false})
      : _images = images;

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

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
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'category')
  final CategoryModel? category;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'count')
  final int? quantity;
  @override
  @JsonKey(name: 'status')
  final ModerationStatus? status;
  @override
  @JsonKey(name: 'isLike')
  final bool isLike;

  @override
  String toString() {
    return 'OrderModel(id: $id, images: $images, name: $name, category: $category, price: $price, quantity: $quantity, status: $status, isLike: $isLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
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
      quantity,
      status,
      isLike);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {required final int id,
      final List<String> images,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'category') final CategoryModel? category,
      @JsonKey(name: 'price') final int? price,
      @JsonKey(name: 'count') final int? quantity,
      @JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike') final bool isLike}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  int get id;
  @override
  List<String> get images;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'category')
  CategoryModel? get category;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'count')
  int? get quantity;
  @override
  @JsonKey(name: 'status')
  ModerationStatus? get status;
  @override
  @JsonKey(name: 'isLike')
  bool get isLike;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderParamsModel _$OrderParamsModelFromJson(Map<String, dynamic> json) {
  return _OrderParamsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderParamsModel {
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

  /// Serializes this OrderParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderParamsModelCopyWith<OrderParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderParamsModelCopyWith<$Res> {
  factory $OrderParamsModelCopyWith(
          OrderParamsModel value, $Res Function(OrderParamsModel) then) =
      _$OrderParamsModelCopyWithImpl<$Res, OrderParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'search') String? searchText,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'is_my') bool isMy,
      @JsonKey(name: 'is_favorites') bool isFavorites});
}

/// @nodoc
class _$OrderParamsModelCopyWithImpl<$Res, $Val extends OrderParamsModel>
    implements $OrderParamsModelCopyWith<$Res> {
  _$OrderParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderParamsModel
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
abstract class _$$OrderParamsModelImplCopyWith<$Res>
    implements $OrderParamsModelCopyWith<$Res> {
  factory _$$OrderParamsModelImplCopyWith(_$OrderParamsModelImpl value,
          $Res Function(_$OrderParamsModelImpl) then) =
      __$$OrderParamsModelImplCopyWithImpl<$Res>;
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
class __$$OrderParamsModelImplCopyWithImpl<$Res>
    extends _$OrderParamsModelCopyWithImpl<$Res, _$OrderParamsModelImpl>
    implements _$$OrderParamsModelImplCopyWith<$Res> {
  __$$OrderParamsModelImplCopyWithImpl(_$OrderParamsModelImpl _value,
      $Res Function(_$OrderParamsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderParamsModel
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
    return _then(_$OrderParamsModelImpl(
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
class _$OrderParamsModelImpl extends _OrderParamsModel {
  const _$OrderParamsModelImpl(
      {@JsonKey(name: 'page') this.page = 1,
      @JsonKey(name: 'search') this.searchText,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'is_my') this.isMy = false,
      @JsonKey(name: 'is_favorites') this.isFavorites = false})
      : super._();

  factory _$OrderParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderParamsModelImplFromJson(json);

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
    return 'OrderParamsModel(page: $page, searchText: $searchText, categoryId: $categoryId, isMy: $isMy, isFavorites: $isFavorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderParamsModelImpl &&
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

  /// Create a copy of OrderParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderParamsModelImplCopyWith<_$OrderParamsModelImpl> get copyWith =>
      __$$OrderParamsModelImplCopyWithImpl<_$OrderParamsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderParamsModelImplToJson(
      this,
    );
  }
}

abstract class _OrderParamsModel extends OrderParamsModel {
  const factory _OrderParamsModel(
          {@JsonKey(name: 'page') final int page,
          @JsonKey(name: 'search') final String? searchText,
          @JsonKey(name: 'category_id') final int? categoryId,
          @JsonKey(name: 'is_my') final bool isMy,
          @JsonKey(name: 'is_favorites') final bool isFavorites}) =
      _$OrderParamsModelImpl;
  const _OrderParamsModel._() : super._();

  factory _OrderParamsModel.fromJson(Map<String, dynamic> json) =
      _$OrderParamsModelImpl.fromJson;

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

  /// Create a copy of OrderParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderParamsModelImplCopyWith<_$OrderParamsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'execution_deadline')
  String? get deadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryModel? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'ratings_count')
  int? get ratingsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_date')
  DateTime? get dateOfRegistration => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp')
  String? get whatsappNumber => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike,
      int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'count') int? quantity,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'execution_deadline') String? deadline,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'ratings_count') int? ratingsCount,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'registration_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? isLike = null,
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? deadline = freezed,
    Object? category = freezed,
    Object? rating = freezed,
    Object? ratingsCount = freezed,
    Object? description = freezed,
    Object? dateOfRegistration = freezed,
    Object? phoneNumber = freezed,
    Object? whatsappNumber = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationStatus?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of OrderDetailsModel
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
abstract class _$$OrderDetailsModelImplCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$OrderDetailsModelImplCopyWith(_$OrderDetailsModelImpl value,
          $Res Function(_$OrderDetailsModelImpl) then) =
      __$$OrderDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') ModerationStatus? status,
      @JsonKey(name: 'isLike') bool isLike,
      int id,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'count') int? quantity,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'execution_deadline') String? deadline,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'ratings_count') int? ratingsCount,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'registration_date') DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'whatsapp') String? whatsappNumber});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$OrderDetailsModelImplCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$OrderDetailsModelImpl>
    implements _$$OrderDetailsModelImplCopyWith<$Res> {
  __$$OrderDetailsModelImplCopyWithImpl(_$OrderDetailsModelImpl _value,
      $Res Function(_$OrderDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? isLike = null,
    Object? id = null,
    Object? images = null,
    Object? name = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? deadline = freezed,
    Object? category = freezed,
    Object? rating = freezed,
    Object? ratingsCount = freezed,
    Object? description = freezed,
    Object? dateOfRegistration = freezed,
    Object? phoneNumber = freezed,
    Object? whatsappNumber = freezed,
  }) {
    return _then(_$OrderDetailsModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationStatus?,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
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
class _$OrderDetailsModelImpl extends _OrderDetailsModel {
  const _$OrderDetailsModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isLike') this.isLike = false,
      required this.id,
      @JsonKey(name: 'images') final List<String> images = const [],
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'count') this.quantity,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'execution_deadline') this.deadline,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'ratings_count') this.ratingsCount,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'registration_date') this.dateOfRegistration,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'whatsapp') this.whatsappNumber})
      : _images = images,
        super._();

  factory _$OrderDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final ModerationStatus? status;
  @override
  @JsonKey(name: 'isLike')
  final bool isLike;
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
  @JsonKey(name: 'count')
  final int? quantity;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'execution_deadline')
  final String? deadline;
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
  String toString() {
    return 'OrderDetailsModel(status: $status, isLike: $isLike, id: $id, images: $images, name: $name, quantity: $quantity, price: $price, deadline: $deadline, category: $category, rating: $rating, ratingsCount: $ratingsCount, description: $description, dateOfRegistration: $dateOfRegistration, phoneNumber: $phoneNumber, whatsappNumber: $whatsappNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingsCount, ratingsCount) ||
                other.ratingsCount == ratingsCount) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      status,
      isLike,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      quantity,
      price,
      deadline,
      category,
      rating,
      ratingsCount,
      description,
      dateOfRegistration,
      phoneNumber,
      whatsappNumber);

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      __$$OrderDetailsModelImplCopyWithImpl<_$OrderDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel extends OrderDetailsModel {
  const factory _OrderDetailsModel(
      {@JsonKey(name: 'status') final ModerationStatus? status,
      @JsonKey(name: 'isLike') final bool isLike,
      required final int id,
      @JsonKey(name: 'images') final List<String> images,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'count') final int? quantity,
      @JsonKey(name: 'price') final int? price,
      @JsonKey(name: 'execution_deadline') final String? deadline,
      @JsonKey(name: 'category') final CategoryModel? category,
      @JsonKey(name: 'rating') final double? rating,
      @JsonKey(name: 'ratings_count') final int? ratingsCount,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'registration_date') final DateTime? dateOfRegistration,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'whatsapp')
      final String? whatsappNumber}) = _$OrderDetailsModelImpl;
  const _OrderDetailsModel._() : super._();

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  ModerationStatus? get status;
  @override
  @JsonKey(name: 'isLike')
  bool get isLike;
  @override
  int get id;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'count')
  int? get quantity;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'execution_deadline')
  String? get deadline;
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

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
