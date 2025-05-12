import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/helpers/modal_sheets/show_dynamic_form_sheet.dart';
import 'package:chelnok_mob/providers/ad_management_provider.dart';
import 'package:chelnok_mob/providers/sewing_workshop_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/success_confirmation/success_confirmation_screen.dart';

import 'package:chelnok_mob/ui/widgets/create_fields/ad_creation_text_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/dropdown_category_form_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/file_form_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/phone_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void showAddSewingWorkshopSheet(BuildContext context, {int? id}) {
  showDynamicFormSheet(
    context: context,
    title: id == null ? "Добавить швейный цех" : "Редактировать швейный цех",
    formType: FormType.sewingWorkshop,
    fields: AddSewingWorkshopSheet(
      id: id,
    ),
    onSave: () {
      Navigator.pop(context);
    },
    id: id,
  );
}

class AddSewingWorkshopSheet extends HookConsumerWidget {
  const AddSewingWorkshopSheet({
    super.key,
    this.id,
  });

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adManagementState = ref.watch(adManagementProvider);
    final companyNameController = useTextEditingController();
    final addressController = useTextEditingController();
    final productiveCapacityController = useTextEditingController();
    final productionExperienceController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final whatsAppController = useTextEditingController();

    final details = ref.watch(sewingWorkshopDetailsProvider(id ?? 0));
    useEffect(() {
      details.maybeWhen(
        orElse: () => null,
        data: (data) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(adManagementProvider.notifier).cacheModel(DynamicFormModel(
                  images: data.images,
                  title: data.name,
                  category: data.category?.id,
                  address: data.address,
                  productiveCapacity: data.productiveCapacity,
                  productionExperience: data.productionExperience,
                  description: data.description,
                  phoneNumber: data.phoneNumber,
                  whatsApp: data.whatsappNumber,
                ));
            companyNameController.text = data.name ?? '';
            addressController.text = data.address ?? '';
            productiveCapacityController.text = data.productiveCapacity ?? '';
            productionExperienceController.text =
                data.productionExperience ?? '';
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
                type: FormType.sewingWorkshop,
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
          controller: companyNameController,
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.sentences,
          labelText: 'Введите название компании',
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
        DropdownCategoryFormField(
          type: FormType.sewingWorkshop,
          isRequired: true,
          selectedCategory: adManagementState.model.category,
          onCategorySelected: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    category: value,
                  ),
                );
          },
        ),
        Gap(10),
        AdCreationTextField(
          controller: addressController,
          labelText: 'Адрес производства',
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
                    address: value,
                  ),
                );
          },
        ),
        Gap(10),
        AdCreationTextField(
          controller: productiveCapacityController,
          labelText: 'Производительная мощность',
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
                    productiveCapacity: value,
                  ),
                );
          },
        ),
        Gap(4),
        Padding(
          padding: EdgeInsets.only(left: 11),
          child: Text(
            '*в машинках, кв. помещения, в кол-ве людей ',
            style: TextStyle(
              fontSize: 11,
              color: Color(0xFF6E6E6E),
            ),
          ),
        ),
        Gap(10),
        AdCreationTextField(
          controller: productionExperienceController,
          labelText: 'Стаж работы производства',
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
                    productionExperience: value,
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
