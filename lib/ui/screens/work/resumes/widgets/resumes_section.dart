import 'package:chelnok_mob/data/models/resume_model.dart';
import 'package:chelnok_mob/ui/screens/work/resumes/widgets/resume_item.dart';

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class ResumesSection extends HookConsumerWidget {
  final List<ResumeModel> resumeList;
  final bool paginationLoading;
  final Function(int id)? onFavoriteTap;
  final Function(int id)? onMoreDetailsTap;
  final bool canEdit;

  const ResumesSection({
    super.key,
    required this.resumeList,
    this.paginationLoading = false,
    this.onMoreDetailsTap,
    this.canEdit = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      itemCount: resumeList.length,
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(11, 10, 11, 21),
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Gap(20),
      itemBuilder: (context, index) {
        final resume = resumeList[index];

        return ResumeItem(
          model: resume,
          canEdit: canEdit,
          onMoreDetailsTap: () => onMoreDetailsTap?.call(resume.id),
          onFavoriteTap: () => onFavoriteTap?.call(resume.id),
        );
      },
    );
  }
}
