import 'package:chelnok_mob/data/models/service_model.dart';
import 'package:chelnok_mob/helpers/calculate.dart';
import 'package:chelnok_mob/ui/screens/service/widgets/service_item.dart';
import 'package:chelnok_mob/ui/widgets/animated_grid_view/animated_grid_view.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class ServicesSection extends HookConsumerWidget {
  final List<ServiceModel> serviceList;
  final bool paginationLoading;
  final Function(int id)? onFavoriteTap;
  final Function(int id)? onMoreDetailsTap;
  final bool canEdit;

  const ServicesSection({
    super.key,
    required this.serviceList,
    this.paginationLoading = false,
    this.onMoreDetailsTap,
    this.canEdit = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedGridView(
      itemCount: serviceList.length,
      shrinkWrap: true,
      mainAxisSpacing: 15,
      crossAxisSpacing: 12,
      padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: Calculate.calculateCards(context, 170),
      builder: (context, index) {
        final sewingWorkshop = serviceList[index];
        return ServiceItem(
          canEdit: canEdit,
          model: sewingWorkshop,
          onMoreDetailsTap: () => onMoreDetailsTap?.call(sewingWorkshop.id),
          onFavoriteTap: () => onFavoriteTap?.call(sewingWorkshop.id),
        );
      },
    );
  }
}
