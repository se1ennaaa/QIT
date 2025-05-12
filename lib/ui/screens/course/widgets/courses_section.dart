import 'package:chelnok_mob/data/models/course_model.dart';
import 'package:chelnok_mob/helpers/calculate.dart';
import 'package:chelnok_mob/ui/screens/course/widgets/course_item.dart';
import 'package:chelnok_mob/ui/widgets/animated_grid_view/animated_grid_view.dart';

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class CoursesSection extends HookConsumerWidget {
  final List<CourseModel> courseList;
  final bool paginationLoading;
  final Function(int id)? onFavoriteTap;
  final Function(int id)? onMoreDetailsTap;
  final bool canEdit;

  const CoursesSection({
    super.key,
    required this.courseList,
    this.paginationLoading = false,
    this.onMoreDetailsTap,
    this.canEdit = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedGridView(
      itemCount: courseList.length,
      shrinkWrap: true,
      mainAxisSpacing: 15,
      crossAxisSpacing: 12,
      padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: Calculate.calculateCards(context, 170),
      builder: (context, index) {
        final course = courseList[index];
        return CourseItem(
          model: course,
          canEdit: canEdit,
          onMoreDetailsTap: () => onMoreDetailsTap?.call(course.id),
          onFavoriteTap: () => onFavoriteTap?.call(course.id),
        );
      },
    );
  }
}
