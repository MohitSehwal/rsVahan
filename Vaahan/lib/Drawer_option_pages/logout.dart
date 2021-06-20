import 'package:demo_flutter2/Drawer_option_pages/dashboard.dart';
import 'package:demo_flutter2/Drawer_option_pages/dashboard.dart';
import 'package:flutter/material.dart';

class LogoutOption extends StatefulWidget {
  @override
  _LogoutOptionState createState() => _LogoutOptionState();
}

class _LogoutOptionState extends State<LogoutOption> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Are you sure?"),
      actions: [
        TextButton(
            onPressed: () {
              //logout from profile code will get done here
            },
            child: Text("Yes")),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => DashboardPage()));
            },
            child: Text("No"))
      ],
    );
  }
}
