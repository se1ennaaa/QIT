import 'dart:io';

import 'package:chelnok_mob/data/models/api_reponse.dart';
import 'package:chelnok_mob/data/models/category_model.dart';
import 'package:chelnok_mob/data/repo/order_repo.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';

import '../client/client.dart';
import '../models/dordoi_container_model.dart';

abstract class DordoiMarketRepo {
  Future<ApiResponse<List<DordoiContainerModel>>> fetchDordoiContainerList(
      DordoiContainerParamsModel params);
  Future<ApiResponse<DordoiContainerModel>> fetchDordoiContainerDetails(int id);

  Future<ApiResponse> createDordoiContainer(DordoiContainerModel model);
  Future<ApiResponse> editDordoiContainer(DordoiContainerModel model, int id);
}

class DordoiMarketAPIRepo implements DordoiMarketRepo {
  const DordoiMarketAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<DordoiContainerModel>>> fetchDordoiContainerList(
      DordoiContainerParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/dordoi/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => DordoiContainerModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/dordoi/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => DordoiContainerModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/dordoi',
      params: params.toMap(),
      decoder: (data) {
        return List<DordoiContainerModel>.from(
          data['list'].map(
            (e) => DordoiContainerModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<DordoiContainerModel>> fetchDordoiContainerDetails(
      int id) {
    return _client.get(
      'api/dordoi/$id',
      decoder: (data) {
        return DordoiContainerModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createDordoiContainer(DordoiContainerModel model) async {
    var dordoiId = -1;
    final dordoiResponse = await _client.post(
      'api/dordoi',
      data: model.toMap(),
      decoder: (data) => dordoiId = data['id'],
    );
    if (!dordoiResponse.isSuccessful) {
      return dordoiResponse.result;
    }
    var updatedModels = [];
    try {
      final files = model.models
          .expand((item) => item.sendImages.whereType<File>())
          .toList();
      final uploadedUrls = await uploadImagesToServer(files, _client);
      updatedModels = model.models.map((item) {
        final newImages =
            item.sendImages.whereType<String>().toList() + uploadedUrls;

        return item.copyWith(
          sendImages: newImages,
          image: newImages.first,
          dordoiId: dordoiId,
        );
      }).toList();
    } catch (e) {
      final response = e as ApiResponse;
      return Future.value(
        ApiResponse(
          statusCode: response.statusCode,
          errorData: 'Изображения слишком большие',
        ),
      );
    }

    for (final modelItem in updatedModels) {
      final modelResponse = await _client.post(
        '/api/dordoi-model',
        data: modelItem.toMap(),
      );

      if (!modelResponse.isSuccessful) {
        print('Ошибка при создании ModelItem: ${modelResponse.message}');
      }
    }

    return ApiResponse(
      statusCode: 200,
      result: dordoiId,
    );
  }

  @override
  Future<ApiResponse> editDordoiContainer(
      DordoiContainerModel model, int id) async {
    var updatedModel = model;
    try {
      final files = model.models
          .expand((item) => item.sendImages.whereType<File>())
          .toList();
      final uploadedUrls = await uploadImagesToServer(files, _client);
      final updatedModels = model.models.map((item) {
        final existingUrls = item.sendImages.whereType<String>().toList();
        final allUrls = existingUrls + uploadedUrls;
        return item.copyWith(sendImages: allUrls);
      }).toList();
      updatedModel = model.copyWith(models: updatedModels);
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
      'api/dordoi/$id',
      data: updatedModel.toMap(),
    );
  }
}
