import 'dart:io';

import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/models/feedback_model.dart';
import 'package:chelnok_mob/data/repo/order_repo.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';
import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class FeedbackRepo {
  Future<ApiResponse<List<FeedbackModel>>> fetchFeedbackList(
      FeedbackParamsModel params);

  Future<ApiResponse> createFeedback(FeedbackModel model);
}

base class FeedbackAPIRepo implements FeedbackRepo {
  const FeedbackAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<FeedbackModel>>> fetchFeedbackList(
      FeedbackParamsModel params) {
    return _client.get(
      'api/feedback',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => FeedbackModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse> createFeedback(FeedbackModel model) async {
    return _client.post(
      'api/feedback',
      data: model.toJson(),
    );
  }
}
