import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sqlcipher_flutter_libs/sqlcipher_flutter_libs.dart';

import 'app.dart';
import 'data/db/app_database.dart';
import 'data/db/db_key_service.dart';
import 'presentation/providers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    await applyWorkaroundToOpenSqlCipherOnOldAndroidVersions();
  }

  final database = await AppDatabase.open(const DbKeyService());

  runApp(
    ProviderScope(
      overrides: [appDatabaseProvider.overrideWithValue(database)],
      child: const TradingNotesApp(),
    ),
  );
}
