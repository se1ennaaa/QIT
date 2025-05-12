import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/hooks/use_form_key.dart';
import 'package:chelnok_mob/providers/registration_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/auth/finish_screen.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../widgets/continue_elevated_button.dart';

class PasswordConfirmationScreen extends HookConsumerWidget {
  const PasswordConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVisibilityOff = useState(false);
    final formKey = useFormKey();
    final confirmPasswordController = useTextEditingController();
    final registrationState = ref.watch(registrationProvider);

    ref.listen(registrationProvider, (prevState, nextState) {
      if (nextState.status.isError) {
        showSnackbar(
          context: context,
          message: nextState.error.toString(),
        );
      }
    });
    return SafeAreaWrapper(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(56),
                Container(
                  height: 88,
                  width: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xFFF6EFF7),
                  ),
                  padding: EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    'assets/svg/lock.svg',
                    height: 56,
                    width: 56,
                  ),
                ),
                Gap(24),
                Text(
                  'Повторите пароль',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gap(9),
                Text(
                  textAlign: TextAlign.center,
                  'Пароль защищает ваши личные данные, а так же используется при входе в приложение',
                  style: TextStyle(
                    color: Color(0xFFB3B3B3),
                    fontSize: 17,
                  ),
                ),
                Gap(45),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Поле не может быть пустым';
                    }
                    if (value != registrationState.model.password) {
                      return 'Пароли не совпадают';
                    }
                    return null;
                  },
                  controller: confirmPasswordController,
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
                Spacer(),
                ContinueElevatedButton(
                  () {
                    if (!formKey.currentState!.validate() ||
                        registrationState.status.isLoading) {
                      return;
                    }
                    ref.read(registrationProvider.notifier).setConfirmPassword(
                          confirmPasswordController.text,
                        );
                    ref.read(registrationProvider.notifier).register();
                  },
                  isLoading: registrationState.status.isLoading,
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
