import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_sewing_workshop_sheet.dart';
import 'package:chelnok_mob/ui/screens/image_viewer/image_viewer_screen.dart';

import 'package:chelnok_mob/ui/widgets/edit_ad_button_screen.dart';
import 'package:chelnok_mob/ui/widgets/moderation_status_container.dart';
import 'package:chelnok_mob/ui/widgets/no_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SewingWorkshopItem extends HookWidget {
  const SewingWorkshopItem({
    super.key,
    required this.model,
    this.onFavoriteTap,
    this.onMoreDetailsTap,
    this.canEdit = false,
  });

  final SewingWorkshopModel model;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onMoreDetailsTap;
  final bool canEdit;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    return Bounceable(
      onTap: onMoreDetailsTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (model.images.isNotEmpty) ...[
            Container(
              height: 160,
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: PageView.builder(
                  itemCount: model.images.length,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  controller: pageController,
                  itemBuilder: (context, index) {
                    final image = model.images[index];
                    return GestureDetector(
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageViewerScreen(
                              model.images,
                              initialImage: index,
                            ),
                          ),
                        );
                        if (result is int) {
                          pageController.jumpToPage(result);
                        }
                      },
                      child: CachedImage(
                        image,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),
            Gap(9),
            Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: model.images.length,
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
            Gap(15),
          ] else
            NoImage(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (model.name != null)
                Expanded(
                  child: Text(
                    model.name!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/svg/${model.isLike ? 'favorite_painted.svg' : 'favorite.svg'}',
                ),
                onPressed: () {
                  onFavoriteTap?.call();
                },
              ),
            ],
          ),
          if (model.category?.title != null) ...[
            Gap(5),
            RichText(
              text: TextSpan(
                text: 'категория: ',
                style: TextStyle(
                  fontFamily: GoogleFonts.ubuntu().fontFamily,
                  color: Color(0xFF626262),
                  fontSize: 10,
                ),
                children: [
                  TextSpan(
                    text: model.category!.title,
                    style: TextStyle(
                      fontFamily: GoogleFonts.ubuntu().fontFamily,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF232323),
                    ),
                  ),
                ],
              ),
            ),
          ],
          if (model.rating != null) ...[
            Gap(5),
            Row(
              children: [
                SvgPicture.asset('assets/svg/star.svg'),
                Gap(5),
                Text(
                  model.rating.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                )
              ],
            )
          ],
          if (model.address != null) ...[
            Gap(3),
            Row(
              children: [
                SvgPicture.asset('assets/svg/location.svg'),
                Gap(5),
                Expanded(
                  child: Text(
                    model.address.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )
          ],
          Gap(8),
          SizedBox(
            height: 27,
            child: ElevatedButton(
              onPressed: onMoreDetailsTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF9605AC),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                maximumSize: Size(double.infinity, 27),
                minimumSize: Size(double.infinity, 27),
              ),
              child: Text(
                'подробнее',
              ),
            ),
          ),
          if (model.status != null && canEdit) ...[
            Gap(5),
            ModerationStatusContainer(
              model.status!,
            ),
            Gap(5),
            EditAdButtonScreen(
              onTap: () {
                showAddSewingWorkshopSheet(context, id: model.id);
              },
            ),
          ],
        ],
      ),
    );
  }
}
