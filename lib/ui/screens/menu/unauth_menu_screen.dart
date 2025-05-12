import 'package:chelnok_mob/ui/screens/about_app/about_app_screen.dart';
import 'package:chelnok_mob/ui/screens/auth/login/login_screen.dart';
import 'package:chelnok_mob/ui/screens/menu/menu_screen.dart';
import 'package:chelnok_mob/ui/screens/menu/widgets/help_sheet.dart';
import 'package:chelnok_mob/ui/screens/menu/widgets/menu_list_tile_item.dart';
import 'package:chelnok_mob/ui/screens/terms_and_conditions/terms_and_conditions_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

List<MapEntry<double, MenuListTileModel>> unauthMenuList(
        BuildContext context) =>
    [
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

class UnauthMenuScreen extends StatelessWidget {
  const UnauthMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Gap(120),
            Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 530.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF6EFF7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Вы не авторизованы',
                          style: const TextStyle(
                            fontSize: 15,
                            letterSpacing: -.5,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(15),
                        ElevatedButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(elevation: 0),
                          child: Text('Войти'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Gap(20),
            for (final item in unauthMenuList(context)) ...[
              MenuListTileItem(
                model: item.value,
              ),
              Gap(item.key),
            ],
          ],
        ),
      ),
    );
  }
}
