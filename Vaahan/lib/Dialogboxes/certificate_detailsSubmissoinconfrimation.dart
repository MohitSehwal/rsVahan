import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CertDetailsAddConfirmatinDialog extends StatefulWidget {
  @override
  _CertDetailsAddConfirmatinDialog createState() =>
      _CertDetailsAddConfirmatinDialog();
}

class _CertDetailsAddConfirmatinDialog
    extends State<CertDetailsAddConfirmatinDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Submit?"),
      content: Text("Make sure give details are correct!"),
      actions: [
        CupertinoDialogAction(
          child: Text("Yes"),
          onPressed: () {},
        ),
        CupertinoDialogAction(
          child: Text("No"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
