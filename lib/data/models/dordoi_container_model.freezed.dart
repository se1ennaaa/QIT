// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dordoi_container_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DordoiContainerModel _$DordoiContainerModelFromJson(Map<String, dynamic> json) {
  return _DordoiContainerModel.fromJson(json);
}

/// @nodoc
mixin _$DordoiContainerModel {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get whatsapp => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  List<ModelItemModel> get models => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLike')
  bool get isLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  ModerationStatus? get status => throw _privateConstructorUsedError;

  /// Serializes this DordoiContainerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DordoiContainerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DordoiContainerModelCopyWith<DordoiContainerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DordoiContainerModelCopyWith<$Res> {
  factory $DordoiContainerModelCopyWith(DordoiContainerModel value,
          $Res Function(DordoiContainerModel) then) =
      _$DordoiContainerModelCopyWithImpl<$Res, DordoiContainerModel>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? whatsapp,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      List<ModelItemModel> models,
      @JsonKey(name: 'isLike') bool isLike,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'status') ModerationStatus? status});
}

/// @nodoc
class _$DordoiContainerModelCopyWithImpl<$Res,
        $Val extends DordoiContainerModel>
    implements $DordoiContainerModelCopyWith<$Res> {
  _$DordoiContainerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DordoiContainerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? whatsapp = freezed,
    Object? phoneNumber = freezed,
    Object? models = null,
    Object? isLike = null,
    Object? rating = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      models: null == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as List<ModelItemModel>,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DordoiContainerModelImplCopyWith<$Res>
    implements $DordoiContainerModelCopyWith<$Res> {
  factory _$$DordoiContainerModelImplCopyWith(_$DordoiContainerModelImpl value,
          $Res Function(_$DordoiContainerModelImpl) then) =
      __$$DordoiContainerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? whatsapp,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      List<ModelItemModel> models,
      @JsonKey(name: 'isLike') bool isLike,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'status') ModerationStatus? status});
}

