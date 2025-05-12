import 'dart:io';

import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/models/sewing_workshop_model.dart';

import 'package:http_parser/http_parser.dart';

import 'package:dio/dio.dart';

import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class SewingWorkshopRepo {
  Future<ApiResponse<List<SewingWorkshopModel>>> fetchSewingWorkshopList(
      SewingWorkshopParamsModel params);
  Future<ApiResponse<SewingWorkshopDetailsModel>> fetchSewingWorkshopDetails(
      int id);

  Future<ApiResponse> createSewingWorkshop(DynamicFormModel model);
  Future<ApiResponse> editSewingWorkshop(DynamicFormModel model, int id);
}

base class SewingWorkshopAPIRepo implements SewingWorkshopRepo {
  const SewingWorkshopAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<SewingWorkshopModel>>> fetchSewingWorkshopList(
      SewingWorkshopParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/workshops/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => SewingWorkshopModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/workshops/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => SewingWorkshopModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/workshops',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => SewingWorkshopModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<SewingWorkshopDetailsModel>> fetchSewingWorkshopDetails(
      int id) {
    return _client.get(
      'api/workshops/$id',
      decoder: (data) {
        return SewingWorkshopDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createSewingWorkshop(DynamicFormModel model) async {
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
      'api/workshops',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editSewingWorkshop(DynamicFormModel model, int id) async {
    final files = model.images.whereType<File>().toList();
    final uploadedUrls = await uploadImagesToServer(files, _client);
    final existingUrls = model.images.whereType<String>().toList();
    final allUrls = [...existingUrls, ...uploadedUrls];
    model = model.copyWith(images: allUrls);
    return _client.patch(
      'api/workshops/$id',
      data: model.toMap(),
    );
  }
}

Future<List<String>> uploadImagesToServer(
  List<File> files,
  ApiClient apiClient,
) async {
  List<String> uploadedUrls = [];

  for (var file in files) {
    FormData formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(
        await file.readAsBytes(),
        filename: file.path.split('/').last,
        contentType:
            MediaType('image', file.path.split('.').last.toLowerCase()),
      ),
    });

    final response = await apiClient.post(
      'api/upload',
      data: formData,
      decoder: (data) => data,
    );

    if (!response.isSuccessful) {
      throw response;
    }

    if (response.isSuccessful) {
      String uploadedUrl = response.result['url'];
      uploadedUrls.add(uploadedUrl);
    }
  }

  return uploadedUrls;
}
