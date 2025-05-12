import 'package:chelnok_mob/data/models/service_model.dart';
import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/providers/nav_bar_controller_provider.dart';
import 'package:chelnok_mob/providers/service_providers.dart';
import 'package:chelnok_mob/providers/toggle_favorite_provider.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/service/service_details_screen.dart';
import 'package:chelnok_mob/ui/screens/service/widgets/servicess_section.dart';
import 'package:chelnok_mob/ui/widgets/app_bars/app_bar_with_text_field.dart';
import 'package:chelnok_mob/ui/widgets/conditional_empty_view.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ServicesScreen extends HookConsumerWidget {
  const ServicesScreen({
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
        ServiceParamsModel(isMy: isMy, isFavorites: isFavourite);
    final serviceListState =
        ref.watch(serviceListProvider(params: initialParams));
    final scrollController = useScrollController();
    final isNavBarVisibleValue = useState(true);
    final previousHomeScreenOffset = useState(0.0);

    scrollController.addListener(
      () {
        if (scrollController.position.pixels >=
                scrollController.position.maxScrollExtent &&
            scrollController.position.userScrollDirection ==
                ScrollDirection.reverse) {
          ref
              .read(serviceListProvider(params: initialParams).notifier)
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
                .read(serviceListProvider(params: initialParams).notifier)
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
                        .read(
                            serviceListProvider(params: initialParams).notifier)
                        .filter(
                          ServiceParamsModel(
                            searchText: value,
                          ),
                        );
                  },
                ),
              ),
              const SliverGap(25),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text(
                    'Услуги',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SliverGap(18),
              serviceListState.list.when(
                data: (data) {
                  if (data.isEmpty) {
                    return SliverFillRemaining(
                      child: EmptyStateScreen(),
                    );
                  }
                  return SliverToBoxAdapter(
                    child: ServicesSection(
                      serviceList: data,
                      canEdit: isMy,
                      paginationLoading: serviceListState.list.isLoading,
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
                            .read(serviceListProvider(params: initialParams)
                                .notifier)
                            .toogleFavorite(id);
                      },
                      onMoreDetailsTap: (id) => Navigator.push(
                        context,
                        SlideRoute(
                          screen: ServiceDetailsScreen(
                            id,
                            listInitialParams: initialParams,
                          ),
                        ),
                      ),
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
              SliverGap(100),
            ],
          ),
        ),
      ),
    );
  }
}
