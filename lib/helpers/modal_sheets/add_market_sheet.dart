import 'package:chelnok_mob/helpers/modal_sheets/add_dordoi_container_sheet.dart';
import 'package:chelnok_mob/providers/madina_market_providers.dart';
import 'package:chelnok_mob/ui/screens/home/widgets/market_selection_sheet.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/helpers/modal_sheets/show_dynamic_form_sheet.dart';
import 'package:chelnok_mob/providers/ad_management_provider.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/success_confirmation/success_confirmation_screen.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/ad_creation_text_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/dropdown_category_form_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/file_form_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/phone_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

void showAddMadinaContainerSheet(BuildContext context, {int? id}) {
  showDynamicFormSheet(
    formType: FormType.madinaMarket,
    context: context,
    title: id == null ? "Добавить контейнер" : "Редактировать контейнер",
    fields: AddMadinaContainerSheet(
      id: id,
    ),
    onSave: () {
      Navigator.pop(context);
    },
    id: id,
  );
}

void showMarketSelectionSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => MarketSelectionSheet((type) {
      if (type.isMadina) {
        Navigator.pop(context);
        showAddMadinaContainerSheet(context);
      } else if (type.isDordoi) {
        showAddDordoiContainerSheet(context: context);
      }
    }),
  );
}

class AddMadinaContainerSheet extends HookConsumerWidget {
  const AddMadinaContainerSheet({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adManagementState = ref.watch(adManagementProvider);
    final containerDetails = ref.watch(madinaContainerDetailsProvider(id ?? 0));

    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final priceController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final whatsAppController = useTextEditingController();

    useEffect(() {
      containerDetails.maybeWhen(
        orElse: () => null,
        data: (data) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(adManagementProvider.notifier).cacheModel(DynamicFormModel(
                  images: data.images,
                  title: data.name,
                  category: data.category?.id,
                  description: data.description,
                  price: data.price.toString(),
                  phoneNumber: data.phoneNumber,
                  whatsApp: data.whatsappNumber,
                ));
            titleController.text = data.name ?? '';
            descriptionController.text = data.description ?? '';
            priceController.text = data.price.toString();
            phoneNumberController.text = data.phoneNumber ?? '';
            whatsAppController.text = data.whatsappNumber ?? '';
          });
        },
      );

      return null;
    }, [containerDetails]);

    ref.listen(
      adManagementProvider,
      (prevState, nextState) {
        if (nextState.status.isSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessConfirmationScreen(
                isEditSuccess: id != null,
                type: FormType.madinaMarket,
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
          labelText: 'Введите номер и проход контейнера',
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
        DropdownCategoryFormField(
          type: FormType.madinaMarket,
          isRequired: true,
          selectedCategory: adManagementState.model.category,
          onCategorySelected: (value) {
            ref
                .read(adManagementProvider.notifier)
                .cacheModel(DynamicFormModel(category: value));
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
          controller: priceController,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          labelText: 'Цена',
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
