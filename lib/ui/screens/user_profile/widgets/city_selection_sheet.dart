import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CitySelectionSheet extends HookWidget {
  const CitySelectionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final cities = [
      'Бишкек',
      'Ош',
      'Кара-балта',
      'Талас',
      'Нарын',
      'Балыкчы',
    ];

    final isFocusedList =
        useState<List<bool>>(List.generate(cities.length, (_) => false));

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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 40),
              child: Text(
                'Изменить город',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
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
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20),
              ...List.generate(cities.length, (index) {
                final city = cities[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: GestureDetector(
                    onTapDown: (_) => updateFocus(index, true),
                    onTapUp: (details) {
                      updateFocus(index, false);
                      Navigator.pop(context, city);
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AnimatedDefaultTextStyle(
                            duration: Duration(milliseconds: 300),
                            style: TextStyle(
                              color: isFocusedList.value[index]
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 14,
                            ),
                            child: Text(city),
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
              }),
              Gap(40),
            ],
          ),
        ),
      ],
    );
  }
}
