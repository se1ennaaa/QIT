import 'dart:io';

import 'package:chelnok_mob/data/models/api_reponse.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nav_bar_controller_provider.g.dart';

@riverpod
Future<ApiResponse> serviceEvaluation(ServiceEvaluationRef ref) async {
  return ApiResponse();
}

// final navBarVisible = StateProvider<bool>(
//   (ref) => true,
// );

final isNavBarVisible = StateProvider<bool>(
  (ref) => true,
);
