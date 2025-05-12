import 'package:chelnok_mob/config/config.dart';
import 'package:chelnok_mob/data/client/client.dart';
import 'package:chelnok_mob/data/repo/course_repo.dart';
import 'package:chelnok_mob/data/repo/dordoi_market_repo.dart';
import 'package:chelnok_mob/data/repo/feedback_repo.dart';
import 'package:chelnok_mob/data/repo/fulfilment_repo.dart';
import 'package:chelnok_mob/data/repo/home_worker_repo.dart';
import 'package:chelnok_mob/data/repo/madina_market_repo.dart';
import 'package:chelnok_mob/data/repo/manager_repo.dart';
import 'package:chelnok_mob/data/repo/order_repo.dart';
import 'package:chelnok_mob/data/repo/real_estate_repo.dart';
import 'package:chelnok_mob/data/repo/resume_repo.dart';

import 'package:chelnok_mob/data/repo/service_repo.dart';
import 'package:chelnok_mob/data/repo/sewing_equipment_repo.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';
import 'package:chelnok_mob/data/repo/vacancy_repo.dart';
import 'package:dio/dio.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/repo/user_repo.dart';
import '../data/storage/local_storage.dart';

final localStorageProvider = Provider((ref) => LocalStorage());

final dioProvider = Provider(
  (ref) => Dio(BaseOptions(baseUrl: Constants.baseUrl)),
);

final apiClientProvider = Provider(
  (ref) => ApiClient(
    Constants.baseUrl,
    storage: ref.read(localStorageProvider),
  ),
);

final userRepoProvider = Provider<UserRepo>((ref) {
  return UserAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final sewingWorkshopRepoProvider = Provider<SewingWorkshopRepo>((ref) {
  return SewingWorkshopAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final orderRepoProvider = Provider<OrderRepo>((ref) {
  return OrderAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final madinaMarketRepoProvider = Provider<MadinaMarketRepo>((ref) {
  return MadinaMarketAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final dordoiMarketRepoProvider = Provider<DordoiMarketRepo>((ref) {
  return DordoiMarketAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final fulfilmentRepoProvider = Provider<FulfilmentRepo>((ref) {
  return FulfilmentAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final managerRepoProvider = Provider<ManagerRepo>((ref) {
  return ManagerAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final courseRepoProvider = Provider<CourseRepo>((ref) {
  return CourseAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final serviceRepoProvider = Provider<ServiceRepo>((ref) {
  return ServiceAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final vacancyRepoProvider = Provider<VacancyRepo>((ref) {
  return VacancyAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final resumeRepoProvider = Provider<ResumeRepo>((ref) {
  return ResumeAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final realEstateRepoProvider = Provider<RealEstateRepo>((ref) {
  return RealEstateAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});

final sewingEquipmentRepoProvider = Provider<SewingEquipmentRepo>((ref) {
  return SewingEquipmentAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});

final homeWorkerRepoProvider = Provider<HomeWorkerRepo>((ref) {
  return HomeWorkerAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
final feedbackRepoProvider = Provider<FeedbackRepo>((ref) {
  return FeedbackAPIRepo(
    client: ref.watch(apiClientProvider),
  );
});
