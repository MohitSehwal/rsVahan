import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewCategory extends StatefulWidget {
  final String name;
  final String email;
  final String phoneNo;
  final String addedby;
  ViewCategory(
      {required this.name,
      required this.email,
      required this.phoneNo,
      required this.addedby});
  @override
  _ViewCategoryState createState() => _ViewCategoryState();
}

class _ViewCategoryState extends State<ViewCategory> {
  String addPersonName = "a53";
  String personName = "";
  String personEmailID = "";
  String personPhoneNumber = "a53";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 40, top: 30, bottom: 30, right: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(19, 199, 190, 1),
                        radius: 46,
                        child: Icon(
                          Icons.person,
                          size: 52,
                          color: Colors.white,
                        ),
                      ),
                      VerticalDivider(
                        thickness: 5,
                        width: 28,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Text(
                            (widget.name),
                            style: GoogleFonts.aBeeZee(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            (personEmailID) + widget.email,
                            textAlign: TextAlign.end,
                            style: GoogleFonts.aBeeZee(fontSize: 14.5),
                          ),
                          Text(
                            ((widget.phoneNo)).toString() + "             ",
                            style: GoogleFonts.aBeeZee(fontSize: 14.5),
                          ),
                          Text(
                            "Added by :" +
                                ((widget.addedby).toString()) +
                                "            ",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.aBeeZee(fontSize: 14.5),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
