import 'package:chelnok_mob/data/models/api_reponse.dart';
import 'package:chelnok_mob/data/models/dordoi_container_model.dart';
import 'package:chelnok_mob/data/repo/order_repo.dart';

import 'package:chelnok_mob/hooks/use_form_key.dart';
import 'package:chelnok_mob/providers/ad_management_provider.dart';
import 'package:chelnok_mob/providers/dordoi_market_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/success_confirmation/success_confirmation_screen.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/ad_creation_text_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/dropdown_category_form_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/file_form_field.dart';
import 'package:chelnok_mob/ui/widgets/create_fields/phone_text_form_field.dart';
import 'package:chelnok_mob/ui/widgets/dordoi_models_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

Future<T?> showAddDordoiContainerSheet<T>({
  required BuildContext context,
  DordoiContainerModel? model,
}) {
  return WoltModalSheet.show(
    context: context,
    pageContentDecorator: (child) {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(40),
        ),
        child: child,
      );
    },
    pageListBuilder: (context) {
      return [
        SliverWoltModalSheetPage(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          isTopBarLayerAlwaysVisible: false,
          hasTopBarLayer: false,
          mainContentSliversBuilder: (context) {
            return [
              SliverToBoxAdapter(
                child: DordoiGeneralInformationSheet(
                  model: model,
                ),
              ),
            ];
          },
        ),
      ];
    },
  );
}

class DordoiGeneralInformationSheet extends HookConsumerWidget {
  const DordoiGeneralInformationSheet({
    super.key,
    this.model,
  });

  final DordoiContainerModel? model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generalInformationModel = ref.watch(dordoiContainerModelProvider);
    final titleController = useTextEditingController();
    final whatsappController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final formKey = useFormKey();

    useEffect(() {
      if (model != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(dordoiContainerModelProvider.notifier).state =
              generalInformationModel.copyWith(
            name: model!.name,
            whatsapp: model!.whatsapp,
            phoneNumber: model!.phoneNumber,
            models: model!.models
                .map((e) => e.copyWith(sendImages: e.images))
                .toList(),
            id: model!.id,
          );
        });
        titleController.text = model!.name ?? '';
        whatsappController.text = model!.whatsapp ?? '';
        phoneNumberController.text = model!.phoneNumber ?? '';
      } else {
        titleController.text = generalInformationModel.name ?? '';
        whatsappController.text = generalInformationModel.whatsapp ?? '';
        phoneNumberController.text = generalInformationModel.phoneNumber ?? '';
      }
      return null;
    }, []);

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(10.5),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 33,
                width: 30,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/svg/close.svg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Добавить общую\nинформацию о контейнере',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(19),
                AdCreationTextField(
                  controller: titleController,
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.sentences,
                  labelText: 'Введите номер и проход контейнера',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле обязательно для заполнения';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    ref.read(dordoiContainerModelProvider.notifier).state =
                        generalInformationModel.copyWith(
                      name: value,
                    );
                  },
                ),
                const Gap(10),
                PhoneTextFormField(
                  controller: whatsappController,
                  labelText: 'WhatsApp',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле обязательно для заполнения';
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
                  onChanged: (value) {
                    ref.read(dordoiContainerModelProvider.notifier).state =
                        generalInformationModel.copyWith(
                      whatsapp: value,
                    );
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
                  onChanged: (value) {
                    ref.read(dordoiContainerModelProvider.notifier).state =
                        generalInformationModel.copyWith(
                      phoneNumber: value,
                    );
                  },
                ),
                Gap(10),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      showAddModelsDordoiSheet(
                        context: context,
                      );
                    }
                  },
                  child: Container(
                    height: 52,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.only(bottom: 2.5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF9605AC),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Далее',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<T?> showAddModelsDordoiSheet<T>({
  required BuildContext context,
}) {
  return WoltModalSheet.show(
    context: context,
    pageContentDecorator: (child) {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(40),
        ),
        child: child,
      );
    },
    pageListBuilder: (context) {
      return [
        SliverWoltModalSheetPage(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          isTopBarLayerAlwaysVisible: false,
          hasTopBarLayer: false,
          mainContentSliversBuilder: (context) {
            return [
              SliverToBoxAdapter(
                child: DordoiModelsSheet(),
              ),
            ];
          },
        ),
      ];
    },
  );
}

