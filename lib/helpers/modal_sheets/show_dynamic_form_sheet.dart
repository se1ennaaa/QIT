import 'package:chelnok_mob/hooks/use_form_key.dart';
import 'package:chelnok_mob/providers/ad_management_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

Future<T?> showDynamicFormSheet<T>({
  required BuildContext context,
  required String title,
  required Widget fields,
  required FormType formType,
  required VoidCallback onSave,
  final int? id,
}) {
  return WoltModalSheet.show(
    context: context,
    pageContentDecorator: (child) {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(40),
        ),
        child: child,
      );
    },
    pageListBuilder: (context) {
      return [
        SliverWoltModalSheetPage(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          leadingNavBarWidget: Padding(
            padding: EdgeInsets.fromLTRB(20, 7.5, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 33,
                    width: 30,
                    margin: EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset(
                        'assets/svg/close.svg',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          mainContentSliversBuilder: (context) {
            return [
              SliverToBoxAdapter(
                child: ShowDynamicFormSheet(
                  fields,
                  type: formType,
                  id: id,
                ),
              ),
            ];
          },
        ),
      ];
    },
  );
}

class ShowDynamicFormSheet extends HookConsumerWidget {
  const ShowDynamicFormSheet(
    this.fields, {
    super.key,
    this.type = FormType.sewingWorkshop,
    this.id,
  });

  final Widget fields;
  final FormType type;
  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adManagementState = ref.watch(adManagementProvider);
    final formKey = useFormKey();

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(10),
                fields,
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate() &&
                        !adManagementState.status.isLoading) {
                      if (id != null) {
                        ref
                            .read(adManagementProvider.notifier)
                            .editAdData(type, id!);
                      } else {
                        ref
                            .read(adManagementProvider.notifier)
                            .uploadAdData(type);
                      }
                    }
                  },
                  child: Container(
                    height: 52,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.only(bottom: 2.5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF9605AC),
                    ),
                    alignment: Alignment.center,
                    child: adManagementState.status.isLoading
                        ? SizedBox(
                            height: 25,
                            width: 25,
                            child: CircularProgressIndicator.adaptive(
                              backgroundColor: Colors.white,
                            ),
                          )
                        : Text(
                            'Сохранить',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
