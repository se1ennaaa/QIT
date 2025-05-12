import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

enum Marketplace {
  fulfilment,
  manager,
  course;

  bool get isFulfilment => this == fulfilment;
  bool get isManager => this == manager;
  bool get isCourse => this == course;
}

class MarketplaceSelectionSheet extends HookWidget {
  const MarketplaceSelectionSheet(
    this.onMarketSelected, {
    super.key,
    this.bottomIndent = 40,
  });

  final Function(Marketplace type) onMarketSelected;
  final double bottomIndent;

  @override
  Widget build(BuildContext context) {
    final isFocused1 = useState<bool>(false);
    final isFocused2 = useState<bool>(false);

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
                'Выбрать категорию',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(25),
              GestureDetector(
                onTapDown: (_) => isFocused1.value = true,
                onTapUp: (details) {
                  isFocused1.value = false;
                  // Проверяем, отпущен ли палец внутри контейнера
                  final RenderBox renderBox =
                      context.findRenderObject() as RenderBox;
                  final position =
                      renderBox.globalToLocal(details.globalPosition);

                  if (position.dx >= 0 &&
                      position.dy >= 0 &&
                      position.dx <= renderBox.size.width &&
                      position.dy <= renderBox.size.height) {
                    onMarketSelected.call(Marketplace.fulfilment);
                  }
                },
                onTapCancel: () => isFocused1.value = false,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isFocused1.value
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
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/fulfilment.svg',
                            color:
                                isFocused1.value ? Colors.white : Colors.black,
                          ),
                          Gap(7),
                          AnimatedDefaultTextStyle(
                            duration: Duration(milliseconds: 300),
                            style: TextStyle(
                              color: isFocused1.value
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 14,
                            ),
                            child: Text('Фулфилмент'),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/svg/right_arrow.svg',
                        color: isFocused1.value ? Colors.white : Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Gap(5),
              GestureDetector(
                onTapDown: (_) => isFocused2.value = true,
                onTapUp: (details) {
                  isFocused2.value = false;

                  final RenderBox renderBox =
                      context.findRenderObject() as RenderBox;
                  final position =
                      renderBox.globalToLocal(details.globalPosition);

                  if (position.dx >= 0 &&
                      position.dy >= 0 &&
                      position.dx <= renderBox.size.width &&
                      position.dy <= renderBox.size.height) {
                    onMarketSelected.call(Marketplace.manager);
                  }
                },
                onTapCancel: () => isFocused2.value = false,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isFocused2.value
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
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/manager.svg',
                            color:
                                isFocused2.value ? Colors.white : Colors.black,
                          ),
                          Gap(7),
                          AnimatedDefaultTextStyle(
                            duration: Duration(milliseconds: 300),
                            style: TextStyle(
                              color: isFocused2.value
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 14,
                            ),
                            child: Text('Менеджеры'),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/svg/right_arrow.svg',
                        color: isFocused2.value ? Colors.white : Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Gap(5),
              GestureDetector(
                onTapDown: (_) => isFocused2.value = true,
                onTapUp: (details) {
                  isFocused2.value = false;

                  final RenderBox renderBox =
                      context.findRenderObject() as RenderBox;
                  final position =
                      renderBox.globalToLocal(details.globalPosition);

                  if (position.dx >= 0 &&
                      position.dy >= 0 &&
                      position.dx <= renderBox.size.width &&
                      position.dy <= renderBox.size.height) {
                    onMarketSelected.call(Marketplace.course);
                  }
                },
                onTapCancel: () => isFocused2.value = false,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isFocused2.value
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
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/education.svg',
                            color:
                                isFocused2.value ? Colors.white : Colors.black,
                          ),
                          Gap(7),
                          AnimatedDefaultTextStyle(
                            duration: Duration(milliseconds: 300),
                            style: TextStyle(
                              color: isFocused2.value
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 14,
                            ),
                            child: Text('Обучение'),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/svg/right_arrow.svg',
                        color: isFocused2.value ? Colors.white : Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Gap(bottomIndent),
            ],
          ),
        ),
      ],
    );
  }
}
