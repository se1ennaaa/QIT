import 'package:chelnok_mob/providers/nav_bar_controller_provider.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/favorite_category_screen/favorites_screen.dart';
import 'package:chelnok_mob/ui/screens/home/home_screen.dart';
import 'package:chelnok_mob/ui/screens/menu/menu_screen_resolver.dart';
import 'package:chelnok_mob/ui/screens/order/orders_screen.dart';
import 'package:chelnok_mob/ui/widgets/category_selection_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final List<GlobalKey<NavigatorState>> navigatorKeys = [
  GlobalKey<NavigatorState>(),
  GlobalKey<NavigatorState>(),
  GlobalKey<NavigatorState>(),
  GlobalKey<NavigatorState>(),
];

class NavigationBarView extends HookConsumerWidget {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(0);
    final userState = ref.watch(userProvider);

    final navScrollController = useState(ScrollController()).value;
    final isVisible = useState(true);
    final showScrollToTop = useState(false);

    useEffect(() {
      void handleScroll() {
        if (navScrollController.position.userScrollDirection ==
            ScrollDirection.reverse) {
          if (isVisible.value) isVisible.value = false;
          if (showScrollToTop.value) showScrollToTop.value = false;
        } else if (navScrollController.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (!isVisible.value) isVisible.value = true;
          if (!showScrollToTop.value) showScrollToTop.value = true;
        }
      }

      navScrollController.addListener(handleScroll);
      return () => navScrollController.removeListener(handleScroll);
    }, [navScrollController]);

    void scrollToTop() {
      navScrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }

    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await navigatorKeys[currentIndex.value].currentState!.maybePop();
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: currentIndex.value,
          children: [
            _buildNavigator(
                0, HomeScreen(scrollController: navScrollController)),
            _buildNavigator(1, const FavoritesScreen()),
            _buildNavigator(2, const OrdersScreen(isMy: true)),
            const MenuScreenResolver(),
          ],
        ),
        floatingActionButton: showScrollToTop.value
            ? FloatingActionButton(
                onPressed: scrollToTop,
                backgroundColor: const Color(0xFF9605AC),
                mini: true,
                child: const Icon(Icons.arrow_upward, color: Colors.white),
              )
            : null,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: isVisible.value ? 90 : 0,
          curve: Curves.easeInOut,
          child: SafeArea(
            top: true,
            bottom: false,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: const Color(0xFF2B2B2B),
              ),
              child: Row(
                children: [
                  _buildBottomNavItem(
                    icon: 'assets/svg/gray_cow.svg',
                    label: 'Главная',
                    index: 0,
                    currentIndex: currentIndex,
                    navigatorKeys: navigatorKeys,
                  ),
                  _buildBottomNavItem(
                    icon: 'assets/svg/heart.svg',
                    label: 'Избранное',
                    index: 1,
                    currentIndex: currentIndex,
                    navigatorKeys: navigatorKeys,
                  ),
                  Expanded(
                    child: Bounceable(
                      onTap: () async {
                        if (userState.authStatus.isUnauth) {
                          showSnackbar(
                            context: context,
                            message: "Вы не авторизованы",
                            notAuthorized: true,
                          );
                          return;
                        }

                        await showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) => const CategorySelectionSheet(),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF9605AC),
                        ),
                        padding: const EdgeInsets.all(17),
                        child: SvgPicture.asset('assets/svg/plus.svg'),
                      ),
                    ),
                  ),
                  _buildBottomNavItem(
                    icon: 'assets/svg/paper_with_writing.svg',
                    label: 'Заказы',
                    index: 2,
                    currentIndex: currentIndex,
                    navigatorKeys: navigatorKeys,
                  ),
                  _buildBottomNavItem(
                    icon: 'assets/svg/menu.svg',
                    label: 'Меню',
                    index: 3,
                    currentIndex: currentIndex,
                    navigatorKeys: navigatorKeys,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavigator(int index, Widget child) {
    return Navigator(
      key: navigatorKeys[index],
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: (_) => KeepAliveWrapper(child: child),
      ),
    );
  }

  Widget _buildBottomNavItem({
    required String icon,
    required String label,
    required int index,
    required ValueNotifier<int> currentIndex,
    required List<GlobalKey<NavigatorState>> navigatorKeys,
  }) {
    return Expanded(
      child: Bounceable(
        onTap: () {
          if (currentIndex.value == index) {
            navigatorKeys[index]
                .currentState
                ?.popUntil((route) => route.isFirst);
          } else {
            currentIndex.value = index;
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              color: currentIndex.value != index
                  ? const Color(0xFFB3B3B3)
                  : const Color(0xFF9605AC),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: currentIndex.value != index
                    ? const Color(0xFFB3B3B3)
                    : const Color(0xFF9605AC),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KeepAliveWrapper extends StatefulWidget {
  final Widget child;
  const KeepAliveWrapper({Key? key, required this.child}) : super(key: key);

  @override
  _KeepAliveWrapperState createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}
