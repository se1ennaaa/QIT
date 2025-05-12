import 'package:chelnok_mob/app/app.dart';

import 'package:chelnok_mob/data/storage/local_storage.dart';
import 'package:chelnok_mob/helpers/logger.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ru', null);
  await Firebase.initializeApp();
  await LocalStorage.init();
  print(LocalStorage().token?.access);

  initLoggerListener();
  runApp(ProviderScope(child: App()));
}

//
