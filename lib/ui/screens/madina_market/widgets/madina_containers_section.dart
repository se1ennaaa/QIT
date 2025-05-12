import 'package:chelnok_mob/data/models/madina_container_model.dart';
import 'package:chelnok_mob/ui/screens/madina_market/widgets/madina_container_item.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class MadinaContainersSection extends HookConsumerWidget {
  final List<MadinaContainerModel> madinaContainerList;
  final bool paginationLoading;
  final Function(int id)? onFavoriteTap;
  final Function(int id)? onMoreDetailsTap;
  final bool canEdit;

  const MadinaContainersSection({
    super.key,
    required this.madinaContainerList,
    this.paginationLoading = false,
    this.onMoreDetailsTap,
    this.canEdit = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      itemCount: madinaContainerList.length,
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Gap(20),
      itemBuilder: (context, index) {
        final madinaContainer = madinaContainerList[index];

        return MadinaContainerItem(
          canEdit: canEdit,
          model: madinaContainer,
          onMoreDetailsTap: () => onMoreDetailsTap?.call(madinaContainer.id),
          onFavoriteTap: () => onFavoriteTap?.call(madinaContainer.id),
        );
      },
    );
  }
}
