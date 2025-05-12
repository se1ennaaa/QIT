import 'package:chelnok_mob/providers/nav_bar_controller_provider.dart';
import 'package:chelnok_mob/ui/screens/auth/login/login_screen.dart';
import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:chelnok_mob/data/models/course_model.dart';
import 'package:chelnok_mob/data/models/dordoi_container_model.dart';
import 'package:chelnok_mob/data/models/fulfilment_model.dart';
import 'package:chelnok_mob/data/models/home_worker_model.dart';
import 'package:chelnok_mob/data/models/madina_container_model.dart';
import 'package:chelnok_mob/data/models/manager_model.dart';
import 'package:chelnok_mob/data/models/order_model.dart';
import 'package:chelnok_mob/data/models/real_estate_model.dart';
import 'package:chelnok_mob/data/models/resume_model.dart';
import 'package:chelnok_mob/data/models/service_model.dart';
import 'package:chelnok_mob/data/models/sewing_equipment_model.dart';
import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:chelnok_mob/data/models/vacancy_model.dart';
import 'package:chelnok_mob/helpers/filter_helper.dart';
import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/providers/category_providers.dart';
import 'package:chelnok_mob/providers/course_providers.dart';
import 'package:chelnok_mob/providers/dordoi_market_providers.dart';
import 'package:chelnok_mob/providers/fulfilment_providers.dart';
import 'package:chelnok_mob/providers/home_worker_providers.dart';
import 'package:chelnok_mob/providers/madina_market_providers.dart';
import 'package:chelnok_mob/providers/manager_providers.dart';
import 'package:chelnok_mob/providers/order_providers.dart';
import 'package:chelnok_mob/providers/real_estate_providers.dart';
import 'package:chelnok_mob/providers/resume_providers.dart';
import 'package:chelnok_mob/providers/service_providers.dart';
import 'package:chelnok_mob/providers/sewing_equipment_providers.dart';
import 'package:chelnok_mob/providers/sewing_workshop_providers.dart';
import 'package:chelnok_mob/providers/toggle_favorite_provider.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/providers/vacancy_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/course/course_details_screen.dart';
import 'package:chelnok_mob/ui/screens/course/widgets/courses_section.dart';
import 'package:chelnok_mob/ui/screens/fulfilments/fulfilment_details_screen.dart';
import 'package:chelnok_mob/ui/screens/fulfilments/widgets/fulfilment_section.dart';
import 'package:chelnok_mob/ui/screens/home_workers/home_worker_details.dart';
import 'package:chelnok_mob/ui/screens/home_workers/widgets/home_worker_section.dart';
import 'package:chelnok_mob/ui/screens/madina_market/madina_market_details_screen.dart';
import 'package:chelnok_mob/ui/screens/madina_market/widgets/madina_containers_section.dart';
import 'package:chelnok_mob/ui/screens/manager/manager_details_screen.dart';
import 'package:chelnok_mob/ui/screens/manager/widgets/managers_section.dart';
import 'package:chelnok_mob/ui/screens/order/order_details_screen.dart';
import 'package:chelnok_mob/ui/screens/order/widgets/orders_section.dart';
import 'package:chelnok_mob/ui/screens/real_estate/real_estate_details_screen.dart';
import 'package:chelnok_mob/ui/screens/real_estate/widgets/real_estate_section.dart';
import 'package:chelnok_mob/ui/screens/service/service_details_screen.dart';
import 'package:chelnok_mob/ui/screens/service/widgets/servicess_section.dart';
import 'package:chelnok_mob/ui/screens/sewing_equipment/sewing_equipment_details_screen.dart';
import 'package:chelnok_mob/ui/screens/sewing_equipment/widgets/sewing_equipment_section.dart';
import 'package:chelnok_mob/ui/screens/sewing_workshops/sewing_workshop_details_screen.dart';
import 'package:chelnok_mob/ui/screens/sewing_workshops/widgets/sewing_workshops_section.dart';
import 'package:chelnok_mob/ui/screens/work/resumes/resume_details_screen.dart';
import 'package:chelnok_mob/ui/screens/work/resumes/widgets/resumes_section.dart';
import 'package:chelnok_mob/ui/screens/work/vacancy/vacancy_details_screen.dart';
import 'package:chelnok_mob/ui/screens/work/vacancy/widgets/vacancies_section.dart';
import 'package:chelnok_mob/ui/widgets/app_bars/app_bar_with_text_field.dart';
import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../dordoi_container/widgets/dordoi_containers_section.dart';

