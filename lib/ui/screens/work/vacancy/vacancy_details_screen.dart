import 'package:chelnok_mob/data/models/vacancy_model.dart';
import 'package:chelnok_mob/helpers/communication_helper.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_vacancy_or_resume_sheet.dart';
import 'package:chelnok_mob/providers/nav_bar_controller_provider.dart';

import 'package:chelnok_mob/providers/toggle_favorite_provider.dart';
import 'package:chelnok_mob/providers/user_providers.dart';

import 'package:chelnok_mob/providers/vacancy_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';

import 'package:chelnok_mob/ui/widgets/edit_ad_button_screen.dart';
import 'package:chelnok_mob/ui/widgets/expandable_text_widget.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../widgets/app_bars/custom_app_bar.dart';

class VacancyDetailsScreen extends HookConsumerWidget {
  const VacancyDetailsScreen(
    this.id, {
    super.key,
    this.listInitialParams,
    this.canEdit = false,
  });

  final int id;
  final VacancyParamsModel? listInitialParams;
  final bool canEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vacancyDetailsState = ref.watch(vacancyDetailsProvider(id));
    final pageController = usePageController();
    final userState = ref.watch(userProvider);

    final scrollController = useScrollController();
    final isNavBarVisibleValue = useState(true);
    final previousHomeScreenOffset = useState(0.0);
    scrollController.addListener(() {
      // NavBarVisible
      final currentScrollOffset = scrollController.offset;

      if (currentScrollOffset.toInt() >
          previousHomeScreenOffset.value.toInt()) {
        if (isNavBarVisibleValue.value) {
          isNavBarVisibleValue.value = false;
          ref.read(isNavBarVisible.notifier).state = false;
        }
      } else if (currentScrollOffset.toInt() <
          previousHomeScreenOffset.value.toInt()) {
        if (!isNavBarVisibleValue.value) {
          isNavBarVisibleValue.value = true;
          ref.read(isNavBarVisible.notifier).state = true;
        }
      }

      previousHomeScreenOffset.value = currentScrollOffset;
    });

    return SafeAreaWrapper(
      child: Scaffold(
        body: ListView(
          controller: scrollController,
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            CustomAppBar(
              title: 'Вакансии',
              isFavorite: vacancyDetailsState.maybeWhen(
                orElse: () => false,
                data: (data) => data.isLike,
              ),
              onHeartTap: () {
                if (userState.authStatus.isUnauth) {
                  showSnackbar(
                    context: context,
                    message: "Вы не авторизованы",
                    notAuthorized: true,
                  );

                  return;
                }
                ref.read(toggleFavoriteProvider(id, FavoriteType.order));
                ref.read(vacancyDetailsProvider(id).notifier).toogleFavorite();
                if (listInitialParams != null) {
                  ref
                      .read(vacancyListProvider(params: listInitialParams)
                          .notifier)
                      .toogleFavorite(id);
                }
              },
            ),
            vacancyDetailsState.when(
              data: (data) => Column(
                children: [
                  Gap(24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF6EFF7),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFD091D9),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 14, vertical: 22),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (data.name != null) ...[
                                Text(
                                  'Должность',
                                  style: TextStyle(
                                    color: Color(0xFF959595),
                                  ),
                                ),
                                Gap(2),
                                Text(
                                  data.name!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Divider(
                                  color: Color(0xFFE8CCEC),
                                ),
                                Gap(15),
                              ],
                              if (data.experience != null) ...[
                                Text(
                                  'Стаж работы',
                                  style: TextStyle(
                                    color: Color(0xFF959595),
                                  ),
                                ),
                                Gap(2),
                                Text(
                                  data.experience!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Divider(
                                  color: Color(0xFFE8CCEC),
                                ),
                                Gap(15),
                              ],
                              if (data.address != null) ...[
                                Text(
                                  'Место работы',
                                  style: TextStyle(
                                    color: Color(0xFF959595),
                                  ),
                                ),
                                Gap(2),
                                Text(
                                  data.address!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Divider(
                                  color: Color(0xFFE8CCEC),
                                ),
                                Gap(15),
                              ],
                              if (data.salary != null) ...[
                                Text(
                                  'Зарплата',
                                  style: TextStyle(
                                    color: Color(0xFF959595),
                                  ),
                                ),
                                Gap(2),
                                Text(
                                  '${data.salary} сом',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Divider(
                                  color: Color(0xFFE8CCEC),
                                ),
                                Gap(15),
                              ],
                              if (data.description != null) ...[
                                Text(
                                  'Описание',
                                  style: TextStyle(
                                    color: Color(0xFF959595),
                                  ),
                                ),
                                Gap(2),
                                ExpandableTextWidget(
                                  data.description!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    height: 1.1,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                        if (data.dateOfRegistration != null) ...[
                          Gap(9),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFFF6EFF7),
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFFD091D9),
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Дата публикации',
                                    style: TextStyle(
                                      color: Color(0xFF959595),
                                    ),
                                  ),
                                  Gap(2),
                                  Text(
                                    DateFormat('d.MM.yy')
                                        .format(data.dateOfRegistration!),
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                        Gap(17),
                        Row(
                          children: [
                            if (data.whatsappNumber != null)
                              Expanded(
                                child: SizedBox(
                                  height: 45,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF34860D),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    onPressed: () {
                                      CommunicationHelper.openWhatsApp(
                                        data.whatsappNumber.toString(),
                                        '',
                                      );
                                    },
                                    child: Text('Написать'),
                                  ),
                                ),
                              ),
                            Gap(5),
                            Expanded(
                              child: SizedBox(
                                height: 45,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF9605AC),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  onPressed: () {
                                    CommunicationHelper.makePhoneCall(
                                      data.phoneNumber.toString(),
                                    );
                                  },
                                  child: Text('Позвонить'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(30),
                      ],
                    ),
                  ),
                  if (data.status != null && canEdit) Gap(47),
                ],
              ),
              error: (er, error) => SizedBox(),
              loading: () => SizedBox(),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: vacancyDetailsState.maybeWhen(
          orElse: () => null,
          data: (data) {
            if (data.status == null) return null;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: EditAdButtonScreen(
                onTap: () async {
                  showAddVacancySheet(context, id: id);
                },
                height: 49,
                borderRadius: 15,
                titleFontSize: 14,
              ),
            );
          },
        ),
      ),
    );
  }
}
