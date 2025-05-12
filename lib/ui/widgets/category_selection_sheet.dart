import 'package:chelnok_mob/helpers/modal_sheets/add_home_worker_sheet.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_market_sheet.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_marketplace_sheet.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_order_sheet.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_real_estate_sheet.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_service_sheet.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_sewing_equipment_sheet.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_sewing_workshop_sheet.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_vacancy_or_resume_sheet.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategorySelectionSheet extends HookConsumerWidget {
  const CategorySelectionSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    final categories = [
      {
        "title": "Швейный цех",
        "icon": "assets/svg/sewing_machine.svg",
        "action": () {
          userState.userProfile.maybeWhen(
            orElse: () => null,
            data: (data) {
              if (data.role == null) return;
              if (data.role!.isSewingWorkshop) {
                showAddSewingWorkshopSheet(context);
              } else {
                showSnackbar(context: context, message: "У вас нет доступа");
              }
            },
            error: (error, stackTrace) =>
                showSnackbar(context: context, message: error.toString()),
          );
        },
      },
      {
        "title": "Заказы",
        "icon": "assets/svg/paper_with_writing.svg",
        "action": () {
          userState.userProfile.maybeWhen(
            orElse: () => null,
            data: (data) {
              if (data.role == null) return;
              if (data.role!.isCustomer) {
                showAddOrderSheet(context);
              } else {
                showSnackbar(context: context, message: "У вас нет доступа");
              }
            },
            error: (error, stackTrace) =>
                showSnackbar(context: context, message: error.toString()),
          );
        },
      },
      {
        "title": "Рынки",
        "icon": "assets/svg/box.svg",
        "action": () => showMarketSelectionSheet(context),
      },
      {
        "title": "Маркетплейсы",
        "icon": "assets/svg/bag.svg",
        "action": () => showMarketplaceSelectionSheet(context),
      },
      {
        "title": "Услуги",
        "icon": "assets/svg/briefcase2.svg",
        "action": () => showAddServiceSheet(context),
      },
      {
        "title": "Надомники",
        "icon": "assets/svg/scissor.svg",
        "action": () => showAddHomeWorkerSheet(context),
      },
      {
        "title": "Вакансии",
        "icon": "assets/svg/peoples.svg",
        "action": () => showVacancyOrResumeSelectionSheet(context),
      },
      {
        "title": "Недвижимость",
        "icon": "assets/svg/home.svg",
        "action": () => showRealEstateSelectionSheet(context),
      },
      {
        "title": "Швейное оборудование",
        "icon": "assets/svg/sewing_equipment.svg",
        "action": () => addSewingEquipmentSheet(context),
      },
    ];

    final isFocusedList =
        useState<List<bool>>(List.generate(categories.length, (_) => false));

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
                'Выбрать категорию',
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
              ...List.generate(categories.length, (index) {
                final category = categories[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: GestureDetector(
                    onTapDown: (_) => updateFocus(index, true),
                    onTapUp: (details) {
                      updateFocus(index, false);
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).clearSnackBars();
                      final action = category["action"] as VoidCallback;
                      action();
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
                          Row(
                            children: [
                              SvgPicture.asset(
                                category["icon"] as String,
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
                                child: Text(category["title"] as String),
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
              }),
              Gap(40),
            ],
          ),
        ),
      ],
    );
  }
}
