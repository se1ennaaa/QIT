import 'package:chelnok_mob/config/utils/push_notifications_manager.dart';
import 'package:chelnok_mob/ui/navigation_bar_view.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../config/theme/theme.dart';
import '../data/storage/local_storage.dart';

import '../ui/screens/onboarding/onboarding_screen.dart';

class App extends StatefulHookConsumerWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();

  // ignore: library_private_types_in_public_api
  static _AppState of(BuildContext context) =>
      context.findAncestorStateOfType<_AppState>()!;
  static AppTheme appTheme(BuildContext context) => of(context)._appTheme;
}

class _AppState extends ConsumerState<App> {
  AppTheme _appTheme = AppTheme.defaultTheme;

  void initializeTheme() {
    _appTheme = AppTheme.fromType(ThemeType.light);
  }

  @override
  void initState() {
    PushNotificationsManager().init();
    super.initState();
    initializeTheme();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _appTheme.themeData,
        home:
            LocalStorage().firstRun ? OnboardingScreen() : NavigationBarView(),
      ),
    );
  }
}
