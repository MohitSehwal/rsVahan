import 'package:flutter/material.dart';

import '../SettingChangePassword.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(19, 199, 190, 1)),
      body: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Color.fromRGBO(19, 199, 190, 1),
            appBar: TabBar(
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1),
              ),
              tabs: [
                Tab(
                    child:
                        Text("Profile", style: TextStyle(color: Colors.black))),
                Tab(
                  child: Text(
                    " Password Reset",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
            body: TabBarView(
              children: [
                PasswordResetPage(),
              ],
            ),
          )),
    );
  }
}
