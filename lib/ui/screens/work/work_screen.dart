import 'package:chelnok_mob/data/models/resume_model.dart';
import 'package:chelnok_mob/data/models/vacancy_model.dart';
import 'package:chelnok_mob/helpers/filter_helper.dart';
import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/providers/nav_bar_controller_provider.dart';
import 'package:chelnok_mob/providers/resume_providers.dart';
import 'package:chelnok_mob/providers/toggle_favorite_provider.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/providers/vacancy_providers.dart';
import 'package:chelnok_mob/ui/screens/work/resumes/resume_details_screen.dart';
import 'package:chelnok_mob/ui/screens/work/resumes/widgets/resumes_section.dart';
import 'package:chelnok_mob/ui/screens/work/vacancy/vacancy_details_screen.dart';
import 'package:chelnok_mob/ui/screens/work/vacancy/widgets/vacancies_section.dart';
import 'package:chelnok_mob/ui/widgets/app_bars/app_bar_with_text_field.dart';
import 'package:chelnok_mob/ui/widgets/conditional_empty_view.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WorkScreen extends HookConsumerWidget {
  const WorkScreen({
    super.key,
    this.isMy = false,
    this.isFavourite = false,
  });

  final bool isMy;
  final bool isFavourite;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    final initialVacancyParams =
        VacancyParamsModel(isMy: isMy, isFavorites: isFavourite);
    final initialResumeParams =
        ResumeParamsModel(isMy: isMy, isFavorites: isFavourite);

    final vacancyListState =
        ref.watch(vacancyListProvider(params: initialVacancyParams));
    final resumeListState =
        ref.watch(resumeListProvider(params: initialResumeParams));
    final scrollController = useScrollController();
    final selectedFilterOption = useState('vacancy');
    final isNavBarVisibleValue = useState(true);
    final previousHomeScreenOffset = useState(0.0);

    // Подгрузка данных при скролле
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent &&
          scrollController.position.userScrollDirection ==
              ScrollDirection.reverse) {
        if (selectedFilterOption.value == 'vacancy') {
          ref
              .read(vacancyListProvider(params: initialVacancyParams).notifier)
              .loadMore();
        } else if (selectedFilterOption.value == 'resume') {
          ref
              .read(resumeListProvider(params: initialResumeParams).notifier)
              .loadMore();
        }
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
    });

    return SafeAreaWrapper(
      child: Scaffold(
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            if (selectedFilterOption.value == 'vacancy') {
              return ref
                  .read(vacancyListProvider(params: initialVacancyParams)
                      .notifier)
                  .refresh();
            } else if (selectedFilterOption.value == 'resume') {
              return ref
                  .read(
                      resumeListProvider(params: initialResumeParams).notifier)
                  .refresh();
            }
          },
          child: CustomScrollView(
            controller: scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: AppBarWithTextField(
                  onChanged: (value) {
                    if (selectedFilterOption.value == 'vacancy') {
                      ref
                          .read(
                              vacancyListProvider(params: initialVacancyParams)
                                  .notifier)
                          .filter(
                            VacancyParamsModel(searchText: value),
                          );
                    } else if (selectedFilterOption.value == 'resume') {
                      ref
                          .read(resumeListProvider(params: initialResumeParams)
                              .notifier)
                          .filter(
                            ResumeParamsModel(searchText: value),
                          );
                    }
                  },
                ),
              ),
              const SliverGap(19),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 60,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 15.5),
                    scrollDirection: Axis.horizontal,
                    itemCount: getWorkFilterOptions().length,
                    separatorBuilder: (context, index) => const Gap(4),
                    itemBuilder: (context, index) {
                      final item = getWorkFilterOptions()[index];
                      return GestureDetector(
                        onTap: () {
                          selectedFilterOption.value = item.slug;
                          if (item.slug == 'vacancy') {
                            ref
                                .read(vacancyListProvider(
                                        params: initialVacancyParams)
                                    .notifier)
                                .refresh();
                          } else if (item.slug == 'resume') {
                            ref
                                .read(resumeListProvider(
                                        params: initialResumeParams)
                                    .notifier)
                                .refresh();
                          }
                        },
                        child: Container(
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: item.slug == selectedFilterOption.value
                                ? const Color(0xFF9605AC)
                                : const Color(0xFFF6EFF7),
                            border: item.slug != selectedFilterOption.value
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
                              Image.asset(
                                item.imagePath,
                                height: 25,
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                item.title,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: item.slug == selectedFilterOption.value
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
              ),
              const SliverGap(25),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text(
                    selectedFilterOption.value == 'vacancy'
                        ? 'Вакансии'
                        : 'Резюме',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SliverGap(18),
              if (selectedFilterOption.value == 'vacancy')
                vacancyListState.list.when(
                  data: (data) {
                    if (data.isEmpty) {
                      return SliverFillRemaining(
                        child: EmptyStateScreen(),
                      );
                    }
                    return SliverToBoxAdapter(
                      child: VacanciesSection(
                        canEdit: isMy,
                        vacancyList: data,
                        paginationLoading: vacancyListState.list.isLoading,
                        onMoreDetailsTap: (id) {
                          Navigator.push(
                            context,
                            SlideRoute(
                              screen: VacancyDetailsScreen(
                                id,
                                listInitialParams: initialVacancyParams,
                              ),
                            ),
                          );
                        },
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
                            FavoriteType.vacancy,
                          ));

                          ref
                              .read(vacancyListProvider(
                                      params: initialVacancyParams)
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
                )
              else if (selectedFilterOption.value == 'resume')
                resumeListState.list.when(
                  data: (data) {
                    if (data.isEmpty) {
                      return SliverFillRemaining(
                        child: EmptyStateScreen(),
                      );
                    }
                    return SliverToBoxAdapter(
                      child: ResumesSection(
                        resumeList: data,
                        canEdit: isMy,
                        paginationLoading: resumeListState.list.isLoading,
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
                            FavoriteType.resume,
                          ));
                          ref
                              .read(resumeListProvider(
                                      params: initialResumeParams)
                                  .notifier)
                              .toogleFavorite(id);
                        },
                        onMoreDetailsTap: (id) {
                          Navigator.push(
                            context,
                            SlideRoute(
                              screen: ResumeDetailsScreen(
                                id,
                                listInitialParams: initialResumeParams,
                              ),
                            ),
                          );
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
              SliverGap(100),
            ],
          ),
        ),
      ),
    );
  }
}
