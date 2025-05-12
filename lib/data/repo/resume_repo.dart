import 'dart:io';

import 'package:chelnok_mob/data/models/resume_model.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';

import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class ResumeRepo {
  Future<ApiResponse<List<ResumeModel>>> fetchResumeList(
      ResumeParamsModel params);
  Future<ApiResponse<ResumeDetailsModel>> fetchResumeDetails(int id);
  Future<ApiResponse> createResume(DynamicFormModel model);
  Future<ApiResponse> editResume(DynamicFormModel model, int id);
}

base class ResumeAPIRepo implements ResumeRepo {
  const ResumeAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<ResumeModel>>> fetchResumeList(
      ResumeParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/resume/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => ResumeModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/resume/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => ResumeModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/resume',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => ResumeModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<ResumeDetailsModel>> fetchResumeDetails(int id) {
    return _client.get(
      'api/resume/$id',
      decoder: (data) {
        return ResumeDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createResume(DynamicFormModel model) async {
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
      'api/resume',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editResume(DynamicFormModel model, int id) async {
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
      'api/resume/$id',
      data: model.toMap(),
    );
  }
}
