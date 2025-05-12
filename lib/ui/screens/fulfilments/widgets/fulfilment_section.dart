import 'package:chelnok_mob/data/models/fulfilment_model.dart';
import 'package:chelnok_mob/helpers/calculate.dart';
import 'package:chelnok_mob/ui/screens/fulfilments/widgets/fulfilment_item.dart';
import 'package:chelnok_mob/ui/widgets/animated_grid_view/animated_grid_view.dart';

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class FulfilmentsSection extends HookConsumerWidget {
  final List<FulfilmentModel> fulfilmentList;
  final bool paginationLoading;
  final Function(int id)? onFavoriteTap;
  final Function(int id)? onMoreDetailsTap;
  final bool canEdit;

  const FulfilmentsSection({
    super.key,
    required this.fulfilmentList,
    this.paginationLoading = false,
    this.onMoreDetailsTap,
    this.canEdit = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedGridView(
      itemCount: fulfilmentList.length,
      shrinkWrap: true,
      mainAxisSpacing: 15,
      crossAxisSpacing: 12,
      padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: Calculate.calculateCards(context, 170),
      builder: (context, index) {
        final fulfilment = fulfilmentList[index];

        return FulfilmentItem(
          model: fulfilment,
          canEdit: canEdit,
          onMoreDetailsTap: () => onMoreDetailsTap?.call(fulfilment.id),
          onFavoriteTap: () => onFavoriteTap?.call(fulfilment.id),
        );
      },
    );
  }
}
