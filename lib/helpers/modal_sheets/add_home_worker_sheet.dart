import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_vacancy_or_resume_sheet.dart';
import 'package:chelnok_mob/helpers/modal_sheets/show_dynamic_form_sheet.dart';
import 'package:chelnok_mob/providers/ad_management_provider.dart';
import 'package:chelnok_mob/providers/home_worker_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/success_confirmation/success_confirmation_screen.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/ad_creation_text_field.dart';

import 'package:chelnok_mob/ui/widgets/create_fields/dropdown_gander_form_field%20copy.dart';

import 'package:chelnok_mob/ui/widgets/create_fields/phone_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void showAddHomeWorkerSheet(BuildContext context, {int? id}) {
  showDynamicFormSheet(
    context: context,
    title: id == null ? "Добавить надомника" : "Редактировать надомника",
    formType: FormType.homeWorker,
    fields: AddHomeWorkerSheet(
      id: id,
    ),
    onSave: () {
      Navigator.pop(context);
    },
    id: id,
  );
}

class AddHomeWorkerSheet extends HookConsumerWidget {
  const AddHomeWorkerSheet({
    super.key,
    this.id,
  });

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adManagementState = ref.watch(adManagementProvider);
    final fioController = useTextEditingController();
    final positionController = useTextEditingController();
    final workExperienceController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final ageController = useTextEditingController();
    final priceForWorkController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final whatsAppController = useTextEditingController();

    final details = ref.watch(homeWorkerDetailsProvider(id ?? 0));
    useEffect(() {
      details.maybeWhen(
        orElse: () => null,
        data: (data) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    title: data.fio,
                    jobTitle: data.jobTitle,
                    workExperience: data.experience,
                    age: data.age.toString(),
                    gender: data.gender,
                    price: data.expectedSalary.toString(),
                    description: data.description,
                    phoneNumber: data.phoneNumber,
                    whatsApp: data.whatsappNumber,
                  ),
                );

            fioController.text = data.fio ?? '';
            positionController.text = data.jobTitle ?? '';
            workExperienceController.text = data.experience ?? '';
            ageController.text = data.age.toString();

            priceForWorkController.text = data.expectedSalary.toString();
            descriptionController.text = data.description ?? '';
            phoneNumberController.text = data.phoneNumber ?? '';
            whatsAppController.text = data.whatsappNumber ?? '';
          });
        },
      );

      return null;
    }, [details]);

    ref.listen(
      adManagementProvider,
      (prevState, nextState) {
        if (nextState.status.isSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessConfirmationScreen(
                type: FormType.homeWorker,
                isEditSuccess: id != null,
              ),
            ),
          );
        } else if (nextState.error != null) {
          showSnackbar(
            context: context,
            message: nextState.error.toString(),
          );
        }
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AdCreationTextField(
          controller: fioController,
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'ФИО',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Поле обязательно для заполнения';
            }
            return null;
          },
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    title: value,
                  ),
                );
          },
        ),
        Gap(10),
        AdCreationTextField(
          controller: positionController,
          labelText: 'Введите должность',
          textCapitalization: TextCapitalization.sentences,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Поле обязательно для заполнения';
            }
            return null;
          },
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    jobTitle: value,
                  ),
                );
          },
        ),
        Gap(10),
        AdCreationTextField(
          controller: workExperienceController,
          labelText: 'Стаж работы',
          textCapitalization: TextCapitalization.sentences,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Поле обязательно для заполнения';
            }
            return null;
          },
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    workExperience: value,
                  ),
                );
          },
        ),
        Gap(10),
        AdCreationTextField(
          controller: ageController,
          keyboardType: TextInputType.phone,
          inputFormatters: [
            age,
          ],
          labelText: 'Возраст',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Поле обязательно для заполнения';
            }
            return null;
          },
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    age: value,
                  ),
                );
          },
        ),
        Gap(10),
        DropdownGenderFormField(
          selectedGender: adManagementState.model.gender,
          onGenderSelected: (value) =>
              ref.read(adManagementProvider.notifier).cacheModel(
                    DynamicFormModel(
                      gender: value,
                    ),
                  ),
          isRequired: true,
        ),
        const Gap(10),
        AdCreationTextField(
          controller: priceForWorkController,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          labelText: 'Цена за работу',
          textCapitalization: TextCapitalization.sentences,
          validator: (value) {
            if (value!.isEmpty) return 'Поле обязательно для заполнения';
            return null;
          },
          onChanged: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(price: value));
          },
        ),
        Gap(10),
        AdCreationTextField(
          controller: descriptionController,
          labelText: 'Описание',
          textCapitalization: TextCapitalization.sentences,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Поле обязательно для заполнения';
            }
            return null;
          },
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    description: value,
                  ),
                );
          },
        ),
        Gap(10),
        PhoneTextFormField(
          controller: whatsAppController,
          labelText: 'WhatsApp',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Поле обязательно для заполнения';
            }
            if (value.startsWith('+7')) {
              if (value.contains(' ')
                  ? value.length != 16
                  : value.length != 12) {
                return 'Номер недостаточно длинный';
              }
            } else if (value.startsWith('+996')) {
              if (value.contains(' ')
                  ? value.length != 16
                  : value.length != 13) {
                return 'Номер недостаточно длинный';
              }
            } else {
              return 'Вы можете ввести только российский (+7) или кыргызский (+996) номер';
            }
            return null;
          },
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    whatsApp: value,
                  ),
                );
          },
        ),
        Gap(10),
        PhoneTextFormField(
          controller: phoneNumberController,
          labelText: 'Телефон',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Поле обязательно для заполнения';
            }
            if (value.startsWith('+7')) {
              if (value.contains(' ')
                  ? value.length != 16
                  : value.length != 12) {
                return 'Номер недостаточно длинный';
              }
            } else if (value.startsWith('+996')) {
              if (value.contains(' ')
                  ? value.length != 16
                  : value.length != 13) {
                return 'Номер недостаточно длинный';
              }
            } else {
              return 'Вы можете ввести только российский (+7) или кыргызский (+996) номер';
            }
            return null;
          },
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    phoneNumber: value,
                  ),
                );
          },
        ),
      ],
    );
  }
}
