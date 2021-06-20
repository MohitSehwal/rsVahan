import 'package:demo_flutter2/Drawer_option_pages/DrawerOptionsMap.dart';
import 'package:demo_flutter2/Drawer_option_pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerStructure extends StatelessWidget {
  bool Status = false;
  String role = "";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Color.fromRGBO(19, 199, 190, 1),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            padding: EdgeInsets.only(top: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    height: 75,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/person-icon.png'),
                      ),
                      //Code of User Image in drawer will be here
                    )),
                Text(
                  "Ravi Jangra",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "rjravi005@gmail.com",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Column(children: [
            Container(
                // DrawerFunction();
                )
          ])
        ],
      ),
    );
  }
  // void DrawerFunction(){
  //   switch(role){
  //     case "admin":
  //     return adminItems.map((element)=> Row(children: [Icon(element['icon'],color: Colors.black,),Text(element['title'])],)).toList();
  //     case "distributer":
  //     return DistributerOptions();
  //     case "dealer":
  //     return DealerOption();
  //     case "agent":
  //     return AgentOptions();
  //   }
}
