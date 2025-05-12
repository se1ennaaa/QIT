import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/providers/registration_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/auth/register/email_entry_screen.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/models/user_role_model.dart';
import '../../../widgets/continue_elevated_button.dart';

List<UserRoleModel> getRoleList() => [
      UserRoleModel(
        name: 'Швейный цех',
        description:
            'Регистрируйся как швейный цех,чтобы добавить своё предприятие и находить заказчиков',
        slug: 'sewing_workshop',
      ),
      UserRoleModel(
        name: 'Заказчик',
        description:
            'Регистрируйся как заказчик,чтобы добавить свой заказы и находить исполнителей',
        slug: 'customer',
      ),
      UserRoleModel(
        name: 'Обычный пользователь',
        description: 'Регистрируйся как обычный пользователь для других целей',
        slug: 'user',
      ),
    ];

class RoleSelectionScreen extends HookConsumerWidget {
  const RoleSelectionScreen({
    super.key,
    this.isRegister = true,
  });

  final bool isRegister;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedRole = useState<String?>(null);
    ref.watch(registrationProvider);
    return SafeAreaWrapper(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(96),
              Text(
                'Добро пожаловать в приложение Chelnok!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gap(12),
              Text(
                textAlign: TextAlign.center,
                'Выберите роль как хотели б зарегистрироваться',
                style: TextStyle(
                  color: Color(0xFFB3B3B3),
                  fontSize: 17,
                ),
              ),
              Gap(40),
              ...List.generate(
                getRoleList().length,
                (index) {
                  final item = getRoleList()[index];
                  return Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            selectedRole.value = item.slug;
                          },
                          child: SizedBox(
                            height: 36,
                            // width: 210,
                            child: Row(
                              children: [
                                Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: selectedRole.value == item.slug
                                        ? Color(0xFF9605AC)
                                        : Color(0xFFD9D9D9),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xFFCECECE),
                                    ),
                                  ),
                                ),
                                Gap(7),
                                Text(item.name),
                              ],
                            ),
                          ),
                        ),
                        if (selectedRole.value == item.slug &&
                            item.description != null) ...[
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 40),
                            decoration: BoxDecoration(
                              color: Color(0xFFF6EFF7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 16,
                            ),
                            child: Text(
                              item.description!,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Gap(30),
                        ]
                      ],
                    ),
                  );
                },
              ),
              Spacer(),
              ContinueElevatedButton(
                () {
                  if (selectedRole.value == null) {
                    showSnackbar(
                        context: context, message: 'Пожалуйста выберите роль');
                    return;
                  }
                  if (isRegister) {
                    ref
                        .watch(registrationProvider.notifier)
                        .setRole(selectedRole.value!);
                    Navigator.push(
                      context,
                      SlideRoute(
                        screen: EmailEntryScreen(
                          role: selectedRole.value,
                        ),
                      ),
                    );
                  } else {
                    Navigator.pop(context, selectedRole.value);
                  }
                },
              ),
              if (isRegister) ...[
                Gap(20),
                RichText(
                  text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pop(context);
                      },
                    text: 'У вас уже есть аккаунт?',
                    style: TextStyle(
                      fontFamily: GoogleFonts.ubuntu().fontFamily,
                      color: Color(0xFF626262),
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: ' ',
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
                          },
                        text: 'Вход',
                        style: TextStyle(
                          fontFamily: GoogleFonts.ubuntu().fontFamily,
                          color: Color(0xFFB34DC2),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              Gap(40),
            ],
          ),
        ),
      ),
    );
  }
}
