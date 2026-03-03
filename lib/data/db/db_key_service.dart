import 'dart:convert';
import 'dart:math';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class DbKeyService {
  const DbKeyService();

  static const _storage = FlutterSecureStorage();
  static const _storageKey = 'trading_notes_db_key_v1';

  Future<String> getOrCreateKey() async {
    final existing = await _storage.read(key: _storageKey);
    if (existing != null && existing.isNotEmpty) {
      return existing;
    }

    final random = Random.secure();
    final bytes = List<int>.generate(32, (_) => random.nextInt(256));
    final value = base64UrlEncode(bytes);
    await _storage.write(key: _storageKey, value: value);
    return value;
  }
}
