import 'package:chelnok_mob/providers/nav_bar_controller_provider.dart';
import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:chelnok_mob/data/models/dordoi_container_model.dart';

import 'package:chelnok_mob/providers/category_providers.dart';

import 'package:chelnok_mob/providers/dordoi_market_providers.dart';
import 'package:chelnok_mob/providers/toggle_favorite_provider.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/dordoi_container/widgets/dordoi_containers_section.dart';

import 'package:chelnok_mob/ui/widgets/app_bars/app_bar_with_text_field.dart';
import 'package:chelnok_mob/ui/widgets/conditional_empty_view.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DordoiContainersScreen extends HookConsumerWidget {
  const DordoiContainersScreen({
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
        DordoiContainerParamsModel(isMy: isMy, isFavorites: isFavourite);
    final dordoiContainerListState =
        ref.watch(dordoiContainerListProvider(params: initialParams));
    final scrollController = useScrollController();
    final categoryListState =
        ref.watch(categoryListProvider(CategoryType.dordoi));

    final isNavBarVisibleValue = useState(true);
    final previousHomeScreenOffset = useState(0.0);

    scrollController.addListener(
      () {
        if (scrollController.position.pixels >=
                scrollController.position.maxScrollExtent &&
            scrollController.position.userScrollDirection ==
                ScrollDirection.reverse) {
          ref
              .read(dordoiContainerListProvider(params: initialParams).notifier)
              .loadMore();
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

    return SafeAreaWrapper(
      child: Scaffold(
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            return ref
                .read(
                    dordoiContainerListProvider(params: initialParams).notifier)
                .refresh();
          },
          child: CustomScrollView(
            controller: scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: AppBarWithTextField(
                  onChanged: (value) {
                    ref
                        .read(dordoiContainerListProvider(params: initialParams)
                            .notifier)
                        .filter(
                          DordoiContainerParamsModel(
                            searchText: value,
                          ),
                        );
                  },
                ),
              ),
              const SliverGap(19),
              SliverToBoxAdapter(
                child: categoryListState.when(
                  data: (data) => SizedBox(
                    height: 60,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 15.5),
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      separatorBuilder: (context, index) => const Gap(4),
                      itemBuilder: (context, index) {
                        final item = data[index];
                        return GestureDetector(
                          onTap: () {
                            if (item.id !=
                                dordoiContainerListState.params.categoryId) {
                              ref
                                  .read(dordoiContainerListProvider(
                                          params: initialParams)
                                      .notifier)
                                  .filter(
                                    DordoiContainerParamsModel(
                                      categoryId: item.id,
                                    ),
                                  );
                            }
                          },
                          child: Container(
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: item.id ==
                                      dordoiContainerListState.params.categoryId
                                  ? const Color(0xFF9605AC)
                                  : const Color(0xFFF6EFF7),
                              border: item.id !=
                                      dordoiContainerListState.params.categoryId
                                  ? Border.all(
                                      width: 1,
                                      color: const Color(0xFFD091D9),
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
                                              dordoiContainerListState
                                                  .params.categoryId
                                          ? Colors.white
                                          : const Color(0xFF9605AC),
                                    ),
                                  ),
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
              const SliverGap(15),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text(
                    'Дордой рынок',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SliverGap(18),
              dordoiContainerListState.list.when(
                data: (data) {
                  if (data.isEmpty) {
                    return SliverFillRemaining(
                      child: EmptyStateScreen(),
                    );
                  }
                  return SliverToBoxAdapter(
                    child: DordoiContainersSection(
                      canEdit: isMy,
                      dordoiContainerList: data,
                      paginationLoading:
                          dordoiContainerListState.list.isLoading,
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
                          FavoriteType.dordoi,
                        ));
                        ref
                            .read(dordoiContainerListProvider(
                                    params: initialParams)
                                .notifier)
                            .toogleFavorite(id);
                      },
                    ),
                  );
                },
                error: (e, stackTrace) => const SliverToBoxAdapter(),
                loading: () => const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
              ),
              // SliverGap(100),
            ],
          ),
        ),
      ),
    );
  }
}
