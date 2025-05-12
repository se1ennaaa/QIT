import 'package:chelnok_mob/data/models/real_estate_model.dart';
import 'package:chelnok_mob/helpers/calculate.dart';
import 'package:chelnok_mob/ui/screens/real_estate/widgets/real_estate_item.dart';
import 'package:chelnok_mob/ui/widgets/animated_grid_view/animated_grid_view.dart';

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class RealEstateSection extends HookConsumerWidget {
  final List<RealEstateModel> realEstateList;
  final bool paginationLoading;
  final Function(int id)? onFavoriteTap;
  final Function(int id)? onMoreDetailsTap;

  final bool canEdit;

  const RealEstateSection({
    super.key,
    required this.realEstateList,
    this.paginationLoading = false,
    this.onMoreDetailsTap,
    this.canEdit = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 13),
          //   child: Text(
          //     'Аренда недвижимости',
          //     style: TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.w700,
          //     ),
          //   ),
          // ),
          // Gap(18),
          AnimatedGridView(
            itemCount: realEstateList.length,
            shrinkWrap: true,
            mainAxisSpacing: 15,
            crossAxisSpacing: 12,
            padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: Calculate.calculateCards(context, 170),
            builder: (context, index) {
              final realEstate = realEstateList[index];

              return RealEstateItem(
                model: realEstate,
                canEdit: canEdit,
                onMoreDetailsTap: () => onMoreDetailsTap?.call(realEstate.id),
                onFavoriteTap: () => onFavoriteTap?.call(realEstate.id),
              );
            },
          ),

          // if (paginationLoading)
          //   const Center(
          //     child: Padding(
          //       padding: EdgeInsets.all(12),
          //       child: CircularProgressIndicator.adaptive(),
          //     ),
          //   )
          // else
          //   const Gap(20),
        ],
      ),
    );
  }
}
