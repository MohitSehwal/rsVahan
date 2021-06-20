import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Dialogboxes/LogoutAlertBox.dart';

class Forgotpasswordpage extends StatefulWidget {
  @override
  _ForgotpasswordpageState createState() => _ForgotpasswordpageState();
}

class _ForgotpasswordpageState extends State<Forgotpasswordpage> {
  late String email;

  buildForgotButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 8),
          margin: EdgeInsets.symmetric(vertical: 30),
          // ignore: deprecated_member_use
          child: RaisedButton(
            elevation: 5.0,
            color: Color.fromRGBO(19, 199, 190, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AlertLogout()));
              //Reset Screen process code here
            },
            child: Text(
              "Reset Password",
              style: GoogleFonts.oswald(
                color: Colors.white,
                wordSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height / 45,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildEmailRow() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      height: 1.4 * (MediaQuery.of(context).size.height / 16),
      width: 5 * (MediaQuery.of(context).size.width / 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 1.8),
        color: Colors.white,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'E-mail address',
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.send,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
      ),
    );
  }

  // Widget _buildLogoImage() {
  //   return Container(
  //     alignment: Alignment.topCenter,
  //     height: MediaQuery.of(context).size.height / 3,
  //     width: MediaQuery.of(context).size.width / 3,
  //     decoration: BoxDecoration(
  //         shape: BoxShape.circle,
  //         image: DecorationImage(
  //             image: AssetImage('assets/images/logoLargeSize.png'))),
  //   );
  // }

  Widget buildLogoText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: Text(
            "KPA Traders",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height / 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLogo() {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 3.5,
      decoration: BoxDecoration(
        border: Border.all(width: 4.5, color: Color.fromRGBO(19, 199, 190, 1)),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/person-icon.png'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(color: Color.fromRGBO(19, 199, 190, 1)),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 280,
                ),
                buildLogoText(),

                _buildLogo(),
                Text(
                  "Forgot Password",
                  style: GoogleFonts.oswald(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // _buildLogoImage(),
                buildEmailRow(),
                buildForgotButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
