import 'package:chelnok_mob/data/models/feedback_model.dart';
import 'package:chelnok_mob/data/models/user_model.dart';
import 'package:chelnok_mob/providers/feedback_providers.dart';
import 'package:chelnok_mob/providers/nav_bar_controller_provider.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';

import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import '../../widgets/app_bars/custom_app_bar.dart';

class UniversalReviewsScreen extends HookConsumerWidget {
  const UniversalReviewsScreen({
    super.key,
    required this.type,
    required this.id,
  });

  final FeedbackType type;
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    final initialParams = FeedbackParamsModel(type: type.name, typeId: id);
    final feedbacks = ref.watch(feedbackListProvider(params: initialParams));
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
              .read(feedbackListProvider(params: initialParams).notifier)
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
        body: RefreshIndicator(
          onRefresh: () async => ref
              .read(feedbackListProvider(params: initialParams).notifier)
              .refresh(),
          child: CustomScrollView(
            controller: scrollController,
            physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CustomAppBar(
                  title: 'Отзывы',
                ),
              ),
              SliverGap(32),
              feedbacks.list.when(
                data: (data) {
                  if (data.isEmpty) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: Text('Нет отзывов'),
                      ),
                    );
                  }
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final item = data[index];
                        return Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF6EFF7),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFD091D9),
                            ),
                          ),
                          padding: EdgeInsets.all(20),
                          margin:
                              EdgeInsets.only(left: 16, right: 16, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${item.user?.name} ${item.user?.surname}',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(5, (index) {
                                      final isFilled =
                                          index < (item.rating ?? 0).round();
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 2.5),
                                        child: SvgPicture.asset(
                                          isFilled
                                              ? 'assets/svg/star_fill.svg'
                                              : 'assets/svg/star.svg',
                                          height: 15,
                                          width: 15,
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                              Gap(5),
                              if (item.createAt != null)
                                Text(
                                  formatDate(item.createAt!.toLocal()),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF959595),
                                  ),
                                ),
                              Gap(8),
                              if (item.text != null)
                                Text(
                                  item.text!,
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                      childCount: data.length,
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
              SliverGap(130),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 80),
          child: ElevatedButton(
            onPressed: () {
              if (userState.authStatus.isUnauth) {
                showSnackbar(
                  context: context,
                  message: "Вы не авторизованы",
                  notAuthorized: true,
                );

                return;
              }
              showFeedbackDialog(
                context,
                ref,
                type,
                id,
                initialParams,
                userState.userProfile.valueOrNull,
              );
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              textStyle: TextStyle(fontSize: 16),
            ),
            child: Text("Написать отзыв"),
          ),
        ),
      ),
    );
  }
}

String formatDate(DateTime date) {
  final now = DateTime.now();
  final yesterday = now.subtract(Duration(days: 1));

  if (date.year == now.year && date.month == now.month && date.day == now.day) {
    return 'Сегодня ${DateFormat('HH:mm').format(date)}';
  } else if (date.year == yesterday.year &&
      date.month == yesterday.month &&
      date.day == yesterday.day) {
    return 'Вчера ${DateFormat('HH:mm').format(date)}';
  } else {
    return DateFormat('dd MMMM yyyy, HH:mm', 'ru').format(date);
  }
}

Future<void> showFeedbackDialog(
    BuildContext context,
    WidgetRef ref,
    FeedbackType type,
    int typeId,
    FeedbackParamsModel listInitialParams,
    UserModel? user) async {
  final TextEditingController feedbackController = TextEditingController();
  final ValueNotifier<double> ratingNotifier = ValueNotifier(0.0);

  await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Написать отзыв"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Оцените от 1 до 5"),
            ValueListenableBuilder<double>(
              valueListenable: ratingNotifier,
              builder: (context, rating, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return IconButton(
                      icon: Icon(
                        index < rating ? Icons.star : Icons.star_border,
                        color: Colors.amber,
                      ),
                      onPressed: () {
                        ratingNotifier.value = index + 1.0;
                      },
                    );
                  }),
                );
              },
            ),
            Gap(10),
            TextField(
              controller: feedbackController,
              decoration: InputDecoration(
                labelText: "Ваш отзыв",
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: "Напишите отзыв...",
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Отмена"),
          ),
          ElevatedButton(
            onPressed: () async {
              final feedbackText = feedbackController.text;
              final rating = ratingNotifier.value;

              if (feedbackText.isEmpty || rating == 0.0) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Заполните все поля!")),
                );
                return;
              }

              // Создаем модель отзыва
              final feedback = FeedbackModel(
                type: type.name,
                typeId: typeId,
                text: feedbackText,
                rating: rating,
                id: -1,
              );

              // Вызываем функцию createFeedback
              final response =
                  await ref.read(createFeedbackProvider(feedback).future);
              if (response.isSuccessful) {
                ref
                    .read(feedbackListProvider(params: listInitialParams)
                        .notifier)
                    .add(FeedbackModel(
                      id: -1,
                      createAt: DateTime.now(),
                      text: feedbackText,
                      user: user,
                      rating: rating,
                      type: type.name,
                      typeId: typeId,
                    ));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Отзыв успешно добавлен!")),
                );
                Navigator.of(context).pop(); // Закрыть диалог
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Ошибка: ${response.message}")),
                );
              }
            },
            child: Text("Отправить"),
          ),
        ],
      );
    },
  );
}
