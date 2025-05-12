import 'package:chelnok_mob/data/models/course_model.dart';
import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/providers/course_providers.dart';
import 'package:chelnok_mob/providers/nav_bar_controller_provider.dart';
import 'package:chelnok_mob/providers/toggle_favorite_provider.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/course/course_details_screen.dart';
import 'package:chelnok_mob/ui/screens/course/widgets/courses_section.dart';
import 'package:chelnok_mob/ui/widgets/app_bars/app_bar_with_text_field.dart';
import 'package:chelnok_mob/ui/widgets/conditional_empty_view.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CoursesScreen extends HookConsumerWidget {
  const CoursesScreen({
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
        CourseParamsModel(isMy: isMy, isFavorites: isFavourite);
    final courseListState =
        ref.watch(courseListProvider(params: initialParams));
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
              .read(courseListProvider(params: initialParams).notifier)
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
                .read(courseListProvider(params: initialParams).notifier)
                .refresh();
          },
          child: CustomScrollView(
            controller: scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              // AppBar с поиском
              SliverToBoxAdapter(
                child: AppBarWithTextField(
                  onChanged: (value) {
                    ref
                        .read(
                            courseListProvider(params: initialParams).notifier)
                        .filter(
                          CourseParamsModel(
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
                    'Курсы',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              SliverGap(18),
              courseListState.list.when(
                data: (data) {
                  if (data.isEmpty) {
                    return SliverFillRemaining(
                      child: EmptyStateScreen(),
                    );
                  }
                  return SliverToBoxAdapter(
                    child: CoursesSection(
                      canEdit: isMy,
                      courseList: data,
                      paginationLoading: courseListState.list.isLoading,
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
                            .read(courseListProvider(params: initialParams)
                                .notifier)
                            .toogleFavorite(id);
                      },
                      onMoreDetailsTap: (id) => Navigator.push(
                        context,
                        SlideRoute(
                          screen: CourseDetailsScreen(
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
