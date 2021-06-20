import 'dart:core' as data;
import 'dart:core';
import 'dart:io';
import 'package:demo_flutter2/Dialogboxes/certificate_detailsSubmissoinconfrimation.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UserDetailsState();
  }
}

class UserDetailsState extends State<UserDetails> {
  late File _image;
  //Date

  late data.String _userFirstName, _userLastName, _userType;
  late data.String _userEmailID, _adhaarNumber;
  late data.String _gstNumber, _panNumber;
  late data.String _firmName, _userPhone;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Future _AdharImage() async {
  //   var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  //   setState(() {
  //     _image = image;
  //   });
  // }

  Widget _buildlogoImage() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person_add,
            color: Color.fromRGBO(19, 199, 190, 1),
            size: 70,
          ),
          SizedBox(height: 50),
          Text(
            "User identity", //user identity i.e. admin,agent, distributer
            style: GoogleFonts.oswald(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _builduserFirstName() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'First name',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _builduserLastName() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Last name',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _builduserEmailID() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Email Id',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _buildadhaarNumber() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter the first name.";
        } else if (value.length < 3) {
          return "Name should be greate than 3 characters";
        }
      },
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: 'Adhaar Number',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _buildgstNumber() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter the first name.";
        } else if (value.length < 3) {
          return "Name should be greate than 3 characters";
        }
      },
      decoration: InputDecoration(
          labelText: 'GST Number',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 8)),
    );
  }

  Widget _buildpanNumber() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter the first name.";
        } else if (value.length < 3) {
          return "Name should be greate than 3 characters";
        }
      },
      decoration: InputDecoration(
          labelText: 'PAN Number',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 8)),
    );
  }

  Widget _buildfirmName() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Firm Name',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 8)),
    );
  }

  Widget _builduserPhone() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Phone number',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 8)),
    );
  }

  Widget _buildAdhaarImage() {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 20,
                width: 20,
                color: Colors.black12,
                // ignore: unnecessary_null_comparison
                child: _image == null
                    ? Icon(FontAwesomeIcons.plus)
                    : Image.file(_image),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 199, 190, 1),
      ),
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
              _builduserFirstName(),
              SizedBox(height: 10),
              _builduserLastName(),
              SizedBox(height: 10),

              _builduserEmailID(),
              SizedBox(height: 10),

              _buildadhaarNumber(),
              SizedBox(height: 10),

              _buildgstNumber(),
              SizedBox(height: 10),

              _buildpanNumber(),
              SizedBox(height: 10),

              _buildfirmName(),
              SizedBox(height: 10),

              _builduserPhone(),
              SizedBox(height: 10),
              _buildAdhaarImage(),
              SizedBox(height: 10),
              // _buildGSTCertImage(),
              // SizedBox(height: 10),
              // ignore: deprecated_member_use
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
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) =>
                            CertDetailsAddConfirmatinDialog());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
