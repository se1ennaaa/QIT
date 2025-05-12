import 'package:chelnok_mob/data/models/order_model.dart';
import 'package:chelnok_mob/ui/screens/order/widgets/order_item.dart';

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrdersSection extends HookConsumerWidget {
  final List<OrderModel> orderList;
  final bool paginationLoading;
  final Function(int id)? onFavoriteTap;
  final Function(int id)? onMoreDetailsTap;
  final bool canEdit;

  const OrdersSection({
    super.key,
    required this.orderList,
    this.paginationLoading = false,
    this.onMoreDetailsTap,
    this.canEdit = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      itemCount: orderList.length,
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Gap(20),
      itemBuilder: (context, index) {
        final order = orderList[index];

        return OrderItem(
          model: order,
          canEdit: canEdit,
          onMoreDetailsTap: () => onMoreDetailsTap?.call(order.id),
          onFavoriteTap: () => onFavoriteTap?.call(order.id),
        );
      },
    );
  }
}
