import 'package:chelnok_mob/data/models/sewing_equipment_model.dart';
import 'package:chelnok_mob/helpers/calculate.dart';
import 'package:chelnok_mob/providers/category_providers.dart';
import 'package:chelnok_mob/ui/screens/sewing_equipment/widgets/sewing_equipment_repair_item.dart';
import 'package:chelnok_mob/ui/screens/sewing_equipment/widgets/sewing_equipment_sale_item.dart';
import 'package:chelnok_mob/ui/widgets/animated_grid_view/animated_grid_view.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SewingEquipmentSaleSection extends HookConsumerWidget {
  final List<SewingEquipmentModel> sewingEquipmentSaleList;
  final bool paginationLoading;
  final int categoryId;
  final bool isShowTitleText;
  final Function(int id)? onFavoriteTap;
  final Function(int id)? onMoreDetailsTap;
  final bool canEdit;

  const SewingEquipmentSaleSection({
    super.key,
    required this.sewingEquipmentSaleList,
    this.paginationLoading = false,
    this.onMoreDetailsTap,
    this.canEdit = false,
    required this.categoryId,
    this.onFavoriteTap,
    this.isShowTitleText = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryListState =
        ref.watch(categoryListProvider(CategoryType.apparel));

    final isRent = useMemoized(() {
      return categoryListState.maybeWhen(
        orElse: () => false,
        data: (data) {
          final category =
              data.firstWhereOrNull((element) => element.id == categoryId);
          return category?.title == 'Продажа';
        },
      );
    }, [categoryListState]);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isShowTitleText)
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text(
                isRent
                    ? 'Продажа швейного оборудования'
                    : 'Ремонт швейного оборудования',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          Gap(18),
          if (isRent)
            AnimatedGridView(
              itemCount: sewingEquipmentSaleList.length,
              shrinkWrap: true,
              mainAxisSpacing: 15,
              crossAxisSpacing: 12,
              padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: Calculate.calculateCards(context, 170),
              builder: (context, index) {
                final sewingEquipmentSale = sewingEquipmentSaleList[index];
                return SewingEquipmentSaleItem(
                  model: sewingEquipmentSale,
                  canEdit: canEdit,
                  onFavoriteTap: () =>
                      onFavoriteTap?.call(sewingEquipmentSale.id),
                  onMoreDetailsTap: () =>
                      onMoreDetailsTap?.call(sewingEquipmentSale.id),
                );
              },
            )
          else
            ListView.separated(
              itemCount: sewingEquipmentSaleList.length,
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => Gap(20),
              itemBuilder: (context, index) {
                final sewingEquipmentRepair = sewingEquipmentSaleList[index];

                return SewingEquipmentRepairItem(
                  model: sewingEquipmentRepair,
                  onFavoriteTap: () =>
                      onFavoriteTap?.call(sewingEquipmentRepair.id),
                  onMoreDetailsTap: () =>
                      onMoreDetailsTap?.call(sewingEquipmentRepair.id),
                );
              },
            ),
        ],
      ),
    );
  }
}
