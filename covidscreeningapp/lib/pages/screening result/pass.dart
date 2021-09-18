import 'dart:ui';
import 'package:covidscreeningapp/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreeningPass extends StatefulWidget {
  @override
  State<ScreeningPass> createState() => _ScreeningPassState();
}

class _ScreeningPassState extends State<ScreeningPass> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // heading
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 12),
              child: Text('COVID-19 \nSCREENING RESULT',
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.oswald(textStyle: TextStyle(fontSize: 40))),
            ),

            // light green pass
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  height: 170,
                  width: 320,
                  child: Text(
                    'VALID ON $now',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ),
                Container(
                  height: 140,
                  width: 320,
                  child: Image.asset('assets/images/pass.png'),
                ),
              ],
            ),

            // go to school
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                'GO to school.',
                style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ),

            // description
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'Retake this screening every day before going to school.',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 16)),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                ' If you feel sick or not well (not related to getting a COVID-19 vaccine in the last 48 hours), please stay home. Talk with a doctor if necessary.',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
              ),
            ),

            // back to profile button
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 50),
              height: 63,
              width: 268,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black, width: 3)),
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
                child: Text(
                  'back to profile',
                  style: GoogleFonts.oswald(
                      textStyle: TextStyle(fontSize: 24, color: Colors.black)),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
