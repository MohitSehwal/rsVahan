import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertLogout extends StatefulWidget {
  @override
  _AlertLogoutState createState() => _AlertLogoutState();
}

class _AlertLogoutState extends State<AlertLogout> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Are you sure you want to log out?"),
      content: Text("Click on Yes to process!"),
      actions: [
        CupertinoDialogAction(
          child: Text("Yes"),
          onPressed: () {
            //log out code here
          },
        ),
        CupertinoDialogAction(
          child: Text("NO"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
