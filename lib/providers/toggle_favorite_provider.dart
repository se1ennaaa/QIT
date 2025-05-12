import 'package:chelnok_mob/providers/dependencies.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/models/api_reponse.dart';
part 'toggle_favorite_provider.g.dart';

@riverpod
Future<ApiResponse> toggleFavorite(Ref ref, int id, FavoriteType type) async {
  final response = await ref.read(userRepoProvider).toggleFavorite(id, type);
  return response;
}

enum FavoriteType {
  workshop,
  order,
  markets,
  dordoi,
  fulfillment,
  manager,
  teaching,
  service,
  vacancy,
  resume,
  property,
  apparel,
  nadom;

  bool get isWorkshop => this == workshop;
  bool get isOrder => this == order;
  bool get isMarkets => this == markets;
  bool get isDordoi => this == dordoi;
  bool get isFulfilment => this == fulfillment;
  bool get isManager => this == manager;
  bool get isTeaching => this == teaching;
  bool get isService => this == service;
  bool get isVacancy => this == vacancy;
  bool get isResume => this == resume;
  bool get isProperty => this == property;
  bool get isSewingEquipment => this == apparel;
  bool get isNadom => this == nadom;
}
