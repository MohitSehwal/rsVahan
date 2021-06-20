import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashCard extends StatefulWidget {
  @override
  _DashCardState createState() => _DashCardState();
}

class _DashCardState extends State<DashCard> {
  @override
  Widget build(BuildContext context) {
    int NumberCounter = 0;
    String CategoryName = "";
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(20),
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
                child: Stack(
              children: [
                Container(
                  height: 150,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, Color.fromRGBO(19, 199, 190, 1)],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        
                        (NumberCounter.toString()),
                        style: GoogleFonts.oswald(
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
            Expanded(
                child: Stack(
              children: [
                Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(("CategoryName"),
                            style: GoogleFonts.oswald(
                              fontSize: 28,
                            )),
                      ],
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
