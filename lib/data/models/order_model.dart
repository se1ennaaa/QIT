import 'package:chelnok_mob/data/models/category_model.dart';
import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    required int id,
    @Default([]) final List<String> images,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'category') final CategoryModel? category,
    @JsonKey(name: 'price') final int? price,
    @JsonKey(name: 'count') final int? quantity,
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class OrderParamsModel with _$OrderParamsModel {
  const OrderParamsModel._();

  const factory OrderParamsModel({
    @Default(1) @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'search') final String? searchText,
    @JsonKey(name: 'category_id') final int? categoryId,
    @Default(false) @JsonKey(name: 'is_my') final bool isMy,
    @Default(false) @JsonKey(name: 'is_favorites') final bool isFavorites,
  }) = _OrderParamsModel;

  factory OrderParamsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderParamsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {
      'page': page,
      'offset': 15,
      if (searchText != null && searchText!.isNotEmpty) 'query': searchText,
      if (categoryId != null) 'category': categoryId,
      if (isFavorites) 'is_favorites': isFavorites,
      if (isMy) 'is_my': isMy,
    };
  }
}

@freezed
class OrderDetailsModel with _$OrderDetailsModel {
  const OrderDetailsModel._();
  const factory OrderDetailsModel({
    @JsonKey(name: 'status') final ModerationStatus? status,
    @Default(false) @JsonKey(name: 'isLike') final bool isLike,
    required int id,
    @Default([]) @JsonKey(name: 'images') final List<String> images,
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
    @JsonKey(name: 'whatsapp') final String? whatsappNumber,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {};
  }
}
