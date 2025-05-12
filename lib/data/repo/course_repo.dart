import 'dart:io';

import 'package:chelnok_mob/data/models/course_model.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';
import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class CourseRepo {
  Future<ApiResponse<List<CourseModel>>> fetchCourseList(
      CourseParamsModel params);
  Future<ApiResponse<CourseDetailsModel>> fetchCourseDetails(int id);
  Future<ApiResponse> createCourse(DynamicFormModel model);
  Future<ApiResponse> editCourse(DynamicFormModel model, int id);
}

base class CourseAPIRepo implements CourseRepo {
  const CourseAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<CourseModel>>> fetchCourseList(
      CourseParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/teaching/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => CourseModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/teaching/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => CourseModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/teaching',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => CourseModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<CourseDetailsModel>> fetchCourseDetails(int id) {
    return _client.get(
      'api/teaching/$id',
      decoder: (data) {
        return CourseDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createCourse(DynamicFormModel model) async {
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
      'api/teaching',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editCourse(DynamicFormModel model, int id) async {
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
      'api/teaching/$id',
      data: model.toMap(),
    );
  }
}
