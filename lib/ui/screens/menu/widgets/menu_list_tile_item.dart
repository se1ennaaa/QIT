import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/menu/menu_screen.dart';
import 'package:chelnok_mob/ui/screens/order/orders_screen.dart';
import 'package:chelnok_mob/ui/screens/sewing_workshops/sewing_workshops_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuListTileItem extends HookConsumerWidget {
  const MenuListTileItem({super.key, required this.model});

  final MenuListTileModel model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);

    void navigatorPush() {
      Navigator.push(
        context,
        SlideRoute(
          screen: model.screen!,
        ),
      );
    }

    return Bounceable(
      onTap: () {
        if (model.screen != null) {
          userState.userProfile.maybeWhen(
            orElse: () => null,
            data: (data) {
              if (data.role == null) return;
              if (model.screen is SewingWorkshopsScreen) {
                if (data.role!.isSewingWorkshop) {
                  navigatorPush();
                } else {
                  showSnackbar(context: context, message: "У вас нет доступа");
                }
              } else if (model.screen is OrdersScreen) {
                if (data.role!.isCustomer) {
                  navigatorPush();
                } else {
                  showSnackbar(context: context, message: "У вас нет доступа");
                }
              } else {
                navigatorPush();
              }
            },
            error: (error, stackTrace) =>
                showSnackbar(context: context, message: error.toString()),
          );

          if (userState.authStatus.isUnauth) {
            navigatorPush();
          }
        } else if (model.onTap != null) {
          model.onTap!();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF6EFF7),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1E3F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    model.iconPath,
                    color: Color(0xFF9605AC),
                  ),
                ),
                Gap(12),
                Text(
                  model.title,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            SvgPicture.asset(
              'assets/svg/right_arrow.svg',
            ),
          ],
        ),
      ),
    );
  }
}
