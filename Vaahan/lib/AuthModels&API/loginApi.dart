import 'dart:math';
import 'package:demo_flutter2/app_pages/StorageServices.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:demo_flutter2/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DemoRequest {
  static String url = "http://rsvahan.com/login";

  Future<String> login(String email, String password) async {
    SecureStorage secureStorage = new SecureStorage();
    var formData = new Map<String, String>();
    formData['username'] = email;
    formData["password"] = password;

    try {
      final response = await http.post(Uri.parse(url),
          headers: {'Accept': 'application/json'}, body: formData);
      print("Status Code of response: " + response.statusCode.toString());
      Map<String, String> headers = response.headers;
      // Map<String, String> roleheader = response.headers

      String? token = headers['authorization'];
      String? role = headers['role'];

      print("Tokennnn->>>>>>" + token.toString());
      print("Role of the user" + role.toString());
      var TokenString = token.toString();
      var TokenJson = jsonEncode(TokenString);
      if (response.statusCode == 400 || response.statusCode == 500) {
        return "answer";
      } else {
        secureStorage.writeSecureToken('key', TokenString);
        return "Long error";
      }
    } catch (e) {
      print("e-->" + e.toString());
    }
    return "long error";
  }

//   _saveToken(String token) async {
//     final prefes = await SharedPreferences.getInstance();
//     final key = 'token';
//     final value = token;
//     prefes.setString(key, value);
//   }

//   read() async {
//     final prefs = await SharedPreferences.getInstance();
//     final key = 'token';
//     final value = prefs.get(key) ?? 0;
//   }
// }
}
