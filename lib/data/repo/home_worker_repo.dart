import 'dart:io';

import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/models/home_worker_model.dart';
import 'package:chelnok_mob/data/repo/order_repo.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';

import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class HomeWorkerRepo {
  Future<ApiResponse<List<HomeWorkerModel>>> fetchHomeWorkerList(
      HomeWorkerParamsModel params);
  Future<ApiResponse<HomeWorkerDetailsModel>> fetchHomeWorkerDetails(int id);
  Future<ApiResponse> createHomeWorker(DynamicFormModel model);
  Future<ApiResponse> editHomeWorker(DynamicFormModel model, int id);
}

base class HomeWorkerAPIRepo implements HomeWorkerRepo {
  const HomeWorkerAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<HomeWorkerModel>>> fetchHomeWorkerList(
      HomeWorkerParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/nadom/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => HomeWorkerModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/nadom/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => HomeWorkerModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/nadom',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => HomeWorkerModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<HomeWorkerDetailsModel>> fetchHomeWorkerDetails(int id) {
    return _client.get(
      'api/nadom/$id',
      decoder: (data) {
        return HomeWorkerDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createHomeWorker(DynamicFormModel model) async {
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
      'api/nadom',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editHomeWorker(DynamicFormModel model, int id) async {
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
      'api/nadom/$id',
      data: model.toMap(),
    );
  }
}
