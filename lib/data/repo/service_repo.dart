import 'dart:io';

import 'package:chelnok_mob/data/models/service_model.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';

import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class ServiceRepo {
  Future<ApiResponse<List<ServiceModel>>> fetchServiceList(
      ServiceParamsModel params);
  Future<ApiResponse<ServiceDetailsModel>> fetchServiceDetails(int id);
  Future<ApiResponse> createService(DynamicFormModel model);

  Future<ApiResponse> editService(DynamicFormModel model, int id);
}

base class ServiceAPIRepo implements ServiceRepo {
  const ServiceAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<ServiceModel>>> fetchServiceList(
      ServiceParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/services/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => ServiceModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/services/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => ServiceModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/services',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => ServiceModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<ServiceDetailsModel>> fetchServiceDetails(int id) {
    return _client.get(
      'api/services/$id',
      decoder: (data) {
        return ServiceDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createService(DynamicFormModel model) async {
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
      'api/services',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editService(DynamicFormModel model, int id) async {
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
      'api/services/$id',
      data: model.toMap(),
    );
  }
}
