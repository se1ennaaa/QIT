import 'package:chelnok_mob/providers/notification_providers.dart';
import 'package:chelnok_mob/ui/widgets/app_bars/custom_app_bar.dart';

import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationDetailsScreen extends HookConsumerWidget {
  const NotificationDetailsScreen(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationState = ref.watch(notificationDetailsProvider(id));

    return SafeAreaWrapper(
      child: Scaffold(
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            return ref.read(notificationListProvider().notifier).refresh();
          },
          child: CustomScrollView(
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
              SliverGap(30),
              notificationState.when(
                data: (data) {
                  return SliverToBoxAdapter(
                    child: Column(
                      children: [
                        if (data.createdAt != null)
                          Text(
                            '${data.createdAt!.day}.${data.createdAt!.month}.${data.createdAt!.year}',
                            style: TextStyle(
                              color: Color(0xFF959595),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        Gap(30),
                        Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.symmetric(horizontal: 35),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF6EFF7),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFD091D9),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(data.description ?? ''),
                        ),
                      ],
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
