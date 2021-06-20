import 'dart:convert';

import 'package:demo_flutter2/Dialogboxes/ForogtPasswordInstructionDialogbox.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddUserApi {
  static String url = "http://rsvahan.com/add-user";

  Future<String> addUserApi(String firstname, String lastname, String email,
      String adhaar, String gst, String pan, String firm, String phone) async {
    var formData = new Map<String, String>();
    formData['firstName'] = firstname;
    formData['lastName'] = lastname;
    formData['emailId'] = email;
    formData['phoneNo'] = adhaar;
    formData['gstNo'] = gst;
    formData['panNo'] = pan;
    formData['firmName'] = firm;
    formData['phoneNo'] = phone;
    try {
      final response = await http.post(Uri.parse(url), body: formData);
      print("Status Code of response: " + response.statusCode.toString());
      Map<String, String> headers = response.headers;
      String? token = headers['authorization'];
      String? role = headers['role'];

      print("Tokennnn->>>>>>" + token.toString());
      print("Role of the user" + role.toString());
      var TokenString = token.toString();
      var TokenJson = jsonEncode(TokenString);
      if (response.statusCode == 400 || response.statusCode == 500) {
        return "Didn't work";
      } else {
        print("Done");
        
        return "Work have been completed.";
      }
    } catch (e) {
      print("e-->" + e.toString());
    }
    return "long error";
  }
}
