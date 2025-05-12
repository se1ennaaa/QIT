import 'dart:io';

import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/models/manager_model.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';

import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class ManagerRepo {
  Future<ApiResponse<List<ManagerModel>>> fetchManagerList(
      ManagerParamsModel params);
  Future<ApiResponse<ManagerDetailsModel>> fetchManagerDetails(int id);

  Future<ApiResponse> createManager(DynamicFormModel model);

  Future<ApiResponse> editManager(DynamicFormModel model, int id);
}

base class ManagerAPIRepo implements ManagerRepo {
  const ManagerAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<ManagerModel>>> fetchManagerList(
      ManagerParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/manager/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => ManagerModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/manager/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => ManagerModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/manager',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => ManagerModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<ManagerDetailsModel>> fetchManagerDetails(int id) {
    return _client.get(
      'api/manager/$id',
      decoder: (data) {
        return ManagerDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createManager(DynamicFormModel model) async {
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
      'api/manager',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editManager(DynamicFormModel model, int id) async {
    final files = model.images.whereType<File>().toList();
    final uploadedUrls = await uploadImagesToServer(files, _client);
    final existingUrls = model.images.whereType<String>().toList();
    final allUrls = [...existingUrls, ...uploadedUrls];
    model = model.copyWith(images: allUrls);
    return _client.patch(
      'api/manager/$id',
      data: model.toMap(),
    );
  }
}