/// @nodoc
class __$$DordoiContainerModelImplCopyWithImpl<$Res>
    extends _$DordoiContainerModelCopyWithImpl<$Res, _$DordoiContainerModelImpl>
    implements _$$DordoiContainerModelImplCopyWith<$Res> {
  __$$DordoiContainerModelImplCopyWithImpl(_$DordoiContainerModelImpl _value,
      $Res Function(_$DordoiContainerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DordoiContainerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? whatsapp = freezed,
    Object? phoneNumber = freezed,
    Object? models = null,
    Object? isLike = null,
    Object? rating = freezed,
    Object? status = freezed,
  }) {
    return _then(_$DordoiContainerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      models: null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<ModelItemModel>,
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DordoiContainerModelImpl extends _DordoiContainerModel {
  const _$DordoiContainerModelImpl(
      {required this.id,
      this.name,
      this.whatsapp,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      final List<ModelItemModel> models = const [],
      @JsonKey(name: 'isLike') this.isLike = false,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'status') this.status})
      : _models = models,
        super._();

  factory _$DordoiContainerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DordoiContainerModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? whatsapp;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  final List<ModelItemModel> _models;
  @override
  @JsonKey()
  List<ModelItemModel> get models {
    if (_models is EqualUnmodifiableListView) return _models;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  @JsonKey(name: 'isLike')
  final bool isLike;
  @override
  @JsonKey(name: 'rating')
  final double? rating;
  @override
  @JsonKey(name: 'status')
  final ModerationStatus? status;

  @override
  String toString() {
    return 'DordoiContainerModel(id: $id, name: $name, whatsapp: $whatsapp, phoneNumber: $phoneNumber, models: $models, isLike: $isLike, rating: $rating, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DordoiContainerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(other._models, _models) &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, whatsapp, phoneNumber,
      const DeepCollectionEquality().hash(_models), isLike, rating, status);

  /// Create a copy of DordoiContainerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DordoiContainerModelImplCopyWith<_$DordoiContainerModelImpl>
      get copyWith =>
          __$$DordoiContainerModelImplCopyWithImpl<_$DordoiContainerModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DordoiContainerModelImplToJson(
      this,
    );
  }
}

abstract class _DordoiContainerModel extends DordoiContainerModel {
  const factory _DordoiContainerModel(
          {required final int id,
          final String? name,
          final String? whatsapp,
          @JsonKey(name: 'phone_number') final String? phoneNumber,
          final List<ModelItemModel> models,
          @JsonKey(name: 'isLike') final bool isLike,
          @JsonKey(name: 'rating') final double? rating,
          @JsonKey(name: 'status') final ModerationStatus? status}) =
      _$DordoiContainerModelImpl;
  const _DordoiContainerModel._() : super._();

  factory _DordoiContainerModel.fromJson(Map<String, dynamic> json) =
      _$DordoiContainerModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get whatsapp;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  List<ModelItemModel> get models;
  @override
  @JsonKey(name: 'isLike')
  bool get isLike;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(name: 'status')
  ModerationStatus? get status;

  /// Create a copy of DordoiContainerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DordoiContainerModelImplCopyWith<_$DordoiContainerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModelItemModel _$ModelItemModelFromJson(Map<String, dynamic> json) {
  return _ModelItemModel.fromJson(json);
}

/// @nodoc
mixin _$ModelItemModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String? get sendPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<dynamic> get sendImages => throw _privateConstructorUsedError;
  List<dynamic> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryModel? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'dordoi_id')
  int? get dordoiId => throw _privateConstructorUsedError;

  /// Serializes this ModelItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelItemModelCopyWith<ModelItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelItemModelCopyWith<$Res> {
  factory $ModelItemModelCopyWith(
          ModelItemModel value, $Res Function(ModelItemModel) then) =
      _$ModelItemModelCopyWithImpl<$Res, ModelItemModel>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      int? categoryId,
      String? sendPrice,
      @JsonKey(name: 'price') int? price,
      String? image,
      @JsonKey(includeToJson: false, includeFromJson: false)
      List<dynamic> sendImages,
      List<dynamic> images,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'dordoi_id') int? dordoiId});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$ModelItemModelCopyWithImpl<$Res, $Val extends ModelItemModel>
    implements $ModelItemModelCopyWith<$Res> {
  _$ModelItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? sendPrice = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? sendImages = null,
    Object? images = null,
    Object? category = freezed,
    Object? dordoiId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      sendPrice: freezed == sendPrice
          ? _value.sendPrice
          : sendPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      sendImages: null == sendImages
          ? _value.sendImages
          : sendImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      dordoiId: freezed == dordoiId
          ? _value.dordoiId
          : dordoiId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ModelItemModel
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
abstract class _$$ModelItemModelImplCopyWith<$Res>
    implements $ModelItemModelCopyWith<$Res> {
  factory _$$ModelItemModelImplCopyWith(_$ModelItemModelImpl value,
          $Res Function(_$ModelItemModelImpl) then) =
      __$$ModelItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      int? categoryId,
      String? sendPrice,
      @JsonKey(name: 'price') int? price,
      String? image,
      @JsonKey(includeToJson: false, includeFromJson: false)
      List<dynamic> sendImages,
      List<dynamic> images,
      @JsonKey(name: 'category') CategoryModel? category,
      @JsonKey(name: 'dordoi_id') int? dordoiId});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ModelItemModelImplCopyWithImpl<$Res>
    extends _$ModelItemModelCopyWithImpl<$Res, _$ModelItemModelImpl>
    implements _$$ModelItemModelImplCopyWith<$Res> {
  __$$ModelItemModelImplCopyWithImpl(
      _$ModelItemModelImpl _value, $Res Function(_$ModelItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? sendPrice = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? sendImages = null,
    Object? images = null,
    Object? category = freezed,
    Object? dordoiId = freezed,
  }) {
    return _then(_$ModelItemModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      sendPrice: freezed == sendPrice
          ? _value.sendPrice
          : sendPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      sendImages: null == sendImages
          ? _value._sendImages
          : sendImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      dordoiId: freezed == dordoiId
          ? _value.dordoiId
          : dordoiId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelItemModelImpl extends _ModelItemModel {
  const _$ModelItemModelImpl(
      {this.name,
      this.description,
      this.categoryId,
      this.sendPrice,
      @JsonKey(name: 'price') this.price,
      this.image,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final List<dynamic> sendImages = const [],
      final List<dynamic> images = const [],
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'dordoi_id') this.dordoiId})
      : _sendImages = sendImages,
        _images = images,
        super._();

  factory _$ModelItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelItemModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? categoryId;
  @override
  final String? sendPrice;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  final String? image;
  final List<dynamic> _sendImages;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<dynamic> get sendImages {
    if (_sendImages is EqualUnmodifiableListView) return _sendImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sendImages);
  }

  final List<dynamic> _images;
  @override
  @JsonKey()
  List<dynamic> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'category')
  final CategoryModel? category;
  @override
  @JsonKey(name: 'dordoi_id')
  final int? dordoiId;

  @override
  String toString() {
    return 'ModelItemModel(name: $name, description: $description, categoryId: $categoryId, sendPrice: $sendPrice, price: $price, image: $image, sendImages: $sendImages, images: $images, category: $category, dordoiId: $dordoiId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelItemModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.sendPrice, sendPrice) ||
                other.sendPrice == sendPrice) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._sendImages, _sendImages) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.dordoiId, dordoiId) ||
                other.dordoiId == dordoiId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      categoryId,
      sendPrice,
      price,
      image,
      const DeepCollectionEquality().hash(_sendImages),
      const DeepCollectionEquality().hash(_images),
      category,
      dordoiId);

  /// Create a copy of ModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelItemModelImplCopyWith<_$ModelItemModelImpl> get copyWith =>
      __$$ModelItemModelImplCopyWithImpl<_$ModelItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelItemModelImplToJson(
      this,
    );
  }
}

