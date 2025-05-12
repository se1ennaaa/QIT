import 'package:chelnok_mob/data/models/vacancy_model.dart';
import 'package:chelnok_mob/helpers/calculate.dart';
import 'package:chelnok_mob/ui/screens/work/vacancy/widgets/vacancy_item.dart';
import 'package:chelnok_mob/ui/widgets/animated_grid_view/animated_grid_view.dart';

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class VacanciesSection extends HookConsumerWidget {
  final List<VacancyModel> vacancyList;
  final bool paginationLoading;
  final Function(int id)? onFavoriteTap;
  final Function(int id)? onMoreDetailsTap;
  final bool canEdit;

  const VacanciesSection({
    super.key,
    required this.vacancyList,
    this.paginationLoading = false,
    this.onMoreDetailsTap,
    this.canEdit = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedGridView(
      itemCount: vacancyList.length,
      shrinkWrap: true,
      mainAxisSpacing: 15,
      crossAxisSpacing: 12,
      padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: Calculate.calculateCards(context, 170),
      builder: (context, index) {
        final sewingWorkshop = vacancyList[index];

        return VacancyItem(
          model: sewingWorkshop,
          onMoreDetailsTap: () => onMoreDetailsTap?.call(sewingWorkshop.id),
          onFavoriteTap: () => onFavoriteTap?.call(sewingWorkshop.id),
          canEdit: canEdit,
        );
      },
    );
    // ListView.separated(
    //   itemCount: vacancyList.length,
    //   shrinkWrap: true,
    //   padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
    //   physics: const NeverScrollableScrollPhysics(),
    //   separatorBuilder: (context, index) => Gap(20),
    //   itemBuilder: (context, index) {
    //     final vacancy = vacancyList[index];

    //     return VacancyItem(
    //       model: vacancy,
    //       canEdit: canEdit,
    //       onMoreDetailsTap: () => onMoreDetailsTap?.call(vacancy.id),
    //       onFavoriteTap: () => onFavoriteTap?.call(vacancy.id),
    //     );
    //   },
    // );
  }
}
