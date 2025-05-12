import 'package:chelnok_mob/providers/ad_management_provider.dart';
import 'package:chelnok_mob/providers/category_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:collection/collection.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class DropdownCategoryFormField extends HookConsumerWidget {
  const DropdownCategoryFormField({
    super.key,
    this.selectedCategory,
    this.onCategorySelected,
    this.isRequired = false,
    this.type,
  });

  final int? selectedCategory;
  final Function(int)? onCategorySelected;
  final bool isRequired;
  final FormType? type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isShowCategory = useState(false);
    final categoryListState =
        ref.watch(categoryListProvider(getCategoryType(type)));

    return categoryListState.when(
      data: (data) => FormField(
        validator: (value) {
          if (selectedCategory == null && isRequired) {
            return 'Поле обязательно для заполнения';
          }
          return null;
        },
        builder: (form) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  isShowCategory.value = !isShowCategory.value;
                },
                child: Container(
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: isShowCategory.value
                          ? Radius.zero
                          : Radius.circular(10),
                      bottomRight: isShowCategory.value
                          ? Radius.zero
                          : Radius.circular(10),
                    ),
                    border: Border.all(
                      width: 1,
                      color: Color(0xFFD59BDE),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data
                                .firstWhereOrNull(
                                    (e) => e.id == selectedCategory)
                                ?.title ??
                            'Выберите категорию',
                        style: TextStyle(
                          color: data.firstWhereOrNull(
                                      (e) => e.id == selectedCategory) !=
                                  null
                              ? Colors.black
                              : Color(0xFF6E6E6E),
                          fontSize: 16,
                        ),
                      ),
                      AnimatedRotation(
                        turns: isShowCategory.value ? 0.25 : 0.75,
                        duration: Duration(milliseconds: 300),
                        child: SvgPicture.asset(
                          'assets/svg/arrow_back.svg',
                          color: Color(0xFF9605AC),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return SizeTransition(
                    sizeFactor: animation,
                    axisAlignment: -1.0,
                    child: child,
                  );
                },
                child: isShowCategory.value
                    ? Container(
                        key: ValueKey('dropdown'),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          border: Border(
                            bottom:
                                BorderSide(color: Color(0xFFD59BDE), width: 1),
                            left:
                                BorderSide(color: Color(0xFFD59BDE), width: 1),
                            right:
                                BorderSide(color: Color(0xFFD59BDE), width: 1),
                          ),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(vertical: 7.5),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                            final item = data[index];
                            return InkWell(
                              onTap: () {
                                onCategorySelected?.call(item.id);
                                isShowCategory.value = false;
                              },
                              child: Container(
                                height: 35,
                                padding: EdgeInsets.symmetric(horizontal: 22),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  item.title ?? '',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF6E6E6E),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    : SizedBox.shrink(
                        key: ValueKey('empty'),
                      ),
              ),
              if (form.hasError)
                Padding(
                  padding: const EdgeInsets.only(top: 3, left: 15),
                  child: Text(
                    form.errorText ?? '',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
      error: (error, stackTrace) => SizedBox(),
      loading: () => SizedBox(),
    );
  }
}

CategoryType getCategoryType(FormType? type) {
  switch (type) {
    case FormType.sewingEquipment:
      return CategoryType.apparel;
    case FormType.sewingWorkshop:
      return CategoryType.workshop;
    case FormType.order:
      return CategoryType.order;
    case FormType.madinaMarket:
      return CategoryType.markets;
    case FormType.dordoiMarket:
      return CategoryType.dordoi;
    case FormType.realEstate:
      return CategoryType.property;
    default:
      return CategoryType.apparel;
  }
}
