import 'dart:io';

import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/models/fulfilment_model.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';

import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class FulfilmentRepo {
  Future<ApiResponse<List<FulfilmentModel>>> fetchFulfilmentList(
      FulfilmentParamsModel params);
  Future<ApiResponse<FulfilmentDetailsModel>> fetchFulfilmentDetails(int id);
  Future<ApiResponse> createFulfilment(DynamicFormModel model);
  Future<ApiResponse> editFulfilment(DynamicFormModel model, int id);
}

base class FulfilmentAPIRepo implements FulfilmentRepo {
  const FulfilmentAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<FulfilmentModel>>> fetchFulfilmentList(
      FulfilmentParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/fulfillment/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => FulfilmentModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/fulfillment/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => FulfilmentModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/fulfillment',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => FulfilmentModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<FulfilmentDetailsModel>> fetchFulfilmentDetails(int id) {
    return _client.get(
      'api/fulfillment/$id',
      decoder: (data) {
        return FulfilmentDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createFulfilment(DynamicFormModel model) async {
    try {
      final images = await uploadImagesToServer(
          model.images.whereType<File>().toList(), _client);
      model = model.copyWith(images: images);
    } catch (e) {
      final response = e as ApiResponse;
      return Future.value(
        ApiResponse(
          statusCode: response.statusCode,
          errorData: 'Изображения слишком большие',
        ),
      );
    }
    return _client.post(
      'api/fulfillment',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editFulfilment(DynamicFormModel model, int id) async {
    try {
      final files = model.images.whereType<File>().toList();
      final uploadedUrls = await uploadImagesToServer(files, _client);
      final existingUrls = model.images.whereType<String>().toList();
      final allUrls = [...existingUrls, ...uploadedUrls];
      model = model.copyWith(images: allUrls);
    } catch (e) {
      final response = e as ApiResponse;
      return Future.value(
        ApiResponse(
          statusCode: response.statusCode,
          errorData: 'Изображения слишком большие',
        ),
      );
    }
    return _client.patch(
      'api/fulfillment/$id',
      data: model.toMap(),
    );
  }
}
