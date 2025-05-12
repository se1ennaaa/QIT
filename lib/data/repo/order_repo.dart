// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:chelnok_mob/data/models/order_model.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';

import '../client/client.dart';
import '../models/api_reponse.dart';

abstract final class OrderRepo {
  Future<ApiResponse<List<OrderModel>>> fetchOrderList(OrderParamsModel params);
  Future<ApiResponse<OrderDetailsModel>> fetchOrderDetails(int id);
  Future<ApiResponse> createOrder(DynamicFormModel model);
  Future<ApiResponse> editOrder(DynamicFormModel model, int id);
}

base class OrderAPIRepo implements OrderRepo {
  const OrderAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<List<OrderModel>>> fetchOrderList(
      OrderParamsModel params) {
    if (params.isFavorites) {
      return _client.get(
        'api/order/favorites',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => OrderModel.fromJson(e),
            ),
          );
        },
      );
    } else if (params.isMy) {
      return _client.get(
        'api/order/my',
        params: params.toMap(),
        decoder: (data) {
          return List.from(
            data['list'].map(
              (e) => OrderModel.fromJson(e),
            ),
          );
        },
      );
    }
    return _client.get(
      'api/order',
      params: params.toMap(),
      decoder: (data) {
        return List.from(
          data['list'].map(
            (e) => OrderModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<OrderDetailsModel>> fetchOrderDetails(int id) {
    return _client.get(
      'api/order/$id',
      decoder: (data) {
        printPrettyJson(data);
        return OrderDetailsModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> createOrder(DynamicFormModel model) async {
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
      'api/order',
      data: model.toMap(),
    );
  }

  @override
  Future<ApiResponse> editOrder(DynamicFormModel model, int id) async {
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
      'api/order/$id',
      data: model.toMap(),
    );
  }
}

void printPrettyJson(dynamic json) {
  const encoder = JsonEncoder.withIndent('  ');
  final prettyJson = encoder.convert(json);
  print(prettyJson);
}
