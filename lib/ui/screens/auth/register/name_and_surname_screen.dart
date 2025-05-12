import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/hooks/use_form_key.dart';
import 'package:chelnok_mob/providers/registration_providers.dart';
import 'package:chelnok_mob/ui/screens/auth/register/password_creation_screen.dart';

import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../widgets/continue_elevated_button.dart';

class NameAndSurnameScreen extends HookConsumerWidget {
  const NameAndSurnameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useFormKey();
    final registrationState = ref.watch(registrationProvider);
    final nameController = useTextEditingController();
    final surnameController = useTextEditingController();

    return SafeAreaWrapper(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
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
                    'assets/svg/avatar.svg',
                    height: 56,
                    width: 56,
                  ),
                ),
                Gap(24),
                Text(
                  'Личные данные',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gap(9),
                Text(
                  textAlign: TextAlign.center,
                  'Пожалуйста, введите своё ФИО',
                  style: TextStyle(
                    color: Color(0xFFB3B3B3),
                    fontSize: 17,
                  ),
                ),
                Gap(40),
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите ваше имя';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    hintText: 'Введите ваше имя',
                  ),
                ),
                Gap(15),
                TextFormField(
                  controller: surnameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите вашу фамилию';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    hintText: 'Введите вашу фамилию',
                  ),
                ),
                Spacer(),
                ContinueElevatedButton(
                  () {
                    if (formKey.currentState!.validate() &&
                        !registrationState.status.isLoading) {
                      ref.read(registrationProvider.notifier).setNameSurname(
                            nameController.text,
                            surnameController.text,
                          );
                      Navigator.push(
                        context,
                        SlideRoute(
                          screen: PasswordCreationScreen(),
                        ),
                      );
                    }
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