class DordoiModelsSheet extends HookConsumerWidget {
  const DordoiModelsSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useFormKey();
    final isLoading = useState(false);
    final generalInformationModel = ref.watch(dordoiContainerModelProvider);

    final nameController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final priceController = useTextEditingController();

    final selectedModelIndex = useState(0);

    void updateControllers(ModelItemModel model) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        nameController.text = model.name ?? '';
        descriptionController.text = model.description ?? '';
        priceController.text = model.sendPrice ?? '';
      });
    }

    printPrettyJson(
      generalInformationModel.models
          .map(
            (e) => e.toJson(),
          )
          .toList(),
    );

    useEffect(() {
      updateControllers(
          generalInformationModel.models[selectedModelIndex.value]);

      return null;
    }, []);
    bool validateAllModels() {
      for (var model in generalInformationModel.models) {
        if (model.name == null || model.name!.isEmpty) {
          return false;
        }
        if (model.description == null || model.description!.isEmpty) {
          return false;
        }
        if (model.categoryId == null) {
          return false;
        }
        if (model.sendPrice == null || model.sendPrice!.isEmpty) {
          return false;
        }
        if (model.sendImages.isEmpty) {
          return false;
        }
      }
      return true;
    }

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(10.5),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 33,
                width: 30,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/svg/close.svg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DordoiModelsListView(
                  models: generalInformationModel.models,
                  onAddTap: () {
                    if (generalInformationModel.models.length >= 10) {
                      showSnackbar(
                          context: context,
                          message: 'Вы не можете добавить более 10 моделей');
                      return;
                    }

                    if (formKey.currentState!.validate()) {
                      final list = List<ModelItemModel>.from(
                          generalInformationModel.models);
                      list.add(ModelItemModel());
                      ref.read(dordoiContainerModelProvider.notifier).state =
                          generalInformationModel.copyWith(models: list);
                      selectedModelIndex.value = list.length - 1;

                      updateControllers(list[list.length - 1]);
                      FocusManager.instance.primaryFocus?.unfocus();
                    }
                  },
                  onModelChanged: (index) {
                    selectedModelIndex.value = index;

                    updateControllers(generalInformationModel.models[index]);
                    // formKey.currentState!.reset();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  currentIndex: selectedModelIndex.value,
                ),
                Gap(24),
                AdCreationTextField(
                  controller: nameController,
                  keyboardType: TextInputType.emailAddress,
                  textCapitalization: TextCapitalization.sentences,
                  labelText: 'Введите заголовок модели',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле обязательно для заполнения';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    final list = List<ModelItemModel>.from(
                        generalInformationModel.models);
                    list[selectedModelIndex.value] =
                        list[selectedModelIndex.value].copyWith(name: value);
                    ref.read(dordoiContainerModelProvider.notifier).state =
                        generalInformationModel.copyWith(models: list);
                  },
                ),
                Gap(10),
                AdCreationTextField(
                  controller: descriptionController,
                  labelText: 'Описание',
                  textCapitalization: TextCapitalization.sentences,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Введите описание модели';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    final list = List<ModelItemModel>.from(
                        generalInformationModel.models);
                    list[selectedModelIndex.value] =
                        list[selectedModelIndex.value]
                            .copyWith(description: value);
                    ref.read(dordoiContainerModelProvider.notifier).state =
                        generalInformationModel.copyWith(models: list);
                  },
                ),
                Gap(10),
                DropdownCategoryFormField(
                  type: FormType.dordoiMarket,
                  isRequired: true,
                  selectedCategory: generalInformationModel
                          .models[selectedModelIndex.value].categoryId ??
                      generalInformationModel
                          .models[selectedModelIndex.value].category?.id,
                  onCategorySelected: (value) {
                    final list = List<ModelItemModel>.from(
                        generalInformationModel.models);
                    list[selectedModelIndex.value] =
                        list[selectedModelIndex.value]
                            .copyWith(categoryId: value);
                    ref.read(dordoiContainerModelProvider.notifier).state =
                        generalInformationModel.copyWith(models: list);
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
                    if (value!.isEmpty) {
                      return 'Поле обязательно для заполнения';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    print('object');
                    final list = List<ModelItemModel>.from(
                        generalInformationModel.models);
                    list[selectedModelIndex.value] =
                        list[selectedModelIndex.value]
                            .copyWith(sendPrice: value);
                    ref.read(dordoiContainerModelProvider.notifier).state =
                        generalInformationModel.copyWith(models: list);
                  },
                ),
                Gap(10),
                ImageFileFormField(
                  isRequired: true,
                  images: generalInformationModel
                      .models[selectedModelIndex.value].sendImages,
                  onImagesSelected: (images) {
                    final list = List<ModelItemModel>.from(
                        generalInformationModel.models);
                    list[selectedModelIndex.value] =
                        list[selectedModelIndex.value].copyWith(sendImages: [
                      ...generalInformationModel
                          .models[selectedModelIndex.value].sendImages,
                      ...images
                    ]);

                    ref.read(dordoiContainerModelProvider.notifier).state =
                        generalInformationModel.copyWith(models: list);
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  onRemoveImage: (index) {
                    // Создаём изменяемую копию списка
                    final list = List<ModelItemModel>.from(
                        generalInformationModel.models);

                    final sendImages = List.from(generalInformationModel
                        .models[selectedModelIndex.value].sendImages);

                    sendImages.removeAt(index);

                    list[selectedModelIndex.value] =
                        list[selectedModelIndex.value]
                            .copyWith(sendImages: sendImages);

                    ref.read(dordoiContainerModelProvider.notifier).state =
                        generalInformationModel.copyWith(models: list);
                  },
                ),
                Gap(10),
                GestureDetector(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      isLoading.value = true;
                      await submitData(context, ref, validateAllModels(),
                          generalInformationModel.models);
                      isLoading.value = false;
                    }
                  },
                  child: Container(
                    height: 52,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.only(bottom: 2.5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF9605AC),
                    ),
                    alignment: Alignment.center,
                    child: isLoading.value
                        ? SizedBox(
                            height: 25,
                            width: 25,
                            child: CircularProgressIndicator.adaptive(
                              backgroundColor: Colors.white,
                            ),
                          )
                        : Text(
                            'Сохранить',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> submitData(BuildContext context, WidgetRef ref,
      bool filledAllField, List<ModelItemModel> models) async {
    final id = ref.read(dordoiContainerModelProvider).id;
    if (filledAllField) {
      ApiResponse response = ApiResponse();
      if (id != -1) {
        response = await ref.read(createDordoiContainerProvider.future);
      } else {
        response = await ref.read(editDordoiContainerProvider.future);
      }
      if (!context.mounted) return;
      if (response.isSuccessful) {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuccessConfirmationScreen(
              isEditSuccess: id != -1,
              type: FormType.dordoiMarket,
            ),
          ),
        );
        if (!context.mounted) return;
        Navigator.pop(context);
        Navigator.pop(context);
        Navigator.pop(context);
      } else {
        showSnackbar(
          context: context,
          message: response.errorData?.toString() ?? 'Что-то пошло не так',
        );
      }
    } else {
      showSnackbar(
        context: context,
        message: 'Пожалуйста, заполните все поля во всех моделях.',
      );
    }
  }
}
