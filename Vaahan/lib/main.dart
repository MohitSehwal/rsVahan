import 'dart:ui';

import 'package:demo_flutter2/AuthModels&API/loginApi.dart';
import 'package:demo_flutter2/AuthModels&API/loginModel.dart';
import 'package:demo_flutter2/Drawer_option_pages/dashboard.dart';
import 'package:demo_flutter2/forgot_pass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // widget which is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  late LoginReqModel loginReqModel;
  bool isApiCallProcess = false;
  String email = "";
  DemoRequest loginApi = new DemoRequest();

  void callLogin() async {}

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  String password = "";
  Widget _buildImage() {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        border: Border.all(width: 4.5, color: Color.fromRGBO(19, 199, 190, 1)),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/person-icon.png'),
        ),
      ),
    );
  }

  Widget _buildForgetPasswordButton() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: (
          // ignore: deprecated_member_use
          FlatButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Forgotpasswordpage()));
        },
        child: Text(
          "Forgot Password?",
          style: GoogleFonts.oswald(
            color: Colors.black,
            letterSpacing: 1.5,
            fontSize: MediaQuery.of(context).size.height / 45,
          ),
        ),
      )),
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 19),
          width: 5 * (MediaQuery.of(context).size.width / 8),
          margin: EdgeInsets.symmetric(vertical: 15),
          // ignore: deprecated_member_use
          child: RaisedButton(
            elevation: 5.0,
            color: Color.fromRGBO(19, 199, 190, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            onPressed: () {
              callLogin();
              final snackBar = SnackBar(content: Text("Login successful..."));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardPage()));

              // }
              //   if (ValidateandSave()) {
              //     setState(() {
              //       isApiCallProcess = true;
              //     });
              //     LoginApi loginApi = new LoginApi();
              //     loginApi.login(loginReqModel).then((value) {
              //       setState(() {
              //         isApiCallProcess = false;
              //       });
              //       if (value.token.isNotEmpty) {
              //         final snackBar = SnackBar(
              //           content: Text("Login Succesfull"),
              //         );
              //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => DashboardHomePage()));
              //       } else {
              //         final snackBar = SnackBar(
              //           content: Text("Failed to login: "),
              //         );
              //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
              //       }
              //     });
              //   }
            },
            child: Text(
              "LOGIN",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                fontSize: MediaQuery.of(context).size.height / 45,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(5, 15), blurRadius: 6.0)
              ],
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: GoogleFonts.oswald(
                        wordSpacing: 2,
                        color: Color.fromRGBO(19, 199, 190, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height / 25,
                      ),
                    ),
                  ],
                ),
                _buildImage(),
                SizedBox(height: 20),
                new Form(
                  key: formkey,
                  child: Column(
                    children: [
                      new Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        height: 1.4 * (MediaQuery.of(context).size.height / 19),
                        width: 5 * (MediaQuery.of(context).size.width / 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1.8),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          controller: _usernameController,
                          onSaved: (input) => setState(() => email = input!),
                          validator: (input) => input!.contains("@")
                              ? "Email is not vaild"
                              : null,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color.fromRGBO(19, 199, 190, 1),
                            ),
                            hintText: 'Username',
                            border: InputBorder.none,
                            // border:
                            //     OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        height: 1.4 * (MediaQuery.of(context).size.height / 19),
                        width: 5 * (MediaQuery.of(context).size.width / 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1.8),
                        ),
                        child: TextFormField(
                          controller: _passwordController,
                          onSaved: (input) => setState(() => password = input!),
                          validator: (input) => input!.length > 8
                              ? "Password should be greater than 6"
                              : null,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          onChanged: (value) {
                            setState(() {
                              // password = value;
                            });
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: Color.fromRGBO(19, 199, 190, 1),
                            ),
                            hintText: "Password",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                _buildForgetPasswordButton(),
                _buildLoginButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Text(
            'KPA Traders',
            style: GoogleFonts.oswald(
              fontSize: MediaQuery.of(context).size.height / 25,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldkey,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(19, 199, 190, 1),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildLogo(),
                _buildContainer(),
              ],
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  bool ValidateandSave() {
    final form = formkey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
