import 'dart:core' as data;
import 'dart:core';
import 'package:demo_flutter2/Dialogboxes/certificate_detailsSubmissoinconfrimation.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class PasswordResetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PasswordResetPageState();
  }
}

class PasswordResetPageState extends State<PasswordResetPage> {
  //Date

  late data.String _userFirstName, _userLastName, _userType;
  late data.String _userEmailID, _adhaarNumber;
  late data.String _gstNumber, _panNumber;
  late data.String _firmName, _userPhone;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildlogoImage() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Text(
            "Password Change",
            style: GoogleFonts.oswald(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          SizedBox(height: 70),
        ],
      ),
    );
  }

  Widget _buildCurrentPass() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Current Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _buildNewPass() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'New Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _buildConfPass() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Confirm Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildlogoImage(),
              SizedBox(height: 10),
              _buildCurrentPass(),
              SizedBox(height: 10),
              _buildNewPass(),
              SizedBox(height: 10),
              _buildConfPass(),
              SizedBox(height: 10),
              Container(
                height: 1.4 * (MediaQuery.of(context).size.height / 20),
                width: 5 * (MediaQuery.of(context).size.width / 7),
                margin: EdgeInsets.symmetric(vertical: 30),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Color.fromRGBO(19, 199, 190, 1),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