abstract class _ModelItemModel extends ModelItemModel {
  const factory _ModelItemModel(
      {final String? name,
      final String? description,
      final int? categoryId,
      final String? sendPrice,
      @JsonKey(name: 'price') final int? price,
      final String? image,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final List<dynamic> sendImages,
      final List<dynamic> images,
      @JsonKey(name: 'category') final CategoryModel? category,
      @JsonKey(name: 'dordoi_id') final int? dordoiId}) = _$ModelItemModelImpl;
  const _ModelItemModel._() : super._();

  factory _ModelItemModel.fromJson(Map<String, dynamic> json) =
      _$ModelItemModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get categoryId;
  @override
  String? get sendPrice;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  String? get image;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<dynamic> get sendImages;
  @override
  List<dynamic> get images;
  @override
  @JsonKey(name: 'category')
  CategoryModel? get category;
  @override
  @JsonKey(name: 'dordoi_id')
  int? get dordoiId;

  /// Create a copy of ModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelItemModelImplCopyWith<_$ModelItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DordoiContainerParamsModel _$DordoiContainerParamsModelFromJson(
    Map<String, dynamic> json) {
  return _DordoiContainerParamsModel.fromJson(json);
}

/// @nodoc
mixin _$DordoiContainerParamsModel {
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

  /// Serializes this DordoiContainerParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DordoiContainerParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DordoiContainerParamsModelCopyWith<DordoiContainerParamsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DordoiContainerParamsModelCopyWith<$Res> {
  factory $DordoiContainerParamsModelCopyWith(DordoiContainerParamsModel value,
          $Res Function(DordoiContainerParamsModel) then) =
      _$DordoiContainerParamsModelCopyWithImpl<$Res,
          DordoiContainerParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'search') String? searchText,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'is_my') bool isMy,
      @JsonKey(name: 'is_favorites') bool isFavorites});
}

/// @nodoc
class _$DordoiContainerParamsModelCopyWithImpl<$Res,
        $Val extends DordoiContainerParamsModel>
    implements $DordoiContainerParamsModelCopyWith<$Res> {
  _$DordoiContainerParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DordoiContainerParamsModel
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
abstract class _$$DordoiContainerParamsModelImplCopyWith<$Res>
    implements $DordoiContainerParamsModelCopyWith<$Res> {
  factory _$$DordoiContainerParamsModelImplCopyWith(
          _$DordoiContainerParamsModelImpl value,
          $Res Function(_$DordoiContainerParamsModelImpl) then) =
      __$$DordoiContainerParamsModelImplCopyWithImpl<$Res>;
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
class __$$DordoiContainerParamsModelImplCopyWithImpl<$Res>
    extends _$DordoiContainerParamsModelCopyWithImpl<$Res,
        _$DordoiContainerParamsModelImpl>
    implements _$$DordoiContainerParamsModelImplCopyWith<$Res> {
  __$$DordoiContainerParamsModelImplCopyWithImpl(
      _$DordoiContainerParamsModelImpl _value,
      $Res Function(_$DordoiContainerParamsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DordoiContainerParamsModel
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
    return _then(_$DordoiContainerParamsModelImpl(
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
class _$DordoiContainerParamsModelImpl extends _DordoiContainerParamsModel {
  const _$DordoiContainerParamsModelImpl(
      {@JsonKey(name: 'page') this.page = 1,
      @JsonKey(name: 'search') this.searchText,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'is_my') this.isMy = false,
      @JsonKey(name: 'is_favorites') this.isFavorites = false})
      : super._();

  factory _$DordoiContainerParamsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DordoiContainerParamsModelImplFromJson(json);

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
    return 'DordoiContainerParamsModel(page: $page, searchText: $searchText, categoryId: $categoryId, isMy: $isMy, isFavorites: $isFavorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DordoiContainerParamsModelImpl &&
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

  /// Create a copy of DordoiContainerParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DordoiContainerParamsModelImplCopyWith<_$DordoiContainerParamsModelImpl>
      get copyWith => __$$DordoiContainerParamsModelImplCopyWithImpl<
          _$DordoiContainerParamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DordoiContainerParamsModelImplToJson(
      this,
    );
  }
}

abstract class _DordoiContainerParamsModel extends DordoiContainerParamsModel {
  const factory _DordoiContainerParamsModel(
          {@JsonKey(name: 'page') final int page,
          @JsonKey(name: 'search') final String? searchText,
          @JsonKey(name: 'category_id') final int? categoryId,
          @JsonKey(name: 'is_my') final bool isMy,
          @JsonKey(name: 'is_favorites') final bool isFavorites}) =
      _$DordoiContainerParamsModelImpl;
  const _DordoiContainerParamsModel._() : super._();

  factory _DordoiContainerParamsModel.fromJson(Map<String, dynamic> json) =
      _$DordoiContainerParamsModelImpl.fromJson;

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

  /// Create a copy of DordoiContainerParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DordoiContainerParamsModelImplCopyWith<_$DordoiContainerParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
