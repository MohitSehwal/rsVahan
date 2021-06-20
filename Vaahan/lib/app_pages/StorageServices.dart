import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final storage = FlutterSecureStorage();
  Future writeSecureToken(String key, String value) async {
    var writeData = await storage.write(key: key, value: value);
    return writeData;
  }
}
