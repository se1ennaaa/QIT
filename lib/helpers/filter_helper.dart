import 'package:chelnok_mob/providers/toggle_favorite_provider.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';

List<FilterOption> getWorkFilterOptions() {
  return [
    FilterOption(
        title: 'Требуется',
        slug: 'vacancy',
        imagePath: 'assets/images/megaphone.png'),
    FilterOption(
        title: 'Ищу',
        slug: 'resume',
        imagePath: 'assets/images/curriculum.png'),
  ];
}

List<FavoriteCatalog> getFavoriteCatalogOptions() {
  return [
    FavoriteCatalog(
      title: 'Швейные цеха',
      type: FavoriteType.workshop,
      imagePath: 'assets/images/sewing_machine.png',
    ),
    FavoriteCatalog(
      title: 'Заказы',
      type: FavoriteType.order,
      imagePath: 'assets/images/box_of_coins.png',
    ),
    FavoriteCatalog(
      title: 'Дордой',
      type: FavoriteType.dordoi,
      imagePath: 'assets/images/map_on_phone.png',
    ),
    FavoriteCatalog(
      title: 'Мадина',
      type: FavoriteType.markets,
      imagePath: 'assets/images/map_on_phone.png',
    ),
    FavoriteCatalog(
      title: 'Фулфилмент',
      type: FavoriteType.fulfillment,
      imagePath: 'assets/images/shop.png',
    ),
    FavoriteCatalog(
      title: 'Менеджеры',
      type: FavoriteType.manager,
      imagePath: 'assets/images/shop.png',
    ),
    FavoriteCatalog(
      title: 'Обучение',
      type: FavoriteType.teaching,
      imagePath: 'assets/images/shop.png',
    ),
    FavoriteCatalog(
      title: 'Услуги',
      type: FavoriteType.service,
      imagePath: 'assets/images/notebook.png',
    ),
    FavoriteCatalog(
      title: 'Надомники',
      type: FavoriteType.nadom,
      imagePath: 'assets/images/scissors.png',
    ),
    FavoriteCatalog(
      title: 'Резюме',
      type: FavoriteType.resume,
      imagePath: 'assets/images/bell_in_search.png',
    ),
    FavoriteCatalog(
      title: 'Вакансии',
      type: FavoriteType.vacancy,
      imagePath: 'assets/images/bell_in_search.png',
    ),
    FavoriteCatalog(
      title: 'Недвижимость',
      type: FavoriteType.property,
      imagePath: 'assets/images/euro_home.png',
    ),
  ];
}

class FavoriteCatalog {
  final FavoriteType type;
  final int? id;
  final String title;
  final String? titleCategory;
  final String? imagePath;
  final String? url;

  FavoriteCatalog({
    required this.type,
    this.id,
    required this.title,
    this.imagePath,
    this.url,
    this.titleCategory,
  });
}

class FilterOption {
  final String title;
  final String slug;
  final String imagePath;

  FilterOption({
    required this.title,
    required this.slug,
    required this.imagePath,
  });
}
