import 'dart:io';

import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:chelnok_mob/data/models/user_model.dart';
import 'package:chelnok_mob/hooks/use_form_key.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/user_profile/widgets/city_selection_sheet.dart';
import 'package:chelnok_mob/ui/screens/user_profile/widgets/delete_account_confirm_dialog.dart';
import 'package:chelnok_mob/ui/screens/user_profile/widgets/pick_image_sheet.dart';
import 'package:chelnok_mob/ui/screens/user_profile/widgets/profile_input_field.dart';
import 'package:chelnok_mob/ui/screens/user_profile/widgets/profile_phone_input_field.dart';
import 'package:chelnok_mob/ui/widgets/app_bars/custom_app_bar.dart';

import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserProfileScreen extends HookConsumerWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    final isUpdatedInfo = useState(false);
    final formKey = useFormKey();
    final nameTextController = useTextEditingController();
    final surnameTextController = useTextEditingController();
    final phoneTextController = useTextEditingController();
    final emailTextController = useTextEditingController();
    final cityTextController = useTextEditingController();
    final avatarFile = useState<File?>(null);

    useEffect(() {
      userState.userProfile.maybeWhen(
        orElse: () {},
        data: (data) {
          nameTextController.text = data.name ?? '';
          surnameTextController.text = data.surname ?? '';
          phoneTextController.text = data.phone ?? '';
          emailTextController.text = data.email ?? '';
          cityTextController.text = data.city;
        },
      );
      return null;
    }, [userState.userProfile]);

    ref.listen(
      userProvider,
      (prevState, nextState) async {
        if (nextState.updateProfileStatus.isSuccess) {
          showSnackbar(
            context: context,
            message: 'Профиль успешно обновлен',
          );
          if (nextState.isAvatarUpdated) return;
          isUpdatedInfo.value = false;
        } else if (nextState.updateProfileStatus.isError) {
          showSnackbar(
            context: context,
            message: nextState.errorMessage ?? 'Произошла ошибка',
          );
        }
      },
    );

    return SafeAreaWrapper(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: ListView(
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              CustomAppBar(
                title: 'Профиль',
                onLogoutTap: () {
                  ref.read(userProvider.notifier).unauthenticate();
                  Navigator.pop(context);
                },
              ),
              Gap(20),
              userState.userProfile.when(
                data: (data) => Column(
                  children: [
                    Center(
                      child: Bounceable(
                        onTap: () async {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => PickImageSheet(
                              (images) {
                                if (images.isNotEmpty) {
                                  avatarFile.value = images.first;
                                  ref
                                      .read(userProvider.notifier)
                                      .updateUserProfile(
                                        UserModel(
                                          avatarFile: images.first,
                                        ),
                                        isAvatarUpdated: true,
                                      );
                                }
                              },
                              onDeleteTap: () {
                                ref
                                    .read(userProvider.notifier)
                                    .updateUserProfile(
                                      UserModel(
                                        avatarUrl: null,
                                        avatarFile: null,
                                      ),
                                      isAvatarUpdated: true,
                                    );
                                avatarFile.value = null;
                              },
                            ),
                          );
                        },
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            if (avatarFile.value != null)
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.file(
                                  avatarFile.value!,
                                  height: 146,
                                  width: 146,
                                  fit: BoxFit.cover,
                                ),
                              )
                            else if (data.avatarUrl != null)
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: CachedImage(
                                  data.avatarUrl!,
                                  height: 146,
                                  width: 146,
                                  fit: BoxFit.cover,
                                ),
                              )
                            else
                              SizedBox(
                                height: 146,
                                width: 146,
                                child: Image.asset(
                                  'assets/images/avatar.png',
                                ),
                              ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0xFFF6EFF7),
                              ),
                              padding: EdgeInsets.all(7.5),
                              child:
                                  SvgPicture.asset('assets/svg/edit_icon.svg'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(40),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 18),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6EFF7),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFFD091D9),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileInputField(
                            label: 'Имя',
                            controller: nameTextController,
                            onChanged: (value) {
                              isUpdatedInfo.value = true;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Поле не может быть пустым';
                              }
                              return null;
                            },
                          ),
                          Gap(20),
                          ProfileInputField(
                            label: 'Фамилия',
                            controller: surnameTextController,
                            onChanged: (value) {
                              isUpdatedInfo.value = true;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Поле не может быть пустым';
                              }
                              return null;
                            },
                          ),
                          Gap(20),
                          ProfilePhoneInputField(
                            keyboardType: TextInputType.phone,
                            label: 'Номер телефона',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return null;
                              }
                              if (value.startsWith('+7')) {
                                if (value.length != 16) {
                                  return 'Номер недостаточно длинный';
                                }
                              } else if (value.startsWith('+996')) {
                                if (value.length != 16) {
                                  return 'Номер недостаточно длинный';
                                }
                              } else {
                                return 'Вы можете ввести только российский (+7) или кыргызский (+996) номер';
                              }
                              return null;
                            },
                            controller: phoneTextController,
                            onChanged: (value) {
                              isUpdatedInfo.value = true;
                            },
                          ),
                          Gap(20),
                          ProfileInputField(
                            label: 'Email',
                            readOnly: true,
                            controller: emailTextController,
                            onChanged: (value) {
                              isUpdatedInfo.value = true;
                            },
                          ),
                          Gap(20),
                          ProfileInputField(
                            label: 'Город',
                            controller: cityTextController,
                            hideBorder: true,
                            readOnly: true,
                            onTap: () async {
                              final result = await showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) => CitySelectionSheet(),
                              );
                              if (result != null) {
                                cityTextController.text = result;
                                isUpdatedInfo.value = true;
                              }
                            },
                            onChanged: (value) {
                              isUpdatedInfo.value = true;
                            },
                          ),
                        ],
                      ),
                    ),
                    Gap(34),
                    Bounceable(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DeleteAccountConfirmDialog(
                              onConfirm: () {
                                ref
                                    .read(userProvider.notifier)
                                    .unauthenticate();
                                Navigator.pop(context);
                              },
                            );
                          },
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 18),
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6EFF7),
                          border: Border.all(
                            width: 1,
                            color: Color(0xFFD091D9),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Здесь вы можете удалить\nучетную запись',
                              style: TextStyle(fontSize: 16),
                            ),
                            SvgPicture.asset('assets/svg/right_arrow.svg'),
                          ],
                        ),
                      ),
                    ),
                    Gap(50),
                    Bounceable(
                      onTap: () {
                        if (!isUpdatedInfo.value ||
                            userState.updateProfileStatus.isLoading ||
                            !formKey.currentState!.validate()) {
                          return;
                        }
                        ref
                            .read(userProvider.notifier)
                            .updateUserProfile(UserModel(
                              name: nameTextController.text,
                              surname: surnameTextController.text,
                              phone: phoneTextController.text,
                              city: cityTextController.text,
                              avatarFile: avatarFile.value,
                            ));
                      },
                      child: Opacity(
                        opacity: !isUpdatedInfo.value ? .4 : 1,
                        child: Container(
                          height: 52,
                          margin: EdgeInsets.symmetric(horizontal: 18),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF9605AC),
                          ),
                          child: Text(
                            'Сохранить',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(30),
                  ],
                ),
                error: (err, error) => Text(err.toString()),
                loading: () => SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
