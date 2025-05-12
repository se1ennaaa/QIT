import 'package:chelnok_mob/ui/widgets/cached_image.dart';
import 'package:chelnok_mob/data/models/manager_model.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_marketplace_sheet.dart';
import 'package:chelnok_mob/ui/screens/image_viewer/image_viewer_screen.dart';

import 'package:chelnok_mob/ui/widgets/edit_ad_button_screen.dart';
import 'package:chelnok_mob/ui/widgets/moderation_status_container.dart';
import 'package:chelnok_mob/ui/widgets/no_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ManagerItem extends HookWidget {
  const ManagerItem({
    super.key,
    required this.model,
    this.onFavoriteTap,
    this.onMoreDetailsTap,
    this.canEdit = false,
  });

  final ManagerModel model;
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
          if (model.image != null) ...[
            Container(
              height: 160,
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: PageView.builder(
                  itemCount: 1,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageViewerScreen(
                              [model.image],
                              initialImage: index,
                            ),
                          ),
                        );
                        if (result is int) {
                          pageController.jumpToPage(result);
                        }
                      },
                      child: CachedImage(
                        model.image!,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),
            Gap(15),
          ] else
            NoImage(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (model.fio != null)
                Expanded(
                  child: Text(
                    model.fio!,
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
          if (model.experience != null) ...[
            Gap(3),
            Row(
              children: [
                SvgPicture.asset('assets/svg/briefcase.svg'),
                Gap(5),
                Text(
                  model.experience.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
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
                showAddManagerSheet(context, id: model.id);
              },
            ),
          ],
        ],
      ),
    );
  }
}
