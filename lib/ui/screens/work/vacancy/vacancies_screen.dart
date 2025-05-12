// import 'package:chelnok_mob/ui/widgets/cached_image.dart';
// import 'package:chelnok_mob/data/models/vacancy_model.dart';
// import 'package:chelnok_mob/providers/category_providers.dart';

// import 'package:chelnok_mob/providers/vacancy_providers.dart';
// import 'package:chelnok_mob/ui/screens/work/vacancy/widgets/vacancies_section.dart';

// import 'package:chelnok_mob/ui/widgets/app_bars/app_bar_with_text_field.dart';
// import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

// import 'package:gap/gap.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class VacanciesScreen extends HookConsumerWidget {
//   const VacanciesScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final vacancyListState = ref.watch(vacancyListProvider());
//     final scrollController = useScrollController();
//     final categoryListState =
//         ref.watch(categoryListProvider(CategoryType.defaultCategory));

//     scrollController.addListener(
//       () {
//         if (scrollController.position.pixels >=
//                 scrollController.position.maxScrollExtent &&
//             scrollController.position.userScrollDirection ==
//                 ScrollDirection.reverse) {
//           ref.read(vacancyListProvider().notifier).loadMore();
//         }
//       },
//     );

//     return SafeAreaWrapper(
//       child: Scaffold(
//         body: RefreshIndicator.adaptive(
//           onRefresh: () async {
//             ref.read(vacancyListProvider().notifier).refresh();
//           },
//           child: ListView(
//             controller: scrollController,
//             physics: AlwaysScrollableScrollPhysics(),
//             children: [
//               AppBarWithTextField(),
//               Gap(19),
//               categoryListState.when(
//                 data: (data) => SizedBox(
//                   height: 60,
//                   child: ListView.separated(
//                     padding: EdgeInsets.symmetric(horizontal: 15.5),
//                     scrollDirection: Axis.horizontal,
//                     itemCount: data.length,
//                     separatorBuilder: (context, index) => Gap(4),
//                     itemBuilder: (context, index) {
//                       final item = data[index];
//                       return GestureDetector(
//                         onTap: () {
//                           if (item.id != vacancyListState.params.categoryId) {
//                             ref.read(vacancyListProvider().notifier).filter(
//                                   VacancyParamsModel(
//                                     categoryId: item.id,
//                                   ),
//                                 );
//                           }
//                         },
//                         child: Container(
//                           width: 90,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: item.id == vacancyListState.params.categoryId
//                                 ? Color(0xFF9605AC)
//                                 : Color(0xFFF6EFF7),
//                             border:
//                                 item.id != vacancyListState.params.categoryId
//                                     ? Border.all(
//                                         width: 1,
//                                         color: Color(0xFFD091D9),
//                                       )
//                                     : null,
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               if (item.image != null)
//                                 CachedNetworkImage(
//                                   imageUrl: item.image!,
//                                   height: 25,
//                                 ),
//                               if (item.title != null)
//                                 Text(
//                                   textAlign: TextAlign.center,
//                                   item.title!,
//                                   style: TextStyle(
//                                     fontSize: 10,
//                                     color: item.id ==
//                                             vacancyListState.params.categoryId
//                                         ? Colors.white
//                                         : Color(0xFF9605AC),
//                                   ),
//                                 )
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 error: (e, stackTrace) => const SizedBox(),
//                 loading: () => const SizedBox(),
//               ),
//               Gap(25),
//               vacancyListState.vacancyList.when(
//                 data: (data) => VacanciesSection(
//                   vacancyList: data,
//                   paginationLoading: vacancyListState.vacancyList.isLoading,
//                 ),
//                 error: (e, stackTrace) => const SizedBox(),
//                 loading: () => const SizedBox(
//                     // child: CircularProgressIndicator.adaptive(),
//                     ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
