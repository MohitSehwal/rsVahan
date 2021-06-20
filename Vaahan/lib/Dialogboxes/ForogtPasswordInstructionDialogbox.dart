import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertBoxMessage extends StatefulWidget {
  @override
  _AlertBoxMessage createState() => _AlertBoxMessage();
}

class _AlertBoxMessage extends State<AlertBoxMessage> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("E-mail has been sent!"),
      content: Text("Check your inbox, please."),
      actions: [
        CupertinoDialogAction(
          child: Text("Okay"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
