import 'package:chelnok_mob/helpers/communication_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class HelpSheet extends HookWidget {
  const HelpSheet({
    super.key,
    this.bottomIndent = 40,
  });

  final double bottomIndent;

  @override
  Widget build(BuildContext context) {
    final isFocused1 = useState<bool>(false);
    final isFocused2 = useState<bool>(false);
    final isFocused3 = useState<bool>(false);

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
                    Navigator.pop(context);
                    CommunicationHelper.openWhatsApp(
                      '+996702260204',
                      '',
                    );
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
                          Gap(1.5),
                          SvgPicture.asset(
                            'assets/svg/whatsapp.svg',
                            color: isFocused1.value
                                ? Colors.white
                                : Color(0xFF25D366),
                            height: 21,
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
                            child: Text('WhatsApp'),
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
                    Navigator.pop(context);
                    CommunicationHelper.openTelegram('+996702260204');
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
                          Icon(
                            Icons.telegram,
                            color: isFocused2.value
                                ? Colors.white
                                : Color(0xFF24A1DE),
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
                            child: Text('Telegram'),
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
                onTapDown: (_) => isFocused3.value = true,
                onTapUp: (details) {
                  isFocused3.value = false;

                  final RenderBox renderBox =
                      context.findRenderObject() as RenderBox;
                  final position =
                      renderBox.globalToLocal(details.globalPosition);

                  if (position.dx >= 0 &&
                      position.dy >= 0 &&
                      position.dx <= renderBox.size.width &&
                      position.dy <= renderBox.size.height) {
                    Navigator.pop(context);
                    CommunicationHelper.openEmail(
                        'nursultanjumashovv@gmail.com');
                  }
                },
                onTapCancel: () => isFocused3.value = false,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isFocused3.value
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
                          Icon(
                            Icons.mail,
                            color:
                                isFocused3.value ? Colors.white : Colors.grey,
                          ),
                          Gap(7),
                          AnimatedDefaultTextStyle(
                            duration: Duration(milliseconds: 300),
                            style: TextStyle(
                              color: isFocused3.value
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 14,
                            ),
                            child: Text('Написать на почту'),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/svg/right_arrow.svg',
                        color: isFocused3.value ? Colors.white : Colors.black,
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
