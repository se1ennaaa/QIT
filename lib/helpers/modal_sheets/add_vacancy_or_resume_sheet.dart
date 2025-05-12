import 'package:chelnok_mob/helpers/vacancy_selection_sheet.dart';
import 'package:chelnok_mob/providers/resume_providers.dart';
import 'package:chelnok_mob/providers/vacancy_providers.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/file_form_field.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/helpers/modal_sheets/show_dynamic_form_sheet.dart';
import 'package:chelnok_mob/providers/ad_management_provider.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/success_confirmation/success_confirmation_screen.dart';

import 'package:chelnok_mob/ui/widgets/create_fields/ad_creation_text_field.dart';

import 'package:chelnok_mob/ui/widgets/create_fields/phone_text_form_field.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

void showAddVacancySheet(BuildContext context, {int? id}) {
  showDynamicFormSheet(
    context: context,
    formType: FormType.vacancy,
    title: id == null ? "Добавить вакансию" : "Редактировать вакансию",
    fields: AddVacancySheet(
      id: id,
    ),
    onSave: () {
      Navigator.pop(context);
    },
    id: id,
  );
}

void showAddResumeSheet(BuildContext context, {int? id}) {
  showDynamicFormSheet(
    context: context,
    formType: FormType.resume,
    title: id == null ? "Добавить резюмé" : "Редактировать резюмé",
    fields: AddResumeSheet(
      id: id,
    ),
    onSave: () {
      Navigator.pop(context);
    },
    id: id,
  );
}

void showVacancyOrResumeSelectionSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => VacancyOrResumeSelectionSheet((type) {
      if (type.isEmployerRequired) {
        Navigator.pop(context);
        showAddVacancySheet(context);
      } else if (type.isJobSearch) {
        Navigator.pop(context);
        showAddResumeSheet(context);
      }
    }),
  );
}

class AddVacancySheet extends HookConsumerWidget {
  const AddVacancySheet({
    super.key,
    this.id,
  });

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vacancyDetails = ref.watch(vacancyDetailsProvider(id ?? 0));
    final adManagementState = ref.watch(adManagementProvider);

    final titleController = useTextEditingController();
    final workExperienceController = useTextEditingController();
    final addressController = useTextEditingController();
    final salaryController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final whatsAppController = useTextEditingController();

    useEffect(() {
      vacancyDetails.maybeWhen(
        orElse: () => null,
        data: (data) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    images: data.images,
                    title: data.name,
                    workExperience: data.experience,
                    address: data.address,
                    salary: data.salary.toString(),
                    description: data.description,
                    phoneNumber: data.phoneNumber,
                    whatsApp: data.whatsappNumber,
                  ),
                );
            titleController.text = data.name ?? '';
            workExperienceController.text = data.experience ?? '';
            addressController.text = data.address ?? '';
            salaryController.text = data.salary.toString();
            descriptionController.text = data.description ?? '';
            phoneNumberController.text = data.phoneNumber ?? '';
            whatsAppController.text = data.whatsappNumber ?? '';
          });
        },
      );

      return null;
    }, [vacancyDetails]);

    ref.listen(
      adManagementProvider,
      (prevState, nextState) {
        if (nextState.status.isSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessConfirmationScreen(
                isEditSuccess: id != null,
                type: FormType.vacancy,
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
        ImageFileFormField(
          isRequired: true,
          images: adManagementState.model.images,
          onImagesSelected: (images) {
            ref.read(adManagementProvider.notifier).cacheModel(DynamicFormModel(
                  images: images,
                ));
          },
          onRemoveImage: (index) =>
              ref.read(adManagementProvider.notifier).removeImage(index),
        ),
        Gap(10),
        AdCreationTextField(
          controller: titleController,
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Введите должность',
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
          controller: workExperienceController,
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Стаж работы',
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
          controller: addressController,
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Место работы',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Поле обязательно для заполнения';
            }
            return null;
          },
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    placeOfWork: value,
                  ),
                );
          },
        ),
        Gap(10),
        AdCreationTextField(
          controller: salaryController,
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Зарплата',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Поле обязательно для заполнения';
            }
            return null;
          },
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    salary: value,
                  ),
                );
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

class AddResumeSheet extends HookConsumerWidget {
  const AddResumeSheet({
    super.key,
    this.id,
  });

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resumeDetails = ref.watch(resumeDetailsProvider(id ?? 0));
    final fioController = useTextEditingController();
    final jobTitleController = useTextEditingController();
    final workExperienceController = useTextEditingController();
    final ageController = useTextEditingController();
    final genderController = useTextEditingController();
    final salaryController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final whatsAppController = useTextEditingController();

    useEffect(() {
      resumeDetails.maybeWhen(
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
                    salary: data.expectedSalary,
                    description: data.description,
                    phoneNumber: data.phoneNumber,
                    whatsApp: data.whatsappNumber,
                  ),
                );
            fioController.text = data.fio ?? '';
            jobTitleController.text = data.jobTitle ?? '';
            workExperienceController.text = data.experience ?? '';
            ageController.text = data.age.toString();
            genderController.text = data.gender ?? '';
            salaryController.text = data.expectedSalary ?? '';
            descriptionController.text = data.description ?? '';
            phoneNumberController.text = data.phoneNumber ?? '';
            whatsAppController.text = data.whatsappNumber ?? '';
          });
        },
      );
      return null;
    }, [resumeDetails]);

    ref.listen(
      adManagementProvider,
      (prevState, nextState) {
        if (nextState.status.isSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessConfirmationScreen(
                isEditSuccess: id != null,
                type: FormType.resume,
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
          keyboardType: TextInputType.name,
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
          controller: jobTitleController,
          keyboardType: TextInputType.name,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Введите должность',
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
          keyboardType: TextInputType.name,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Стаж работы',
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
        AdCreationTextField(
          controller: genderController,
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Пол',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Поле обязательно для заполнения';
            }
            return null;
          },
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    gender: value,
                  ),
                );
          },
        ),
        Gap(10),
        AdCreationTextField(
          controller: salaryController,
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Ожидаемая зарплата',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Поле обязательно для заполнения';
            }
            return null;
          },
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    salary: value,
                  ),
                );
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

final age = MaskTextInputFormatter(
  mask: '##',
  filter: {"#": RegExp(r'[0-9]')},
);
