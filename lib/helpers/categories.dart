import 'package:chelnok_mob/providers/ad_management_provider.dart';

List<MapEntry<String, String>> categoryList(FormType? type) {
  switch (type) {
    case FormType.sewingWorkshop:
      return [
        MapEntry('key1', 'Мужское'),
        MapEntry('key2', 'Женское'),
        MapEntry('key3', 'Детское'),
        MapEntry('key4', 'Постельное'),
        MapEntry('key5', 'Мягкие игрушки'),
      ];

    case FormType.order:
      return [
        MapEntry('key1', 'Мужское'),
        MapEntry('key2', 'Женское'),
        MapEntry('key3', 'Детское'),
        MapEntry('key4', 'Постельное'),
        MapEntry('key5', 'Мягкие игрушки'),
      ];
    case FormType.madinaMarket:
      return [
        MapEntry('key1', 'Ткани'),
        MapEntry('key2', 'Фурнитура'),
      ];

    default:
      return [
        MapEntry('key1', 'Аренда'),
        MapEntry('key2', 'Продажа'),
      ];
  }
}
