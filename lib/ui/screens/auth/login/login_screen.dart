import 'dart:io';

import 'package:chelnok_mob/hooks/use_form_key.dart';
import 'package:chelnok_mob/providers/login_providers.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/navigation_bar_view.dart';
import 'package:chelnok_mob/ui/screens/auth/finish_screen.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:chelnok_mob/ui/widgets/text_field/fadable_background_on_focus_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../../widgets/continue_elevated_button.dart';
import '../register/role_selection_screen.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginProvider);
    final isVisibilityOff = useState(false);
    final formKey = useFormKey();
    final fieldKeys = useState<Set<String>>({});
    final emailTextController = useTextEditingController();
    final passwordTextController = useTextEditingController();

    final isButtonEnabled = useCallback(() {
      return emailTextController.text.isNotEmpty &&
          passwordTextController.text.isNotEmpty;
    }, []);

    ref.listen(
      loginProvider,
      (prevState, nextState) async {
        if (nextState.status.isError) {
          showSnackbar(
            context: context,
            message: nextState.error?.toString() ?? 'Что-то пошло не так',
          );
        } else if (nextState.status.isRoleIsNotSelectedGoogle ||
            nextState.status.isRoleIsNotSelectedYandex) {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RoleSelectionScreen(
                isRegister: false,
              ),
            ),
          );

          if (result != null) {
            if (nextState.status.isRoleIsNotSelectedGoogle) {
              await ref
                  .read(loginProvider.notifier)
                  .sendGoogleUserCredentials(result);
            } else {
              await ref.read(loginProvider.notifier).sendYandexUserCredentials(
                    result,
                  );
            }
          }
        }
      },
    );

    ref.listen(
      userProvider,
      (prevState, nextState) async {
        if (nextState.authStatus.isAuth) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => WillPopScope(
                onWillPop: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavigationBarView(),
                    ),
                  );
                  return false;
                },
                child: FinishScreen(
                  title: 'Авторизация\n завершена!',
                ),
              ),
            ),
            (_) => false,
          );
        }
      },
    );

    return SafeAreaWrapper(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(96),
                  Text(
                    'Вход',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Gap(12),
                  Text(
                    'Укажите вашу почту для входа в аккаунт',
                    style: TextStyle(color: Color(0xFFB3B3B3), fontSize: 17),
                  ),
                  Gap(35),
                  FocusValidationField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Введите почту';
                      }
                      if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return 'Введите корректную почту';
                      }
                      return null;
                    },
                    onChangedFocus: (hasFocus) {
                      if (!hasFocus) {
                        fieldKeys.value = {
                          ...fieldKeys.value,
                          'emailTextField',
                        };
                      }
                    },
                    autoValidateMode: getAutoValidateMode(
                      fieldKeys.value.contains('emailTextField'),
                    ),
                    onChanged: (value) => fieldKeys.value = {
                      ...fieldKeys.value,
                      '',
                    },
                    controller: emailTextController,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Введите электронную почту',
                  ),
                  Gap(13),
                  IntrinsicHeight(
                    child: FocusValidationField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Введите пароль';
                        }
                        return null;
                      },
                      onChangedFocus: (hasFocus) {
                        if (!hasFocus) {
                          fieldKeys.value = {
                            ...fieldKeys.value,
                            'passwordTextField',
                          };
                        }
                      },
                      autoValidateMode: getAutoValidateMode(
                        fieldKeys.value.contains('passwordTextField'),
                      ),
                      onChanged: (value) => fieldKeys.value = {
                        ...fieldKeys.value,
                        '',
                      },
                      controller: passwordTextController,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !isVisibilityOff.value,
                      decoration: InputDecoration(
                        hintText: 'Введите пароль',
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: IconButton(
                            onPressed: () {
                              isVisibilityOff.value = !isVisibilityOff.value;
                            },
                            icon: !isVisibilityOff.value
                                ? SvgPicture.asset(
                                    'assets/svg/visibility.svg',
                                  )
                                : Icon(Icons.visibility_off),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(30.5),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color(0xFFDCDCDC),
                          thickness: 0.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('или'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0xFFDCDCDC),
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                  Gap(25),
                  GestureDetector(
                    onTap: () {
                      if (loginState.status.isLoading) return;
                      ref.read(loginProvider.notifier).googleSignIn();
                    },
                    child: Container(
                      height: 40,
                      constraints: const BoxConstraints(maxWidth: 430),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google_logo.png',
                            height: 25,
                            width: 25,
                          ),
                          Gap(12),
                          Text(
                            'Продолжить через Google',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(10),
                  GestureDetector(
                    onTap: () {
                      if (loginState.status.isLoading) return;
                      ref.read(loginProvider.notifier).yandexSignIn();
                    },
                    child: Container(
                      height: 40,
                      constraints: const BoxConstraints(maxWidth: 430),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/yandex_logo.png',
                            height: 25,
                            width: 25,
                          ),
                          Gap(12),
                          Text(
                            'Продолжить через Яндекс',
                            style: TextStyle(
                              fontSize: 15,
                              // color: Color(0xFFC4C4C4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (Platform.isIOS) ...[
                    Gap(10),
                    GestureDetector(
                      onTap: () {
                        if (loginState.status.isLoading) return;
                        ref.read(loginProvider.notifier).appleIdSignIn();
                      },
                      child: Container(
                        height: 40,
                        constraints: const BoxConstraints(maxWidth: 430),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.apple),
                            Gap(12),
                            Text(
                              'Продолжить через Apple  ',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  SizedBox(height: 100),
                  Opacity(
                    opacity: !isButtonEnabled() || loginState.status.isLoading
                        ? .4
                        : 1,
                    child: ContinueElevatedButton(
                      () {
                        if (formKey.currentState!.validate() &&
                            !loginState.status.isLoading) {
                          ref.read(loginProvider.notifier).login(
                              emailTextController.text,
                              passwordTextController.text);
                        }
                      },
                      isLoading: loginState.status.isLoading,
                    ),
                  ),
                  Gap(20),
                  TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavigationBarView(),
                        ),
                      );
                    },
                    child: Text(
                      'Пропустить',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Gap(20),
                  RichText(
                    text: TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RoleSelectionScreen(),
                            ),
                          );
                        },
                      text: 'Нет аккаунта?',
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RoleSelectionScreen(),
                                ),
                              );
                            },
                          text: 'Зарегистрироваться',
                          style: TextStyle(
                            fontFamily: GoogleFonts.ubuntu().fontFamily,
                            color: Color(0xFFB34DC2),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
