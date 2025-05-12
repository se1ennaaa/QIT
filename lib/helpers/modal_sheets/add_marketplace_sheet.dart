import 'package:chelnok_mob/helpers/modal_sheets/show_dynamic_form_sheet.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/providers/ad_management_provider.dart';
import 'package:chelnok_mob/providers/fulfilment_providers.dart';
import 'package:chelnok_mob/providers/manager_providers.dart';
import 'package:chelnok_mob/providers/course_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/home/widgets/marketplace_selection_sheet.dart';
import 'package:chelnok_mob/ui/screens/success_confirmation/success_confirmation_screen.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/ad_creation_text_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/file_form_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/phone_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

void showAddFulfilmentSheet(BuildContext context, {int? id}) {
  showDynamicFormSheet(
    formType: FormType.fulfilment,
    context: context,
    title: id == null ? "Добавить фулфилмент" : "Редактировать фулфилмент",
    fields: AddFulfilmentSheet(id: id),
    onSave: () {
      Navigator.pop(context);
    },
    id: id,
  );
}

void showAddManagerSheet(BuildContext context, {int? id}) {
  showDynamicFormSheet(
    formType: FormType.manager,
    context: context,
    title: id == null ? "Добавить менеджера" : "Редактировать менеджера",
    fields: AddManagerSheet(id: id),
    onSave: () {
      Navigator.pop(context);
    },
    id: id,
  );
}

void showAddCourseSheet(BuildContext context, {int? id}) {
  showDynamicFormSheet(
    formType: FormType.course,
    context: context,
    title: id == null ? "Добавить курс" : "Редактировать курс",
    fields: AddCourseSheet(id: id),
    onSave: () {
      Navigator.pop(context);
    },
    id: id,
  );
}

void showMarketplaceSelectionSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => MarketplaceSelectionSheet(
      (type) {
        if (type.isFulfilment) {
          Navigator.pop(context);
          showAddFulfilmentSheet(context);
        } else if (type.isManager) {
          Navigator.pop(context);
          showAddManagerSheet(context);
        } else if (type.isCourse) {
          Navigator.pop(context);
          showAddCourseSheet(context);
        }
      },
    ),
  );
}

class AddFulfilmentSheet extends HookConsumerWidget {
  const AddFulfilmentSheet({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adManagementState = ref.watch(adManagementProvider);
    final fulfilmentDetails = ref.watch(fulfilmentDetailsProvider(id ?? 0));

    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final addressController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final whatsAppController = useTextEditingController();

    useEffect(() {
      fulfilmentDetails.maybeWhen(
        orElse: () => null,
        data: (data) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    images: data.images,
                    title: data.name,
                    description: data.description,
                    address: data.address,
                    phoneNumber: data.phoneNumber,
                    whatsApp: data.whatsappNumber,
                  ),
                );
            titleController.text = data.name ?? '';
            descriptionController.text = data.description ?? '';
            addressController.text = data.address ?? '';
            phoneNumberController.text = data.phoneNumber ?? '';

            whatsAppController.text = data.whatsappNumber ?? '';
          });
        },
      );

      return null;
    }, [fulfilmentDetails]);

    ref.listen(
      adManagementProvider,
      (prevState, nextState) {
        if (nextState.status.isSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessConfirmationScreen(
                isEditSuccess: id != null,
                type: FormType.fulfilment,
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
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(images: images));
          },
          onRemoveImage: (index) {
            ref.read(adManagementProvider.notifier).removeImage(index);
          },
        ),
        const Gap(10),
        AdCreationTextField(
          controller: titleController,
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Введите название',
          validator: (value) {
            if (value!.isEmpty) return 'Поле обязательно для заполнения';
            return null;
          },
          onChanged: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(title: value));
          },
        ),
        const Gap(10),
        AdCreationTextField(
          controller: descriptionController,
          labelText: 'Описание',
          textCapitalization: TextCapitalization.sentences,
          validator: (value) {
            if (value!.isEmpty) return 'Поле обязательно для заполнения';
            return null;
          },
          onChanged: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(description: value));
          },
        ),
        const Gap(10),
        AdCreationTextField(
          controller: addressController,
          labelText: 'Адрес',
          textCapitalization: TextCapitalization.sentences,
          validator: (value) {
            if (value!.isEmpty) return 'Поле обязательно для заполнения';
            return null;
          },
          onChanged: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(address: value));
          },
        ),
        const Gap(10),
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
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(whatsApp: value));
          },
        ),
        const Gap(10),
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
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(phoneNumber: value));
          },
        ),
      ],
    );
  }
}

