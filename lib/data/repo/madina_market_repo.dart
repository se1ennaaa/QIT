import 'dart:io';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/models/madina_container_model.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';
import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class MadinaMarketRepo {
  Future<ApiResponse<List<MadinaContainerModel>>> fetchMadinaContainerList(
      MadinaContainerParamsModel params);
  Future<ApiResponse<MadinaContainerDetailsModel>> fetchMadinaContainerDetails(
      int id);

  Future<ApiResponse> createMadinaContainer(DynamicFormModel model);
  Future<ApiResponse> editMadinaContainer(DynamicFormModel model, int id);
}

base class MadinaMarketAPIRepo implements MadinaMarketRepo {
  const MadinaMarketAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<MadinaContainerModel>>> fetchMadinaContainerList(
      MadinaContainerParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/markets/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => MadinaContainerModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/markets/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => MadinaContainerModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/markets',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => MadinaContainerModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<MadinaContainerDetailsModel>> fetchMadinaContainerDetails(
      int id) {
    return _client.get(
      'api/markets/$id',
      decoder: (data) {
        return MadinaContainerDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createMadinaContainer(DynamicFormModel model) async {
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
      'api/markets',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editMadinaContainer(
      DynamicFormModel model, int id) async {
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
      'api/markets/$id',
      data: model.toMap(),
    );
  }
}
