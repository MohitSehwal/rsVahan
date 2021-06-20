import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:demo_flutter2/Dialogboxes/UserAddedDetailsPage.dart';
import 'package:demo_flutter2/components/ListofUsersThroughCard.dart';
import 'package:flutter/material.dart';

import 'AuthModels&API/ViewUserListModel.dart';

class AddedCatListPage3 extends StatefulWidget {
  @override
  _AddedCatListPage3State createState() => _AddedCatListPage3State();
}

class _AddedCatListPage3State extends State<AddedCatListPage3> {
  String response = "";
  List listResponse = [];
  Map<String, dynamic> mapResponse = new Map();
  Future fetchData() async {
    var URL = "http://mysafeinfo.com/api/data?list=englishmonarchs&format=json";
    var response = await http.get(Uri.parse(URL));
    // ignore: deprecated_member_use
    if (response.statusCode == 200) {
      mapResponse = json.decode(response.body);
      // listResponse = mapResponse['userDetails'];
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Color.fromRGBO(19, 199, 190, 1),
      ),
      // ignore: unnecessary_null_comparison
      body: mapResponse == null
          ? Container()
          : ListView.builder(itemBuilder: (context, index) {
              print("Mpa would be->>>>");
              print(mapResponse);
              return ViewCategory(
                name: mapResponse['ID'].toString(),
                email: mapResponse['Name'].toString(),
                phoneNo: mapResponse['Reign'].toString(),
                addedby: mapResponse['Reign'].toString(),
              );
            }),
    );
  }
}