class AddManagerSheet extends HookConsumerWidget {
  const AddManagerSheet({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adManagementState = ref.watch(adManagementProvider);
    final managerDetails = ref.watch(managerDetailsProvider(id ?? 0));

    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final experienceController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final whatsAppController = useTextEditingController();

    useEffect(() {
      managerDetails.maybeWhen(
        orElse: () => null,
        data: (data) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    images: [data.image],
                    title: data.fio,
                    description: data.description,
                    workExperience: data.experience,
                    phoneNumber: data.phoneNumber,
                    whatsApp: data.whatsappNumber,
                  ),
                );
            titleController.text = data.fio ?? '';
            descriptionController.text = data.description ?? '';
            experienceController.text = data.experience ?? '';
            phoneNumberController.text = data.phoneNumber ?? '';

            whatsAppController.text = data.whatsappNumber ?? '';
          });
        },
      );

      return null;
    }, [managerDetails]);

    ref.listen(
      adManagementProvider,
      (prevState, nextState) {
        if (nextState.status.isSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessConfirmationScreen(
                isEditSuccess: id != null,
                type: FormType.manager,
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
          maxImages: 1,
          isRequired: true,
          images: adManagementState.model.images,
          onImagesSelected: (images) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(images: images));
          },
          onRemoveImage: (index) {
            ref.read(adManagementProvider.notifier).removeImage(index);
          },
        ),
        const Gap(10),
        AdCreationTextField(
          controller: titleController,
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Введите ФИО',
          validator: (value) {
            if (value!.isEmpty) return 'Поле обязательно для заполнения';
            return null;
          },
          onChanged: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(title: value));
          },
        ),
        const Gap(10),
        AdCreationTextField(
          controller: descriptionController,
          labelText: 'Описание',
          textCapitalization: TextCapitalization.sentences,
          validator: (value) {
            if (value!.isEmpty) return 'Поле обязательно для заполнения';
            return null;
          },
          onChanged: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(description: value));
          },
        ),
        const Gap(10),
        AdCreationTextField(
          controller: experienceController,
          labelText: 'Стаж работы',
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value!.isEmpty) return 'Поле обязательно для заполнения';
            return null;
          },
          onChanged: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(workExperience: value));
          },
        ),
        const Gap(10),
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
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(whatsApp: value));
          },
        ),
        const Gap(10),
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
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(phoneNumber: value));
          },
        ),
      ],
    );
  }
}

class AddCourseSheet extends HookConsumerWidget {
  const AddCourseSheet({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adManagementState = ref.watch(adManagementProvider);
    final courseDetails = ref.watch(courseDetailsProvider(id ?? 0));

    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final formatController = useTextEditingController();
    final addressController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final whatsAppController = useTextEditingController();

    useEffect(() {
      courseDetails.maybeWhen(
        orElse: () => null,
        data: (data) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    images: data.images,
                    title: data.name,
                    description: data.description,
                    courseFormat: data.format,
                    address: data.address,
                    phoneNumber: data.phoneNumber,
                    whatsApp: data.whatsappNumber,
                  ),
                );
            titleController.text = data.name ?? '';
            descriptionController.text = data.description ?? '';
            formatController.text = data.format ?? '';
            addressController.text = data.address ?? '';
            phoneNumberController.text = data.phoneNumber ?? '';

            whatsAppController.text = data.whatsappNumber ?? '';
          });
        },
      );

      return null;
    }, [courseDetails]);

    ref.listen(
      adManagementProvider,
      (prevState, nextState) {
        if (nextState.status.isSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessConfirmationScreen(
                isEditSuccess: id != null,
                type: FormType.course,
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
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(images: images));
          },
          onRemoveImage: (index) {
            ref.read(adManagementProvider.notifier).removeImage(index);
          },
        ),
        const Gap(10),
        AdCreationTextField(
          controller: titleController,
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Введите название',
          validator: (value) {
            if (value!.isEmpty) return 'Поле обязательно для заполнения';
            return null;
          },
          onChanged: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(title: value));
          },
        ),
        const Gap(10),
        AdCreationTextField(
          controller: formatController,
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Формат курса',
          validator: (value) {
            if (value!.isEmpty) return 'Поле обязательно для заполнения';
            return null;
          },
          onChanged: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(courseFormat: value));
          },
        ),
        const Gap(10),
        AdCreationTextField(
          controller: descriptionController,
          labelText: 'Описание',
          textCapitalization: TextCapitalization.sentences,
          validator: (value) {
            if (value!.isEmpty) return 'Поле обязательно для заполнения';
            return null;
          },
          onChanged: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(description: value));
          },
        ),
        const Gap(10),
        AdCreationTextField(
          controller: addressController,
          labelText: 'Адрес',
          textCapitalization: TextCapitalization.sentences,
          validator: (value) {
            if (value!.isEmpty) return 'Поле обязательно для заполнения';
            return null;
          },
          onChanged: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(address: value));
          },
        ),
        const Gap(10),
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
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(whatsApp: value));
          },
        ),
        const Gap(10),
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
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(phoneNumber: value));
          },
        ),
      ],
    );
  }
}
