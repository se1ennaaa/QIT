import 'package:chelnok_mob/data/models/dordoi_container_model.dart';
import 'package:chelnok_mob/ui/screens/dordoi_container/widgets/dordoi_container_item.dart';

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class DordoiContainersSection extends HookConsumerWidget {
  final List<DordoiContainerModel> dordoiContainerList;
  final bool paginationLoading;
  final Function(int id)? onFavoriteTap;
  final Function(int id)? onMoreDetailsTap;
  final bool canEdit;

  const DordoiContainersSection({
    super.key,
    required this.dordoiContainerList,
    this.paginationLoading = false,
    this.onMoreDetailsTap,
    this.canEdit = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      itemCount: dordoiContainerList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Gap(20),
      itemBuilder: (context, index) {
        final dordoiContainer = dordoiContainerList[index];

        return DordoiContainerItem(
          canEdit: canEdit,
          model: dordoiContainer,
          onMoreDetailsTap: () => onMoreDetailsTap?.call(dordoiContainer.id),
          onFavoriteTap: () => onFavoriteTap?.call(dordoiContainer.id),
        );
      },
    );
  }
}
