import 'dart:io';
import 'package:chelnok_mob/data/models/sewing_equipment_model.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/repo/order_repo.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';

import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class SewingEquipmentRepo {
  Future<ApiResponse<List<SewingEquipmentModel>>> fetchSewingEquipmentList(
      SewingEquipmentParamsModel params);
  Future<ApiResponse<SewingEquipmentDetailsModel>> fetchSewingEquipmentDetails(
      int id);

  Future<ApiResponse> createSewingEquipment(DynamicFormModel model);
  Future<ApiResponse> editSewingEquipment(DynamicFormModel model, int id);
}

base class SewingEquipmentAPIRepo implements SewingEquipmentRepo {
  const SewingEquipmentAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<SewingEquipmentModel>>> fetchSewingEquipmentList(
      SewingEquipmentParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/apparel/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => SewingEquipmentModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/apparel/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => SewingEquipmentModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/apparel',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => SewingEquipmentModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<SewingEquipmentDetailsModel>> fetchSewingEquipmentDetails(
      int id) {
    return _client.get(
      'api/apparel/$id',
      decoder: (data) {
        return SewingEquipmentDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createSewingEquipment(DynamicFormModel model) async {
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
      'api/apparel',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editSewingEquipment(
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
      'api/apparel/$id',
      data: model.toMap(),
    );
  }
}
