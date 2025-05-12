import 'package:chelnok_mob/helpers/sewing_equipment_sheet.dart';
import 'package:chelnok_mob/providers/category_providers.dart';
import 'package:chelnok_mob/providers/sewing_equipment_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/success_confirmation/success_confirmation_screen.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/dropdown_category_form_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/file_form_field.dart';
import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/helpers/modal_sheets/show_dynamic_form_sheet.dart';
import 'package:chelnok_mob/providers/ad_management_provider.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/ad_creation_text_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/phone_text_form_field.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

void showSewingEquipmentSheet(
  BuildContext context, {
  int? id,
  int? categoryId,
}) {
  showDynamicFormSheet(
    formType: FormType.sewingEquipment,
    context: context,
    title: id == null
        ? "Добавить швейное оборудование"
        : "Редактировать швейное оборудование",
    fields: AddSewingEquipmentSheet(
      id: id,
      categoryId: categoryId,
    ),
    onSave: () {
      Navigator.pop(context);
    },
    id: id,
  );
}

void addSewingEquipmentSheet(BuildContext context, {int? id}) {
  showModalBottomSheet(
    context: context,
    builder: (context) => SewingEquipmentSheet(
      (id) {
        showSewingEquipmentSheet(context, categoryId: id);
      },
    ),
  );
}

class AddSewingEquipmentSheet extends HookConsumerWidget {
  const AddSewingEquipmentSheet({
    super.key,
    this.id,
    this.categoryId,
  });

  final int? id;
  final int? categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final equipmentDetails = ref.watch(sewingEquipmentDetailsProvider(id ?? 0));
    final adManagementState = ref.watch(adManagementProvider);
    final categories = ref.watch(
      categoryListProvider(CategoryType.apparel),
    );

    final titleController = useTextEditingController();
    final priceController = useTextEditingController();
    final addressController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final whatsAppController = useTextEditingController();

    useEffect(() {
      equipmentDetails.maybeWhen(
        orElse: () => null,
        data: (data) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(
                    images: data.images,
                    title: data.name,
                    price: data.price.toString(),
                    address: data.address,
                    description: data.description,
                    phoneNumber: data.phoneNumber,
                    whatsApp: data.whatsappNumber,
                    category: data.category?.id,
                  ),
                );
            titleController.text = data.name ?? '';
            priceController.text = data.price.toString();
            addressController.text = data.address ?? '';
            descriptionController.text = data.description ?? '';
            phoneNumberController.text = data.phoneNumber ?? '';
            whatsAppController.text = data.whatsappNumber ?? '';
          });
        },
      );
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (categoryId == null) return;
        ref.read(adManagementProvider.notifier).cacheModel(DynamicFormModel(
              category: categoryId,
            ));
      });
      return null;
    }, [equipmentDetails]);

    ref.listen(
      adManagementProvider,
      (prevState, nextState) {
        if (nextState.status.isSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessConfirmationScreen(
                isEditSuccess: id != null,
                type: FormType.sewingEquipment,
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

    final isRent = useMemoized(() {
      return categories.maybeWhen(
        orElse: () => false,
        data: (data) {
          final category = data.firstWhereOrNull(
              (element) => element.id == adManagementState.model.category);

          return category?.title == 'Продажа';
        },
      );
    }, [categories, adManagementState.model.category]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isRent)
          ImageFileFormField(
            isRequired: true,
            images: adManagementState.model.images,
            onImagesSelected: (images) {
              ref
                  .read(adManagementProvider.notifier)
                  .cacheModel(DynamicFormModel(
                    images: images,
                  ));
            },
            onRemoveImage: (index) =>
                ref.read(adManagementProvider.notifier).removeImage(index),
          ),
        Gap(10),
        AdCreationTextField(
          controller: titleController,
          keyboardType: TextInputType.text,
          labelText: 'Заголовок',
          validator: (value) =>
              value!.isEmpty ? 'Поле обязательно для заполнения' : null,
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(title: value),
                );
          },
        ),
        Gap(10),
        ColoredBox(color: Color(0xFF0f0f0f)),
        DropdownCategoryFormField(
          type: FormType.sewingEquipment,
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
          controller: priceController,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          labelText: 'Цена',
          validator: (value) =>
              value!.isEmpty ? 'Поле обязательно для заполнения' : null,
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(price: value),
                );
          },
        ),
        Gap(10),
        AdCreationTextField(
          controller: addressController,
          keyboardType: TextInputType.text,
          labelText: 'Адрес',
          validator: (value) =>
              value!.isEmpty ? 'Поле обязательно для заполнения' : null,
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(address: value),
                );
          },
        ),
        Gap(10),
        AdCreationTextField(
          controller: descriptionController,
          keyboardType: TextInputType.text,
          labelText: 'Описание',
          validator: (value) =>
              value!.isEmpty ? 'Поле обязательно для заполнения' : null,
          onChanged: (value) {
            ref.read(adManagementProvider.notifier).cacheModel(
                  DynamicFormModel(description: value),
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
                  DynamicFormModel(phoneNumber: value),
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
                  DynamicFormModel(whatsApp: value),
                );
          },
        ),
      ],
    );
  }
}
