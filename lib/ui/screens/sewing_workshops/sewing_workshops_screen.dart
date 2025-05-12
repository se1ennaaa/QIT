import 'package:chelnok_mob/providers/nav_bar_controller_provider.dart';
import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/providers/category_providers.dart';
import 'package:chelnok_mob/providers/sewing_workshop_providers.dart';
import 'package:chelnok_mob/providers/toggle_favorite_provider.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/sewing_workshops/sewing_workshop_details_screen.dart';
import 'package:chelnok_mob/ui/screens/sewing_workshops/widgets/sewing_workshops_section.dart';
import 'package:chelnok_mob/ui/widgets/app_bars/app_bar_with_text_field.dart';
import 'package:chelnok_mob/ui/widgets/conditional_empty_view.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SewingWorkshopsScreen extends HookConsumerWidget {
  const SewingWorkshopsScreen({
    super.key,
    this.isMy = false,
    this.isFavourite = false,
  });

  final bool isMy;
  final bool isFavourite;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    final initialParams =
        SewingWorkshopParamsModel(isMy: isMy, isFavorites: isFavourite);

    final sewingWorkshopListState =
        ref.watch(sewingWorkshopListProvider(params: initialParams));
    final scrollController = useScrollController();
    final categoryListState =
        ref.watch(categoryListProvider(CategoryType.workshop));
    final isNavBarVisibleValue = useState(true);
    final previousHomeScreenOffset = useState(0.0);

    scrollController.addListener(
      () {
        if (scrollController.position.pixels >=
                scrollController.position.maxScrollExtent &&
            scrollController.position.userScrollDirection ==
                ScrollDirection.reverse) {
          ref
              .read(sewingWorkshopListProvider(params: initialParams).notifier)
              .loadMore();
        }
        // NavBarVisible
        final currentScrollOffset = scrollController.offset;
        if (currentScrollOffset > previousHomeScreenOffset.value) {
          if (isNavBarVisibleValue.value) {
            isNavBarVisibleValue.value = false;
            ref.read(isNavBarVisible.notifier).state = false;
          }
        } else if (currentScrollOffset < previousHomeScreenOffset.value) {
          if (!isNavBarVisibleValue.value) {
            isNavBarVisibleValue.value = true;
            ref.read(isNavBarVisible.notifier).state = true;
          }
        }

        previousHomeScreenOffset.value = currentScrollOffset;
      },
    );

    return SafeAreaWrapper(
      child: Scaffold(
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            return ref
                .read(
                    sewingWorkshopListProvider(params: initialParams).notifier)
                .refresh();
          },
          child: CustomScrollView(
            controller: scrollController,
            physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: AppBarWithTextField(
                  onChanged: (value) {
                    ref
                        .read(sewingWorkshopListProvider(params: initialParams)
                            .notifier)
                        .filter(
                          SewingWorkshopParamsModel(
                            searchText: value,
                          ),
                        );
                  },
                ),
              ),
              SliverGap(19),
              SliverToBoxAdapter(
                child: categoryListState.when(
                  data: (data) => SizedBox(
                    height: 60,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 15.5),
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      separatorBuilder: (context, index) => Gap(4),
                      itemBuilder: (context, index) {
                        final item = data[index];
                        return GestureDetector(
                          onTap: () {
                            if (item.id !=
                                sewingWorkshopListState.params.categoryId) {
                              ref
                                  .read(sewingWorkshopListProvider(
                                          params: initialParams)
                                      .notifier)
                                  .filter(
                                    SewingWorkshopParamsModel(
                                        categoryId: item.id),
                                  );
                            }
                          },
                          child: Container(
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: item.id ==
                                      sewingWorkshopListState.params.categoryId
                                  ? Color(0xFF9605AC)
                                  : Color(0xFFF6EFF7),
                              border: item.id !=
                                      sewingWorkshopListState.params.categoryId
                                  ? Border.all(
                                      width: 1,
                                      color: Color(0xFFD091D9),
                                    )
                                  : null,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (item.image != null)
                                  CachedImage(
                                    item.image!,
                                    height: 25,
                                  ),
                                if (item.title != null)
                                  Text(
                                    textAlign: TextAlign.center,
                                    item.title!,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: item.id ==
                                              sewingWorkshopListState
                                                  .params.categoryId
                                          ? Colors.white
                                          : Color(0xFF9605AC),
                                    ),
                                  )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  error: (e, stackTrace) => const SizedBox(),
                  loading: () => const SizedBox(),
                ),
              ),
              SliverGap(25),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text(
                    'Швейные цеха',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SliverGap(18),
              sewingWorkshopListState.list.when(
                data: (data) {
                  if (data.isEmpty) {
                    return SliverFillRemaining(
                      child: EmptyStateScreen(),
                    );
                  }
                  return SliverToBoxAdapter(
                    child: SewingWorkshopsSection(
                      canEdit: isMy,
                      sewingWorkshopList: data,
                      paginationLoading: sewingWorkshopListState.list.isLoading,
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
                          FavoriteType.workshop,
                        ));
                        ref
                            .read(sewingWorkshopListProvider(
                                    params: initialParams)
                                .notifier)
                            .toogleFavorite(id);
                      },
                      onMoreDetailsTap: (id) {
                        Navigator.push(
                          context,
                          SlideRoute(
                            screen: SewingWorkshopDetailsScreen(
                              id,
                              listInitialParams: initialParams,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
                error: (e, stackTrace) => SliverToBoxAdapter(),
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
