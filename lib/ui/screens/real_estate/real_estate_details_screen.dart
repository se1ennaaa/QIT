import 'package:chelnok_mob/providers/nav_bar_controller_provider.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:chelnok_mob/data/models/real_estate_model.dart';
import 'package:chelnok_mob/helpers/communication_helper.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_real_estate_sheet.dart';

import 'package:chelnok_mob/providers/real_estate_providers.dart';
import 'package:chelnok_mob/providers/toggle_favorite_provider.dart';

import 'package:chelnok_mob/ui/screens/image_viewer/image_viewer_screen.dart';

import 'package:chelnok_mob/ui/widgets/edit_ad_button_screen.dart';
import 'package:chelnok_mob/ui/widgets/expandable_text_widget.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/app_bars/custom_app_bar.dart';

class RealEstateDetailsScreen extends HookConsumerWidget {
  const RealEstateDetailsScreen(
    this.id, {
    super.key,
    this.listInitialParams,
    this.canEdit = false,
  });

  final int id;
  final RealEstateParamsModel? listInitialParams;
  final bool canEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realEstateDetailsState = ref.watch(realEstateDetailsProvider(id));
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
              title: 'Аренда',
              isFavorite: realEstateDetailsState.maybeWhen(
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
                ref.read(toggleFavoriteProvider(id, FavoriteType.property));
                ref
                    .read(realEstateDetailsProvider(id).notifier)
                    .toogleFavorite();
                if (listInitialParams != null) {
                  ref
                      .read(realEstateListProvider(params: listInitialParams)
                          .notifier)
                      .toogleFavorite(id);
                }
              },
            ),
            realEstateDetailsState.when(
              data: (data) => Column(
                children: [
                  Gap(27),
                  if (data.images.isNotEmpty) ...[
                    Container(
                      height: 274,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: PageView.builder(
                          itemCount: data.images.length,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          controller: pageController,
                          itemBuilder: (context, index) {
                            final image = data.images[index];
                            return GestureDetector(
                              onTap: () async {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ImageViewerScreen(
                                      data.images,
                                      initialImage: index,
                                    ),
                                  ),
                                );
                                if (result is int) {
                                  pageController.jumpToPage(result);
                                }
                              },
                              child: CachedImage(image),
                            );
                          },
                        ),
                      ),
                    ),
                    Gap(13),
                    Center(
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: data.images.length,
                        axisDirection: Axis.horizontal,
                        effect: SlideEffect(
                          spacing: 4,
                          radius: 100,
                          dotWidth: 10,
                          dotHeight: 10,
                          paintStyle: PaintingStyle.stroke,
                          strokeWidth: 1,
                          dotColor: Color(0xFF9605AC),
                          activeDotColor: Color(0xFF9605AC),
                        ),
                      ),
                    ),
                    Gap(22),
                  ],
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
                                  'Заголовок',
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
                              if (data.category?.title != null) ...[
                                Text(
                                  'Категория',
                                  style: TextStyle(
                                    color: Color(0xFF959595),
                                  ),
                                ),
                                Gap(2),
                                Text(
                                  data.category!.title!,
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
                              if (data.area != null) ...[
                                Text(
                                  'Площадь',
                                  style: TextStyle(
                                    color: Color(0xFF959595),
                                  ),
                                ),
                                Gap(2),
                                Text(
                                  data.area!,
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
                              if (data.price != null) ...[
                                Text(
                                  'Цена',
                                  style: TextStyle(
                                    color: Color(0xFF959595),
                                  ),
                                ),
                                Gap(2),
                                Text(
                                  '${data.price} сом',
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
                              if (data.regionOfConsideration != null) ...[
                                Text(
                                  'Регион рассматривания',
                                  style: TextStyle(
                                    color: Color(0xFF959595),
                                  ),
                                ),
                                Gap(2),
                                Text(
                                  data.regionOfConsideration!,
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
        floatingActionButton: realEstateDetailsState.maybeWhen(
          data: (data) {
            if (data.status != null && canEdit) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: EditAdButtonScreen(
                  onTap: () async {
                    showAddRealEstateSheet(context, id: id);
                  },
                  height: 49,
                  borderRadius: 15,
                  titleFontSize: 14,
                ),
              );
            } else {
              return null;
            }
          },
          orElse: () {
            return null;
          },
        ),
      ),
    );
  }
}
