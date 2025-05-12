import 'package:chelnok_mob/data/models/sewing_equipment_model.dart';
import 'package:chelnok_mob/helpers/modal_sheets/add_sewing_equipment_sheet.dart';
import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/ui/screens/sewing_equipment/sewing_equipment_details_screen.dart';

import 'package:chelnok_mob/ui/widgets/edit_ad_button_screen.dart';
import 'package:chelnok_mob/ui/widgets/moderation_status_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SewingEquipmentRepairItem extends StatelessWidget {
  const SewingEquipmentRepairItem({
    super.key,
    required this.model,
    this.onFavoriteTap,
    this.onMoreDetailsTap,
    this.canEdit = false,
  });

  final SewingEquipmentModel model;
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
                if (model.name != null) ...[
                  Text(
                    model.name!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Gap(10),
                ],
                if (model.category?.title != null) ...[
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
                          text: model.category!.title!,
                          style: TextStyle(
                            fontFamily: GoogleFonts.ubuntu().fontFamily,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF232323),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(5),
                ],
                if (model.price != null) ...[
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/price_tag.svg'),
                      Gap(5),
                      Text(
                        'от ${model.price} сом',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
                Gap(3),
              ],
            ),
          ),
          Gap(12),
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
                      showSewingEquipmentSheet(context, id: model.id);
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
