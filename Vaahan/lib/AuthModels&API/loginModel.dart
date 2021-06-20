import 'dart:convert';
import 'package:flutter/foundation.dart';

class LoginResponseModel {
  final String token;
  final String error;
  LoginResponseModel({required this.token, required this.error});
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
        token: json['token'] != null ? json['josn'] : '',
        error: json['error'] != null ? json['error'] : '');
  }
}

class LoginReqModel {
  String email;
  String password;
  LoginReqModel({
    this.email = "",
    this.password = "",
  });
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };
    return map;
  }
}
