import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/screens/about_app/about_app_screen.dart';
import 'package:chelnok_mob/ui/screens/course/courses_screen.dart';
import 'package:chelnok_mob/ui/screens/dordoi_container/dordoi_containers_screen.dart';
import 'package:chelnok_mob/ui/screens/fulfilments/fulfilments_screen.dart';
import 'package:chelnok_mob/ui/screens/home/widgets/market_selection_sheet.dart';
import 'package:chelnok_mob/ui/screens/home/widgets/marketplace_selection_sheet.dart';
import 'package:chelnok_mob/ui/screens/madina_market/madina_market_screen.dart';
import 'package:chelnok_mob/ui/screens/manager/managers_screen.dart';
import 'package:chelnok_mob/ui/screens/menu/widgets/help_sheet.dart';

import 'package:chelnok_mob/ui/screens/menu/widgets/menu_list_tile_item.dart';
import 'package:chelnok_mob/ui/screens/order/orders_screen.dart';
import 'package:chelnok_mob/ui/screens/real_estate/real_estate_screen.dart';
import 'package:chelnok_mob/ui/screens/service/services_screen.dart';
import 'package:chelnok_mob/ui/screens/sewing_equipment/sewing_equipment_screen.dart';
import 'package:chelnok_mob/ui/screens/sewing_workshops/sewing_workshops_screen.dart';
import 'package:chelnok_mob/ui/screens/terms_and_conditions/terms_and_conditions_screen.dart';
import 'package:chelnok_mob/ui/screens/user_profile/user_profile_screen.dart';
import 'package:chelnok_mob/ui/screens/user_profile/widgets/delete_account_confirm_dialog.dart';
import 'package:chelnok_mob/ui/screens/work/work_screen.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuListTileModel {
  final String iconPath;
  final String title;
  final Widget? screen;
  final VoidCallback? onTap;

  MenuListTileModel({
    required this.iconPath,
    required this.title,
    this.screen,
    this.onTap,
  });
}

List<MapEntry<double, MenuListTileModel>> menuList(BuildContext context) => [
      MapEntry(
        29,
        MenuListTileModel(
          iconPath: 'assets/svg/avatar.svg',
          title: 'Мой профиль',
          screen: UserProfileScreen(),
        ),
      ),
      MapEntry(
        5,
        MenuListTileModel(
          iconPath: 'assets/svg/sewing_machine.svg',
          title: 'Швейные цеха',
          screen: SewingWorkshopsScreen(
            isMy: true,
          ),
        ),
      ),
      MapEntry(
        5,
        MenuListTileModel(
          iconPath: 'assets/svg/paper_with_writing.svg',
          title: 'Заказы',
          screen: OrdersScreen(
            isMy: true,
          ),
        ),
      ),
      MapEntry(
        5,
        MenuListTileModel(
          iconPath: 'assets/svg/box.svg',
          title: 'Рынки',
          onTap: () => showModalBottomSheet(
            context: context,
            builder: (context) => MarketSelectionSheet((type) {
              Navigator.pop(context);
              if (type.isMadina) {
                Navigator.push(
                  context,
                  SlideRoute(
                    screen: MadinaMarketScreen(
                      isMy: true,
                    ),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  SlideRoute(
                    screen: DordoiContainersScreen(
                      isMy: true,
                    ),
                  ),
                );
              }
            }),
          ),
        ),
      ),
      MapEntry(
        5,
        MenuListTileModel(
          iconPath: 'assets/svg/bag.svg',
          title: 'Маркетплейсы',
          onTap: () => showModalBottomSheet(
            context: context,
            builder: (context) => MarketplaceSelectionSheet(
              (type) {
                if (type.isFulfilment) {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    SlideRoute(
                      screen: FulfilmentsScreen(
                        isMy: true,
                      ),
                    ),
                  );
                } else if (type.isManager) {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    SlideRoute(
                      screen: ManagersScreen(
                        isMy: true,
                      ),
                    ),
                  );
                } else if (type.isCourse) {
                  Navigator.pop(context);

                  Navigator.push(
                    context,
                    SlideRoute(
                      screen: CoursesScreen(
                        isMy: true,
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
      MapEntry(
        5,
        MenuListTileModel(
          iconPath: 'assets/svg/briefcase2.svg',
          title: 'Услуги',
          screen: ServicesScreen(
            isMy: true,
          ),
        ),
      ),
      MapEntry(
        5,
        MenuListTileModel(
          iconPath: 'assets/svg/peoples.svg',
          title: 'Вакансии',
          screen: WorkScreen(
            isMy: true,
          ),
        ),
      ),
      MapEntry(
        5,
        MenuListTileModel(
          iconPath: 'assets/svg/home2.svg',
          title: 'Недвижимость',
          screen: RealEstateScreen(
            isMy: true,
          ),
        ),
      ),
      MapEntry(
        32,
        MenuListTileModel(
          iconPath: 'assets/svg/sewing_equipment.svg',
          title: 'Швейное оборудование',
          screen: SewingEquipmentScreen(
            isMy: true,
          ),
        ),
      ),
      MapEntry(
        5,
        MenuListTileModel(
          iconPath: 'assets/svg/paper_with_writing.svg',
          title: 'Условия и правила',
          screen: TermsAndConditionsScreen(),
        ),
      ),
      // MapEntry(
      //   5,
      //   MenuListTileModel(
      //     iconPath: 'assets/svg/protection.svg',
      //     title: 'Безопасность',
      //     screen: null,
      //   ),
      // ),
      MapEntry(
        5,
        MenuListTileModel(
          iconPath: 'assets/svg/chat_icon.svg',
          title: 'Помощь',
          onTap: () => showModalBottomSheet(
            context: context,
            builder: (context) => HelpSheet(),
          ),
        ),
      ),
      MapEntry(
        5,
        MenuListTileModel(
          iconPath: 'assets/svg/info_information_icon.svg',
          title: 'О приложении',
          screen: AboutAppScreen(),
        ),
      ),
    ];

class MenuScreen extends HookConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeAreaWrapper(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(19),
                for (final item in menuList(context)) ...[
                  MenuListTileItem(
                    model: item.value,
                  ),
                  Gap(item.key),
                ],
                Gap(45),
                GestureDetector(
                  onTap: () {
                    ref.read(userProvider.notifier).unauthenticate();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xFFF6EFF7),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Выйти из аккаунта',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFFA0316),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Gap(10),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return DeleteAccountConfirmDialog(
                          onConfirm: () {
                            ref.read(userProvider.notifier).unauthenticate();
                          },
                        );
                      },
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xFFF6EFF7),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Удалить аккаунт',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFFA0316),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Gap(100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
