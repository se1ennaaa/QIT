import 'dart:ffi';

import 'package:chelnok_mob/helpers/calculate.dart';
import 'package:chelnok_mob/ui/screens/sewing_workshops/widgets/sewing_workshop_item.dart';
import 'package:chelnok_mob/ui/widgets/animated_grid_view/animated_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../data/models/sewing_workshop_model.dart';

class SewingWorkshopsSection extends StatelessWidget {
  final List<SewingWorkshopModel> sewingWorkshopList;
  final bool paginationLoading;
  final Function(int id)? onFavoriteTap;
  final Function(int id)? onMoreDetailsTap;
  final bool canEdit;

  const SewingWorkshopsSection({
    super.key,
    required this.sewingWorkshopList,
    this.paginationLoading = false,
    this.onMoreDetailsTap,
    this.canEdit = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedGridView(
      itemCount: sewingWorkshopList.length,
      shrinkWrap: true,
      mainAxisSpacing: 15,
      crossAxisSpacing: 12,
      padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: Calculate.calculateCards(context, 170),
      builder: (context, index) {
        final sewingWorkshop = sewingWorkshopList[index];

        return SewingWorkshopItem(
          model: sewingWorkshop,
          onMoreDetailsTap: () => onMoreDetailsTap?.call(sewingWorkshop.id),
          onFavoriteTap: () => onFavoriteTap?.call(sewingWorkshop.id),
          canEdit: canEdit,
        );
      },
    );
  }
}
