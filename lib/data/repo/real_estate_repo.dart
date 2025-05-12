import 'dart:io';

import 'package:chelnok_mob/data/models/real_estate_model.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';

import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class RealEstateRepo {
  Future<ApiResponse<List<RealEstateModel>>> fetchRealEstateList(
      RealEstateParamsModel params);
  Future<ApiResponse<RealEstateDetailsModel>> fetchRealEstateDetails(int id);

  Future<ApiResponse> createRealEstate(DynamicFormModel model);
  Future<ApiResponse> editRealEstate(DynamicFormModel model, int id);
}

base class RealEstateAPIRepo implements RealEstateRepo {
  const RealEstateAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<RealEstateModel>>> fetchRealEstateList(
      RealEstateParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/property/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => RealEstateModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/property/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => RealEstateModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/property',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => RealEstateModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<RealEstateDetailsModel>> fetchRealEstateDetails(int id) {
    return _client.get(
      'api/property/$id',
      decoder: (data) {
        return RealEstateDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createRealEstate(DynamicFormModel model) async {
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
      'api/property',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editRealEstate(DynamicFormModel model, int id) async {
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
      'api/property/$id',
      data: model.toMap(),
    );
  }
}
