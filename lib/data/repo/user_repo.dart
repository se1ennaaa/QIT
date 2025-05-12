import 'package:chelnok_mob/data/models/category_model.dart';
import 'package:chelnok_mob/data/models/notification_model.dart';
import 'package:chelnok_mob/data/repo/order_repo.dart';
import 'package:chelnok_mob/data/repo/sewing_workshop_repo.dart';
import 'package:chelnok_mob/data/storage/local_storage.dart';
import 'package:chelnok_mob/providers/category_providers.dart';
import 'package:chelnok_mob/providers/toggle_favorite_provider.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:dio/dio.dart';
// import 'package:flutter_web_auth/flutter_web_auth.dart';
import '../client/client.dart';
import '../models/api_reponse.dart';
import '../models/fcm_create_model.dart';
import '../models/registration_model.dart';
import '../models/token/token.dart';
import '../models/user_model.dart';

abstract final class UserRepo {
  Future<ApiResponse<Token>> login(String login, String password);
  Future<ApiResponse<Token>> register(RegistrationModel model);
  Future<ApiResponse> createFcm(FcmCreateModel fcmCreateModel);
  Future<ApiResponse> deleteFcm(String deviceId);

  Future<ApiResponse<bool>> sendCode(String? email);
  Future<ApiResponse> codeVerify(String? code);

  Future<ApiResponse<UserModel>> profile();

  Future<ApiResponse> deleteAccount();
  Future<ApiResponse<List<CategoryModel>>> fetchCategories(CategoryType type);
  Future<ApiResponse<String?>> updateUserProfile({
    required UserModel model,
  });

  Future<ApiResponse> toggleFavorite(int id, FavoriteType type);
  Future<ApiResponse<List<NotificationModel>>> fetchNotificationList(
      NotificationParamsModel? params);
  Future<ApiResponse<NotificationDetailsModel>> fetchNotificationDetails(
      int id);

  Future<ApiResponse> yandexSignIn(
      String clientId, String clientSecret, String redirectUri);
  Future<ApiResponse<Token>> sendYandexUserCredentials(
      Map<String, dynamic> data, String? role);
  Future<ApiResponse<Token>> sendGoogleUserCredentials(
      String accessToken, String? role);
}

