import 'dart:io';

import 'package:chelnok_mob/data/models/vacancy_model.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';

import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class VacancyRepo {
  Future<ApiResponse<List<VacancyModel>>> fetchVacancyList(
      VacancyParamsModel params);
  Future<ApiResponse<VacancyDetailsModel>> fetchVacancyDetails(int id);
  Future<ApiResponse> createVacancy(DynamicFormModel model);
  Future<ApiResponse> editVacancy(DynamicFormModel model, int id);
}

base class VacancyAPIRepo implements VacancyRepo {
  const VacancyAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<VacancyModel>>> fetchVacancyList(
      VacancyParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/vacancies/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => VacancyModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/vacancies/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => VacancyModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/vacancies',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => VacancyModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<VacancyDetailsModel>> fetchVacancyDetails(int id) {
    return _client.get(
      'api/vacancies/$id',
      decoder: (data) {
        return VacancyDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createVacancy(DynamicFormModel model) async {
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
      'api/vacancies',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editVacancy(DynamicFormModel model, int id) async {
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
      'api/vacancies/$id',
      data: model.toMap(),
    );
  }
}
