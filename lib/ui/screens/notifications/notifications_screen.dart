import 'package:chelnok_mob/providers/notification_providers.dart';

import 'package:chelnok_mob/ui/screens/notifications/notification_details_screen.dart';
import 'package:chelnok_mob/ui/widgets/app_bars/custom_app_bar.dart';

import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationsScreen extends HookConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationState = ref.watch(notificationListProvider());
    final scrollController = useScrollController();

    scrollController.addListener(
      () {
        if (scrollController.position.pixels >=
                scrollController.position.maxScrollExtent &&
            scrollController.position.userScrollDirection ==
                ScrollDirection.reverse) {
          ref.read(notificationListProvider().notifier).loadMore();
        }
      },
    );
    return SafeAreaWrapper(
      child: Scaffold(
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            return ref.read(notificationListProvider().notifier).refresh();
          },
          child: CustomScrollView(
            controller: scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CustomAppBar(
                  title: 'Уведомления',
                  // onLogoutTap: () {
                  //   ref.read(userProvider.notifier).unauthenticate();
                  //   Navigator.pop(context);
                  // },
                ),
              ),
              SliverGap(20),
              notificationState.list.when(
                data: (data) {
                  if (data.isEmpty) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: Text('Уведомлений нет'),
                      ),
                    );
                  }
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final item = data[index];
                        return Bounceable(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NotificationDetailsScreen(item.id),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFF6EFF7),
                              border: Border.all(
                                width: 1,
                                color: Color(0xFFD091D9),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (item.title != null)
                                        Text(
                                          item.title!,
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      Gap(8),
                                      if (item.description != null)
                                        Text(
                                          item.description!,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFFB3B3B3),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/svg/arrow_right.svg',
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: data.length,
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
            ],
          ),
        ),
      ),
    );
  }
}
