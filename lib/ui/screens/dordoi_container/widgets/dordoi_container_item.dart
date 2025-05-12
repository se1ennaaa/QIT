import 'package:chelnok_mob/helpers/modal_sheets/add_dordoi_container_sheet.dart';
import 'package:chelnok_mob/providers/dordoi_market_providers.dart';
import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:chelnok_mob/data/models/dordoi_container_model.dart';
import 'package:chelnok_mob/helpers/communication_helper.dart';
import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/providers/feedback_providers.dart';
import 'package:chelnok_mob/ui/screens/image_viewer/image_viewer_screen.dart';
import 'package:chelnok_mob/ui/screens/universal_reviews/universal_reviews_screen.dart';
import 'package:chelnok_mob/ui/widgets/edit_ad_button_screen.dart';
import 'package:chelnok_mob/ui/widgets/moderation_status_container.dart';
import 'package:chelnok_mob/ui/widgets/no_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DordoiContainerItem extends HookConsumerWidget {
  const DordoiContainerItem({
    super.key,
    required this.model,
    this.onFavoriteTap,
    this.onMoreDetailsTap,
    this.canEdit = false,
  });

  final DordoiContainerModel model;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onMoreDetailsTap;
  final bool canEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageViewController = usePageController();
    final modelsViewController = usePageController();
    final currentModelIndex = useState(0);

    modelsViewController.addListener(() {
      currentModelIndex.value = modelsViewController.page!.toInt();
    });

    return SizedBox(
      height: 320,
      width: 300,
      child: PageView.builder(
        itemCount: model.models.length,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        controller: modelsViewController,
        itemBuilder: (context, index) {
          final item = model.models[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 11),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onMoreDetailsTap,
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              if (item.images.isNotEmpty)
                                SizedBox(
                                  height: 208,
                                  width: 210,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(7),
                                    child: PageView.builder(
                                      itemCount: item.images.length,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      controller: imageViewController,
                                      itemBuilder: (context, index) {
                                        final image = item.images[index];
                                        return GestureDetector(
                                          onTap: () async {
                                            final result = await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ImageViewerScreen(
                                                  item.images,
                                                  initialImage: index,
                                                ),
                                              ),
                                            );
                                            if (result is int) {
                                              imageViewController
                                                  .jumpToPage(result);
                                            }
                                          },
                                          child: CachedImage(image),
                                        );
                                      },
                                    ),
                                  ),
                                )
                              else
                                NoImage(),
                              IconButton(
                                icon: SvgPicture.asset(
                                  'assets/svg/${model.isLike ? 'favorite_painted.svg' : 'favorite.svg'}',
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  onFavoriteTap?.call();
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.5),
                            child: SmoothPageIndicator(
                              controller: imageViewController,
                              count: item.images.length,
                              axisDirection: Axis.horizontal,
                              effect: SlideEffect(
                                spacing: 4,
                                radius: 100,
                                dotWidth: 6,
                                dotHeight: 6,
                                paintStyle: PaintingStyle.stroke,
                                strokeWidth: 1,
                                dotColor: Color(0xFF9605AC),
                                activeDotColor: Color(0xFF9605AC),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (model.name != null) ...[
                              Text(
                                model.name!,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Gap(10),
                            ],
                            if (item.name != null) ...[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 68,
                                    child: Text(
                                      'модель:',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF626262),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      item.name!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                    ),
                                  ),
                                ],
                              ),
                              Gap(5),
                            ],
                            if (item.description != null) ...[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 68,
                                    child: Text(
                                      'описание:  ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF626262),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      child: Text(
                                        item.description!,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Gap(5),
                            ],
                            if (item.category?.title != null) ...[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 68,
                                    child: Text(
                                      'категория: ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF626262),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      item.category!.title!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Gap(10),
                            ],
                            if (item.price != null) ...[
                              Row(
                                children: [
                                  SvgPicture.asset('assets/svg/price_tag.svg'),
                                  Gap(5),
                                  Text(
                                    '${item.price} сом',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              Gap(2),
                            ],
                            if (model.rating != null) ...[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    SlideRoute(
                                      screen: UniversalReviewsScreen(
                                        id: model.id,
                                        type: FeedbackType.dordoiMarket,
                                      ),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/star_2.svg',
                                      height: 16.5,
                                    ),
                                    Gap(5),
                                    Text(
                                      model.rating.toString(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Gap(2),
                            ],
                            Gap(10),
                            if (model.whatsapp != null) ...[
                              GestureDetector(
                                onTap: () {
                                  CommunicationHelper.openWhatsApp(
                                      model.whatsapp.toString(), '');
                                },
                                child: Container(
                                  height: 27,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color(0xFF34860D),
                                  ),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 1),
                                  child: Text(
                                    'Написать',
                                    style: TextStyle(
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ),
                              Gap(4)
                            ],
                            if (model.phoneNumber != null) ...[
                              GestureDetector(
                                onTap: () {
                                  CommunicationHelper.makePhoneCall(
                                    model.phoneNumber.toString(),
                                  );
                                },
                                child: Container(
                                  height: 27,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color(0xFF9605AC),
                                  ),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 1),
                                  child: Text(
                                    'Позвонить',
                                    style: TextStyle(
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ),
                              Gap(4)
                            ],
                            if (model.status != null && canEdit) ...[
                              Gap(5),
                              ModerationStatusContainer(
                                model.status!,
                              ),
                              Gap(5),
                              EditAdButtonScreen(
                                onTap: () async {
                                  await showAddDordoiContainerSheet(
                                    context: context,
                                    model: model,
                                  );
                                  ref
                                      .read(
                                          dordoiContainerModelProvider.notifier)
                                      .state = DordoiContainerModel(
                                    id: -1,
                                    models: [
                                      ModelItemModel(),
                                    ],
                                  );
                                },
                              ),
                            ],
                          ],
                        ),
                      )
                    ],
                  ),
                  Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // if (currentModelIndex.value != 0)
                      GestureDetector(
                        onTap: () {
                          modelsViewController.animateToPage(
                            currentModelIndex.value - 1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/svg/arrow_back2.svg'),
                            Gap(10),
                            Text(
                              'Предыдущая\nмодель',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF626262),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // else
                      //   Gap(80),
                      if (item.name != null)
                        SizedBox(
                          width: 100,
                          child: Text(
                            item.name!,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      // if (model.models.length - 1 != currentModelIndex.value)
                      GestureDetector(
                        onTap: () {
                          modelsViewController.animateToPage(
                            currentModelIndex.value + 1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              'Следующая\nмодель',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xFF626262),
                              ),
                            ),
                            Gap(10),
                            SvgPicture.asset('assets/svg/arrow_right.svg'),
                          ],
                        ),
                      )
                      // else
                      //   Gap(80),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
