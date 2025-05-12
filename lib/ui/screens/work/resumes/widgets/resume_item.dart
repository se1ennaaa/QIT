import 'package:chelnok_mob/data/models/resume_model.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_vacancy_or_resume_sheet.dart';

import 'package:chelnok_mob/ui/widgets/edit_ad_button_screen.dart';
import 'package:chelnok_mob/ui/widgets/moderation_status_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ResumeItem extends HookWidget {
  const ResumeItem({
    super.key,
    required this.model,
    this.onFavoriteTap,
    this.onMoreDetailsTap,
    this.canEdit = false,
  });

  final ResumeModel model;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onMoreDetailsTap;
  final bool canEdit;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onMoreDetailsTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (model.jobTitle != null) ...[
                  Text(
                    model.jobTitle!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Gap(10),
                ],
                if (model.experience != null) ...[
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/location.svg'),
                      Gap(5),
                      Text(
                        model.experience!,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Gap(3),
                ],
                if (model.salary != null) ...[
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/briefcase.svg'),
                      Gap(5),
                      Text(
                        '${model.salary} сом',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
          SizedBox(
            width: 126,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/svg/${model.isLike ? 'favorite_painted.svg' : 'favorite.svg'}',
                  ),
                  onPressed: () {
                    onFavoriteTap?.call();
                  },
                ),
                SizedBox(
                  height: 27,
                  width: 126,
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
                      showAddResumeSheet(context, id: model.id);
                    },
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
