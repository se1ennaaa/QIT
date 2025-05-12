import 'package:chelnok_mob/data/models/category_model.dart';
import 'package:chelnok_mob/providers/dependencies.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_providers.g.dart';

enum CategoryType {
  workshop,
  order,
  dordoi,
  markets,
  property,
  apparel;

  bool get isWorkshop => this == workshop;
  bool get isOrder => this == order;
  bool get isDordoi => this == dordoi;
  bool get isMarkets => this == markets;
  bool get isProperty => this == property;
  bool get isApparel => this == apparel;
}

@riverpod
class CategoryList extends _$CategoryList {
  @override
  Future<List<CategoryModel>> build(CategoryType type) async {
    final result = await ref.read(userRepoProvider).fetchCategories(type);
    if (result.isSuccessful) {
      return result.result!;
    } else {
      throw result.errorData;
    }
  }
}
