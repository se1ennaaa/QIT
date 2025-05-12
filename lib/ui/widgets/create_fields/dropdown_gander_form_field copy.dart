import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class DropdownGenderFormField extends HookConsumerWidget {
  const DropdownGenderFormField({
    super.key,
    this.selectedGender,
    this.onGenderSelected,
    this.isRequired = false,
  });

  final String? selectedGender;
  final Function(String)? onGenderSelected;
  final bool isRequired;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isShowGender = useState(false);
    final genderList = useState([
      MapEntry('male', 'Мужской'),
      MapEntry('female', 'Женский'),
      MapEntry('other', 'Другой'),
    ]);

    return FormField(
      validator: (value) {
        if (selectedGender == null && isRequired) {
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
                isShowGender.value = !isShowGender.value;
              },
              child: Container(
                height: 52,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft:
                        isShowGender.value ? Radius.zero : Radius.circular(10),
                    bottomRight:
                        isShowGender.value ? Radius.zero : Radius.circular(10),
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
                      genderList.value
                              .firstWhereOrNull((e) => e.key == selectedGender)
                              ?.value ??
                          'Выберите пол',
                      style: TextStyle(
                        color: selectedGender != null
                            ? Colors.black
                            : Color(0xFF6E6E6E),
                        fontSize: 16,
                      ),
                    ),
                    AnimatedRotation(
                      turns: isShowGender.value ? 0.25 : 0.75,
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
              child: isShowGender.value
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
                          left: BorderSide(color: Color(0xFFD59BDE), width: 1),
                          right: BorderSide(color: Color(0xFFD59BDE), width: 1),
                        ),
                      ),
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 7.5),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: genderList.value.length,
                        itemBuilder: (BuildContext context, int index) {
                          final item = genderList.value[index];
                          return InkWell(
                            onTap: () {
                              onGenderSelected?.call(item.key);
                              isShowGender.value = false;
                            },
                            child: Container(
                              height: 35,
                              padding: EdgeInsets.symmetric(horizontal: 22),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                item.value,
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
    );
  }
}
