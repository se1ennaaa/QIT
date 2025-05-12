import 'package:chelnok_mob/providers/category_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SewingEquipmentSheet extends HookConsumerWidget {
  const SewingEquipmentSheet(this.onCategorySelected, {super.key});

  final Function(int id) onCategorySelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoryListProvider(CategoryType.apparel));

    final isFocusedList = useState<List<bool>>([]);
    useEffect(() {
      categories.maybeWhen(
          orElse: () {},
          data: (data) =>
              isFocusedList.value = List.generate(data.length, (_) => false));
      return null;
    }, [categories]);

    void updateFocus(int index, bool isFocused) {
      isFocusedList.value = List.from(isFocusedList.value)..[index] = isFocused;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: double.infinity),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 3,
            width: 47,
            margin: EdgeInsets.only(top: 8.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color.fromARGB(255, 176, 176, 176),
            ),
          ),
        ),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.pop(context);
          },
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SvgPicture.asset(
                'assets/svg/close.svg',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Выбрать подкатегорию',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(25),
              categories.maybeWhen(
                orElse: () {
                  return SizedBox();
                },
                data: (data) {
                  return Column(
                    children: [
                      ...List.generate(
                        data.length,
                        (index) {
                          final category = data[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: GestureDetector(
                              onTapDown: (_) => updateFocus(index, true),
                              onTapUp: (details) {
                                updateFocus(index, false);
                                Navigator.pop(context);
                                onCategorySelected(category.id);
                              },
                              onTapCancel: () => updateFocus(index, false),
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: isFocusedList.value[index]
                                      ? Color(0xFF9605AC)
                                      : Color(0xFFF6EFF7),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xFFD091D9),
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 14),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          category.title != 'Продажа'
                                              ? 'assets/svg/rent_icon.svg'
                                              : 'assets/svg/sale_icon.svg',
                                          color: isFocusedList.value[index]
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                        Gap(7),
                                        AnimatedDefaultTextStyle(
                                          duration: Duration(milliseconds: 300),
                                          style: TextStyle(
                                            color: isFocusedList.value[index]
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 14,
                                          ),
                                          child: Text(category.title ?? ''),
                                        ),
                                      ],
                                    ),
                                    SvgPicture.asset(
                                      'assets/svg/right_arrow.svg',
                                      color: isFocusedList.value[index]
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
              Gap(40),
            ],
          ),
        ),
      ],
    );
  }
}
