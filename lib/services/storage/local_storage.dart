import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final storage = const FlutterSecureStorage();

  Future<bool> setValue(String key, String value) async {
    await storage.write(key: key, value: value);
    if (kDebugMode) {
      print('Set value for $key: $value');
    }
    return true;
  }

  // Future<dynamic> readValue(String key) async {

  //   return await storage.read(key: key);

  // }

  Future<dynamic> readValue(String key) async {
    var value = await storage.read(key: key);
    if (kDebugMode) {
      print('Read value for $key: $value');
    }
    return value;
  }

  Future<bool> clearValue(String key) async {
    await storage.delete(key: key);
    if (kDebugMode) {
      print('Cleared value for $key');
    }
    return true;
  }
}