base class UserAPIRepo implements UserRepo {
  const UserAPIRepo({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<ApiResponse<Token>> login(String login, String password) async {
    await Future.delayed(Duration(seconds: 2));
    return _client.post(
      'api/auth/sign-in',
      data: {
        'email': login,
        'password': password,
      },
      decoder: (data) {
        return Token(access: data['access_token'], refresh: '');
      },
    );
  }

  @override
  Future<ApiResponse<Token>> register(RegistrationModel model) async {
    return _client.post(
      'api/auth/sign-up',
      data: model.toMap(),
      decoder: (data) {
        return Token(
          access: data['access_token'],
          refresh: 'refresh_token',
        );
      },
    );
  }

  @override
  Future<ApiResponse> createFcm(FcmCreateModel fcmCreateModel) {
    return _client.post(
      'api/push-notification',
      data: fcmCreateModel.toJson(),
    );
  }

  @override
  Future<ApiResponse> deleteFcm(String deviceId) async {
    return _client.delete(
      'auth/delete/fcm/$deviceId',
    );
  }

  @override
  Future<ApiResponse<bool>> sendCode(String? email) async {
    return _client.post(
      'api/auth/email',
      data: {
        if (email != null) 'email': email,
      },
      decoder: (data) {
        return data['exist'];
      },
    );
  }

  @override
  Future<ApiResponse<bool>> codeVerify(String? code) async {
    // return _client.post(
    //   'accounts/verify_code/',
    //   data: {
    //     if (code != null) 'code': code,
    //   },
    // );
    await Future.delayed(Duration(seconds: 2));
    return Future.value(ApiResponse(statusCode: 200));
  }

  @override
  Future<ApiResponse<UserModel>> profile() async {
    return _client.get(
      'api/auth/status',
      decoder: (data) {
        return UserModel.fromJson(data);
      },
    );
  }

  @override
  Future<ApiResponse> deleteAccount() {
    return _client.delete(
      'accounts/detail/',
    );
  }

  @override
  Future<ApiResponse<List<CategoryModel>>> fetchCategories(CategoryType type) {
    return _client.get(
      'api/categories',
      params: {
        'type': type.name,
      },
      decoder: (data) {
        return List.from(
          data.map(
            (e) => CategoryModel.fromJson(e),
          ),
        );
      },
    );
  }

  @override
  Future<ApiResponse<String?>> updateUserProfile({
    required UserModel model,
  }) async {
    try {
      if (model.avatarFile != null) {
        final images = await uploadImagesToServer([model.avatarFile!], _client);
        model = model.copyWith(
          avatarUrl: images.firstOrNull ?? model.avatarUrl,
        );
      }
    } catch (e) {
      final response = e as ApiResponse;
      return Future.value(
        ApiResponse(
          statusCode: response.statusCode,
          errorData: response.errorData,
        ),
      );
    }

    return _client.patch(
      'api/auth/profile',
      data: model.toMap(),
      decoder: (data) {
        return model.avatarUrl;
      },
    );
  }

  @override
  Future<ApiResponse> toggleFavorite(int id, FavoriteType type) {
    return _client.post(
      'api/favorite/toggle',
      data: {
        'type_id': id,
        'type': type.name,
      },
    );
  }

  @override
  Future<ApiResponse<List<NotificationModel>>> fetchNotificationList(
      NotificationParamsModel? params) {
    // return _client.get(
    //   'api/push-notification',
    //   params: params?.toMap(),
    //   decoder: (data) {
    //     return List.from(
    //       data['list'].map(
    //         (e) => NotificationModel.fromJson(e),
    //       ),
    //     );
    //   },
    // );
    return Future(() => ApiResponse(statusCode: 200, result: [
          NotificationModel(
            id: 1,
            title: 'Поздравляем! Вы успешно зарегистрировались!',
            description: 'Вы можете использовать приложение',
          )
        ]));
  }

  @override
  Future<ApiResponse<NotificationDetailsModel>> fetchNotificationDetails(
      int id) {
    return Future(
      () => ApiResponse(
        statusCode: 200,
        result: NotificationDetailsModel(
          createdAt: DateTime.now(),
          description:
              'Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития. Значимость этих проблем настолько очевидна, что сложившаяся структура организации в значительной степени обуславливает создание позиций, занимаемых участниками в отношении поставленных задач. Значимость этих проблем настолько структуры позволяет оценить значение дальнейших направлений развития. Задача организации, в особенности же рамки и место обучения кадров позволяет оценить значение новых предложений.рамки и место обучения кадров позволяет оценить значение новых предложений.',
          title: 'Поздравляем! Вы успешно зарегистрировались!',
        ),
      ),
    );
    // return _client.get(
    //   'api/push-notification/$id',
    //   decoder: (data) {
    //     return NotificationDetailsModel.fromJson(data);
    //   },
    // );
  }

  @override
  Future<ApiResponse> yandexSignIn(
      String clientId, String clientSecret, String redirectUri) async {
    final yandexClient =
        ApiClient('https://oauth.yandex.ru/', storage: LocalStorage());

    try {
      // 1. Авторизация через WebView
      final authUrl =
          "https://oauth.yandex.ru/authorize?response_type=code&client_id=$clientId&redirect_uri=$redirectUri";

      final result = '';

      /// red // await FlutterWebAuth.authenticate(
      //   url: authUrl,
      //   callbackUrlScheme: "chelnokmob",
      // );

      // 2. Извлечение кода из результата
      final code = Uri.parse(result).queryParameters['code'];
      if (code == null) {
        throw Exception("Authorization code not found");
      }

      // 3. Обмен кода на токен
      // 3. Обмен кода на токен
      final response = await yandexClient.post(
        'token',
        data: FormData.fromMap({
          // Используем FormData для x-www-form-urlencoded
          'grant_type': 'authorization_code',
          'code': code,
          'client_id': clientId,
          'client_secret': clientSecret,
          'redirect_uri': redirectUri,
        }),
        options: Options(
          headers: {
            'Content-Type':
                'application/x-www-form-urlencoded', // Указываем явный Content-Type
          },
        ),
        decoder: (data) => data as Map<String, dynamic>,
      );

      if (response.statusCode == 200) {
        final accessToken = response.result!['access_token'];
        if (accessToken == null) {
          throw Exception("Access token not found");
        }

        // 4. Получение данных пользователя
        final userInfoResponse = await yandexClient.get(
          'https://login.yandex.ru/info',
          options: Options(headers: {
            'Authorization': 'Bearer $accessToken',
          }),
          decoder: (data) => data as Map<String, dynamic>,
        );

        if (userInfoResponse.statusCode == 200) {
          final userData = userInfoResponse.result;

          return ApiResponse(statusCode: 200, result: userData);
        } else {
          return ApiResponse(
            statusCode: userInfoResponse.statusCode,
            errorData: "Failed to fetch user info",
          );
        }
      } else {
        return ApiResponse(
          statusCode: response.statusCode,
          errorData:
              response.errorData['error'] ?? "Error during token exchange",
        );
      }
    } catch (e) {
      return ApiResponse(statusCode: 500, errorData: e.toString());
    }
  }

  @override
  Future<ApiResponse<Token>> sendYandexUserCredentials(
      Map<String, dynamic> data, String? role) {
    return _client.post(
      'api/auth/yandex',
      data: {
        ...data,
        if (role != null) 'role': role,
      },
      decoder: (data) {
        return Token(access: data['access_token'], refresh: '');
      },
    );
  }

  @override
  Future<ApiResponse<Token>> sendGoogleUserCredentials(
      String accessToken, String? role) {
    return _client.post(
      'api/auth/google',
      data: {
        'token': accessToken,
        'role': role,
      },
      decoder: (data) {
        return Token(access: data['access_token'], refresh: '');
      },
    );
  }
}
