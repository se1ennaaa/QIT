import 'dart:io';
import 'package:android_id/android_id.dart';
import 'package:chelnok_mob/config/utils/push_notifications_manager.dart';
import 'package:chelnok_mob/data/models/fcm_create_model.dart';
import 'package:chelnok_mob/providers/dependencies.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/models/api_reponse.dart';
part 'fcm_providers.g.dart';

@riverpod
Future<ApiResponse> createFCM(Ref ref, [String? token]) async {
  token ??= PushNotificationsManager().getToken();
  if (token == null || token.isEmpty) {
    throw Exception('FCM token is null or empty');
  }
  final deviceInfo = DeviceInfoPlugin();
  String? deviceName;
  String? deviceId;
  String type = '';

  if (Platform.isAndroid) {
    final info = await deviceInfo.androidInfo;
    deviceName = info.model;
    deviceId = await const AndroidId().getId();
    type = 'android';
  } else if (Platform.isIOS) {
    final info = await deviceInfo.iosInfo;
    deviceName = info.utsname.machine;
    deviceId = info.identifierForVendor;
    type = 'ios';
  }

  if (deviceId == null || deviceId.isEmpty) {
    throw Exception('Device ID is null or empty');
  }
  final response = await ref.read(userRepoProvider).createFcm(
        FcmCreateModel(
          registrationId: token,
          type: type,
          deviceId: deviceId,
          name: deviceName,
        ),
      );
  return response;
}

@riverpod
Future<ApiResponse> deleteFCM(Ref ref) async {
  final deviceInfo = DeviceInfoPlugin();
  String? deviceId;
  if (Platform.isAndroid) {
    deviceId = await const AndroidId().getId();
  } else if (Platform.isIOS) {
    final info = await deviceInfo.iosInfo;
    deviceId = info.identifierForVendor;
  }
  if (deviceId == null || deviceId.isEmpty) {
    throw Exception('Device ID is null or empty');
  }

  final response = await ref.read(userRepoProvider).deleteFcm(deviceId);
  return response;
}
