import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/screens/menu/unauth_menu_screen.dart';
import 'package:chelnok_mob/ui/screens/menu/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuScreenResolver extends HookConsumerWidget {
  const MenuScreenResolver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);

    if (userState.authStatus.isAuth) {
      return MenuScreen();
    } else {
      return UnauthMenuScreen();
    }
  }
}