class FavoritesScreen extends HookConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryListState =
        ref.watch(categoryListProvider(CategoryType.apparel));
    final userState = ref.watch(userProvider);
    final selectedType = useState(FavoriteType.workshop);
    final selectedCategory = useState<int?>(null);
    final favoriteCatalog = useState(getFavoriteCatalogOptions());

    useEffect(() {
      categoryListState.maybeWhen(
          orElse: () {},
          data: (data) {
            final list = List<FavoriteCatalog>.from(favoriteCatalog.value);

            for (var e in data) {
              list.add(FavoriteCatalog(
                title: 'Швейное оборудование',
                titleCategory: e.title,
                type: FavoriteType.apparel,
                url: e.image,
                id: e.id,
              ));
            }
            favoriteCatalog.value = list;
          });
      return null;
    }, [categoryListState]);

    void showAuthorizedSnackbar() {
      showSnackbar(
        context: context,
        message: "Вы не авторизованы",
        notAuthorized: true,
      );
    }

    final initialParams = useMemoized(() {
      switch (selectedType.value) {
        case FavoriteType.workshop:
          return SewingWorkshopParamsModel(isFavorites: true);
        case FavoriteType.order:
          return OrderParamsModel(isFavorites: true);
        case FavoriteType.dordoi:
          return DordoiContainerParamsModel(isFavorites: true);
        case FavoriteType.markets:
          return MadinaContainerParamsModel(isFavorites: true);
        case FavoriteType.fulfillment:
          return FulfilmentParamsModel(isFavorites: true);
        case FavoriteType.manager:
          return ManagerParamsModel(isFavorites: true);
        case FavoriteType.teaching:
          return CourseParamsModel(isFavorites: true);
        case FavoriteType.service:
          return ServiceParamsModel(isFavorites: true);
        case FavoriteType.resume:
          return ResumeParamsModel(isFavorites: true);
        case FavoriteType.vacancy:
          return VacancyParamsModel(isFavorites: true);
        case FavoriteType.nadom:
          return HomeWorkerParamsModel(isFavorites: true);
        case FavoriteType.property:
          return RealEstateParamsModel(isFavorites: true);
        case FavoriteType.apparel:
          return SewingEquipmentParamsModel(
              isFavorites: true, categoryId: selectedCategory.value);
      }
    }, [selectedType.value, selectedCategory.value]);

    final provider = useMemoized(() {
      switch (selectedType.value) {
        case FavoriteType.workshop:
          return sewingWorkshopListProvider(
              params: initialParams as SewingWorkshopParamsModel);
        case FavoriteType.order:
          return orderListProvider(params: initialParams as OrderParamsModel);
        case FavoriteType.dordoi:
          return dordoiContainerListProvider(
              params: initialParams as DordoiContainerParamsModel);
        case FavoriteType.markets:
          return madinaContainerListProvider(
              params: initialParams as MadinaContainerParamsModel);
        case FavoriteType.fulfillment:
          return fulfilmentListProvider(
              params: initialParams as FulfilmentParamsModel);
        case FavoriteType.manager:
          return managerListProvider(
              params: initialParams as ManagerParamsModel);
        case FavoriteType.teaching:
          return courseListProvider(params: initialParams as CourseParamsModel);
        case FavoriteType.service:
          return serviceListProvider(
              params: initialParams as ServiceParamsModel);
        case FavoriteType.nadom:
          return homeWorkerListProvider(
              params: initialParams as HomeWorkerParamsModel);
        case FavoriteType.resume:
          return resumeListProvider(params: initialParams as ResumeParamsModel);
        case FavoriteType.vacancy:
          return vacancyListProvider(
              params: initialParams as VacancyParamsModel);
        case FavoriteType.property:
          return realEstateListProvider(
              params: initialParams as RealEstateParamsModel);
        case FavoriteType.apparel:
          return sewingEquipmentListProvider(
              params: initialParams as SewingEquipmentParamsModel);
      }
    }, [selectedType.value, selectedCategory.value]);

    final isNavBarVisibleValue = useState(true);
    final previousHomeScreenOffset = useState(0.0);

    final scrollController = useScrollController();
    scrollController.addListener(
      () {
        if (scrollController.position.pixels >=
                scrollController.position.maxScrollExtent &&
            scrollController.position.userScrollDirection ==
                ScrollDirection.reverse) {
          ref.read((provider as dynamic).notifier).loadMore();
        }

        // NavBarVisible
        final currentScrollOffset = scrollController.offset;

        if (currentScrollOffset.toInt() >
            previousHomeScreenOffset.value.toInt()) {
          if (isNavBarVisibleValue.value) {
            isNavBarVisibleValue.value = false;
            ref.read(isNavBarVisible.notifier).state = false;
          }
        } else if (currentScrollOffset.toInt() <
            previousHomeScreenOffset.value.toInt()) {
          if (!isNavBarVisibleValue.value) {
            isNavBarVisibleValue.value = true;
            ref.read(isNavBarVisible.notifier).state = true;
          }
        }

        previousHomeScreenOffset.value = currentScrollOffset;
      },
    );

    final state = ref.watch(provider as dynamic);

    return SafeAreaWrapper(
      child: Scaffold(
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            return ref.read((provider as dynamic).notifier).refresh();
          },
          child: CustomScrollView(
            controller: scrollController,
            physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: AppBarWithTextField(
                  onChanged: (value) {
                    final params = switch (selectedType.value) {
                      FavoriteType.workshop => SewingWorkshopParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.order => OrderParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.dordoi => DordoiContainerParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.markets => MadinaContainerParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.fulfillment => FulfilmentParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.manager => ManagerParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.teaching => CourseParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.service => ServiceParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.resume => ResumeParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.vacancy => VacancyParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.nadom => HomeWorkerParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.property => RealEstateParamsModel(
                          isFavorites: true,
                          searchText: value,
                        ),
                      FavoriteType.apparel => SewingEquipmentParamsModel(
                          isFavorites: true,
                          categoryId: selectedCategory.value,
                          searchText: value,
                        ),
                      _ => throw Exception("Unsupported FavoriteType"),
                    };
                    ref.read((provider as dynamic).notifier).filter(params);
                  },
                ),
              ),
              SliverGap(19),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 65,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 15.5),
                    scrollDirection: Axis.horizontal,
                    itemCount: favoriteCatalog.value.length,
                    separatorBuilder: (context, index) => Gap(4),
                    itemBuilder: (context, index) {
                      final item = favoriteCatalog.value[index];
                      return GestureDetector(
                        onTap: () {
                          selectedCategory.value = item.id;
                          if (item.type != selectedType.value) {
                            selectedType.value = item.type;
                          }
                        },
                        child: Container(
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: item.type == selectedType.value &&
                                    (selectedCategory.value != null
                                        ? selectedCategory.value == item.id
                                        : true)
                                ? Color(0xFF9605AC)
                                : Color(0xFFF6EFF7),
                            border: item.type == selectedType.value &&
                                    (selectedCategory.value != null
                                        ? selectedCategory.value == item.id
                                        : true)
                                ? null
                                : Border.all(
                                    width: 1,
                                    color: Color(0xFFD091D9),
                                  ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (item.imagePath != null)
                                Image.asset(
                                  item.imagePath!,
                                  height: 25,
                                )
                              else if (item.url != null)
                                CachedImage(
                                  item.url!,
                                  height: 25,
                                ),
                              Text(
                                textAlign: TextAlign.center,
                                item.title,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: item.type == selectedType.value &&
                                          (selectedCategory.value != null
                                              ? selectedCategory.value ==
                                                  item.id
                                              : true)
                                      ? Colors.white
                                      : Color(0xFF9605AC),
                                  height: 1,
                                ),
                              ),
                              if (item.titleCategory != null) ...[
                                Gap(3),
                                Text(
                                  textAlign: TextAlign.center,
                                  item.titleCategory!,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: item.type == selectedType.value &&
                                            (selectedCategory.value != null
                                                ? selectedCategory.value ==
                                                    item.id
                                                : true)
                                        ? Colors.white
                                        : Color(0xFF9605AC).withOpacity(0.5),
                                    height: 1,
                                  ),
                                ),
                                Gap(3)
                              ]
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SliverGap(25),
              (state.list as AsyncValue<List<dynamic>>).when(
                data: (data) {
                  if (data.isEmpty) {
                    return SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite_border, // Иконка избранного
                              size: 100,
                              color: Color(0xFF9665AC),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Ваш список избранного пуст",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF9665AC),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Добавьте что-нибудь, что вам нравится!",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 120),
                          ],
                        ),
                      ),
                    );
                  }
                  if (selectedType.value.isWorkshop) {
                    return SliverToBoxAdapter(
                      child: SewingWorkshopsSection(
                        sewingWorkshopList: data as List<SewingWorkshopModel>,
                        paginationLoading: state.list.isLoading,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showAuthorizedSnackbar();
                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.workshop,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) {
                          Navigator.push(
                            context,
                            SlideRoute(
                              screen: SewingWorkshopDetailsScreen(
                                id,
                                listInitialParams:
                                    initialParams as SewingWorkshopParamsModel,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  } else if (selectedType.value.isOrder) {
                    return SliverToBoxAdapter(
                      child: OrdersSection(
                        orderList: data as List<OrderModel>,
                        paginationLoading: state.list.isLoading,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showAuthorizedSnackbar();

                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.order,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) => Navigator.push(
                          context,
                          SlideRoute(
                            screen: OrderDetailsScreen(
                              id,
                              listInitialParams:
                                  initialParams as OrderParamsModel,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (selectedType.value.isDordoi) {
                    return SliverToBoxAdapter(
                      child: DordoiContainersSection(
                        dordoiContainerList: data as List<DordoiContainerModel>,
                        paginationLoading: state.list.isLoading,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showAuthorizedSnackbar();
                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.dordoi,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                      ),
                    );
                  } else if (selectedType.value.isMarkets) {
                    return SliverToBoxAdapter(
                      child: MadinaContainersSection(
                        paginationLoading: state.list.isLoading,
                        madinaContainerList: data as List<MadinaContainerModel>,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showAuthorizedSnackbar();
                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.markets,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) => Navigator.push(
                          context,
                          SlideRoute(
                            screen: MadinaMarketDetailsScreen(
                              id,
                              listInitialParams:
                                  initialParams as MadinaContainerParamsModel,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (selectedType.value.isFulfilment) {
                    return SliverToBoxAdapter(
                      child: FulfilmentsSection(
                        fulfilmentList: data as List<FulfilmentModel>,
                        paginationLoading: state.list.isLoading,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showAuthorizedSnackbar();
                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.fulfillment,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) => Navigator.push(
                          context,
                          SlideRoute(
                            screen: FulfilmentDetailsScreen(
                              id,
                              listInitialParams:
                                  initialParams as FulfilmentParamsModel,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (selectedType.value.isManager) {
                    return SliverToBoxAdapter(
                      child: ManagersSection(
                        managerList: data as List<ManagerModel>,
                        paginationLoading: state.list.isLoading,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showAuthorizedSnackbar();
                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.manager,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) => Navigator.push(
                          context,
                          SlideRoute(
                            screen: ManagerDetailsScreen(
                              id,
                              listInitialParams:
                                  initialParams as ManagerParamsModel,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (selectedType.value.isService) {
                    return SliverToBoxAdapter(
                      child: ServicesSection(
                        serviceList: data as List<ServiceModel>,
                        paginationLoading: state.list.isLoading,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showSnackbar(
                              context: context,
                              message: "Вы не авторизованы",
                              notAuthorized: true,
                            );

                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.service,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) => Navigator.push(
                          context,
                          SlideRoute(
                            screen: ServiceDetailsScreen(
                              id,
                              listInitialParams:
                                  initialParams as ServiceParamsModel,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (selectedType.value.isNadom) {
                    return SliverToBoxAdapter(
                      child: HomeWorkersSection(
                        homeWorkerList: data as List<HomeWorkerModel>,
                        paginationLoading: state.list.isLoading,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showSnackbar(
                              context: context,
                              message: "Вы не авторизованы",
                              notAuthorized: true,
                            );

                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.nadom,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) => Navigator.push(
                          context,
                          SlideRoute(
                            screen: HomeWorkerDetailsScreen(
                              id,
                              listInitialParams:
                                  initialParams as HomeWorkerParamsModel,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (selectedType.value.isResume) {
                    return SliverToBoxAdapter(
                      child: ResumesSection(
                        resumeList: data as List<ResumeModel>,
                        paginationLoading: state.list.isLoading,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showAuthorizedSnackbar();
                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.resume,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) => Navigator.push(
                          context,
                          SlideRoute(
                            screen: ResumeDetailsScreen(
                              id,
                              listInitialParams:
                                  initialParams as ResumeParamsModel,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (selectedType.value.isVacancy) {
                    return SliverToBoxAdapter(
                      child: VacanciesSection(
                        vacancyList: data as List<VacancyModel>,
                        paginationLoading: state.list.isLoading,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showAuthorizedSnackbar();
                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.vacancy,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) => Navigator.push(
                          context,
                          SlideRoute(
                            screen: VacancyDetailsScreen(
                              id,
                              listInitialParams:
                                  initialParams as VacancyParamsModel,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (selectedType.value.isProperty) {
                    return SliverToBoxAdapter(
                      child: RealEstateSection(
                        realEstateList: data as List<RealEstateModel>,
                        paginationLoading: state.list.isLoading,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showAuthorizedSnackbar();
                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.property,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) => Navigator.push(
                          context,
                          SlideRoute(
                            screen: RealEstateDetailsScreen(
                              id,
                              listInitialParams:
                                  initialParams as RealEstateParamsModel,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (selectedType.value.isSewingEquipment) {
                    return SliverToBoxAdapter(
                      child: SewingEquipmentSaleSection(
                        sewingEquipmentSaleList:
                            data as List<SewingEquipmentModel>,
                        paginationLoading: state.list.isLoading,
                        categoryId: selectedCategory.value ?? -1,
                        isShowTitleText: false,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showSnackbar(
                              context: context,
                              message: "Вы не авторизованы",
                              notAuthorized: true,
                            );

                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.apparel,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) => Navigator.push(
                          context,
                          SlideRoute(
                            screen: SewingEquipmentSaleDetailsScreen(
                              id,
                              listInitialParams:
                                  initialParams as SewingEquipmentParamsModel,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (selectedType.value.isTeaching) {
                    return SliverToBoxAdapter(
                      child: CoursesSection(
                        courseList: data as List<CourseModel>,
                        paginationLoading: state.list.isLoading,
                        onFavoriteTap: (id) {
                          if (userState.authStatus.isUnauth) {
                            showSnackbar(
                              context: context,
                              message: "Вы не авторизованы",
                              notAuthorized: true,
                            );

                            return;
                          }
                          ref.read(toggleFavoriteProvider(
                            id,
                            FavoriteType.teaching,
                          ));
                          ref
                              .read((provider as dynamic).notifier)
                              .toogleFavorite(id, isRemove: true);
                        },
                        onMoreDetailsTap: (id) => Navigator.push(
                          context,
                          SlideRoute(
                            screen: CourseDetailsScreen(
                              id,
                              listInitialParams:
                                  initialParams as CourseParamsModel,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return SliverToBoxAdapter(
                      child: Text('Ошибка'),
                    );
                  }
                },
                error: (e, stackTrace) {
                  if (userState.authStatus.isUnauth) {
                    return SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ConstrainedBox(
                              constraints:
                                  const BoxConstraints(maxWidth: 530.0),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF6EFF7),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(18),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Вы не авторизованы',
                                        style: const TextStyle(
                                          fontSize: 15,
                                          letterSpacing: -.5,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const Gap(15),
                                      ElevatedButton(
                                        onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginScreen(),
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0),
                                        child: Text('Войти'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Gap(120),
                          ],
                        ),
                      ),
                    );
                  }
                  return SliverToBoxAdapter();
                },
                loading: () => const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
              ),
              SliverGap(100),
            ],
          ),
        ),
      ),
    );
  }
}
