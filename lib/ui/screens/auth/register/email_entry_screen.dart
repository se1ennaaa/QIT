import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/hooks/use_form_key.dart';
import 'package:chelnok_mob/providers/registration_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/auth/register/email_verification_screen.dart';
import 'package:chelnok_mob/ui/screens/auth/register/name_and_surname_screen.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../widgets/continue_elevated_button.dart';

class EmailEntryScreen extends HookConsumerWidget {
  const EmailEntryScreen({
    super.key,
    this.role,
  });
  final String? role;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registrationState = ref.watch(registrationProvider);
    final email = useTextEditingController();
    final formKey = useFormKey();

    ref.listen(
      registrationProvider,
      (prevState, nextState) {
        if (nextState.status.isError) {
          showSnackbar(
            context: context,
            message: nextState.error.toString(),
          );
        } else if (nextState.status.isCodeSend) {
          // temporarily changed
          // Navigator.push(
          //   context,
          //   SlideRoute(
          //     screen: EmailVerificationScreen(),
          //   ),
          // );
          Navigator.push(
            context,
            SlideRoute(
              screen: NameAndSurnameScreen(),
            ),
          );
        }
      },
    );
    return SafeAreaWrapper(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(96),
                Text(
                  'Пройдите регистрацию',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gap(12),
                Text(
                  textAlign: TextAlign.center,
                  'Для использования приложения необходимо пройти регистрацию',
                  style: TextStyle(
                    color: Color(0xFFB3B3B3),
                    fontSize: 17,
                  ),
                ),
                Gap(120),
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите электронную почту';
                    }
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                      return 'Введите корректную почту';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Введите электронную почту',
                  ),
                ),
                Spacer(),
                ContinueElevatedButton(
                  () {
                    if (formKey.currentState!.validate() &&
                        !registrationState.status.isLoading) {
                      ref
                          .read(registrationProvider.notifier)
                          .codeSend(email.text);
                    }
                  },
                  isLoading: registrationState.status.isLoading,
                ),
                Gap(20),
                RichText(
                  text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pop(context);
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
                Gap(40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
