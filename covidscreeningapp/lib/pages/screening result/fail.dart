import 'dart:ui';
import 'package:covidscreeningapp/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreeningFail extends StatefulWidget {
  @override
  State<ScreeningFail> createState() => _ScreeningFailState();
}

class _ScreeningFailState extends State<ScreeningFail> {
  DateTime now = new DateTime.now();

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
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    height: 170,
                    width: 320,
                    child: Text(
                      '$now',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 320,
                    child: Image.asset('assets/images/fail.png'),
                  ),
                ],
              ),

              // go to school
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  'DO NOT go to school.',
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
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 16)),
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 210, top: 15),
                child: Text(
                  'Next steps:',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),

              Container(
                  margin: EdgeInsets.only(left: 30, right: 10, top: 10),
                  child: Text(
                    '1. Contact the school to let them know about this result. \n\n2. Stay isolated and do not leave except to get tested or for a medical emergency. \n\n3. Visit an assessment centre to get a COVID-19 test',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(fontSize: 16, color: Colors.grey[400])),
                  )),

              Container(
                margin: EdgeInsets.only(right: 135, top: 25),
                child: Text(
                  'Returning to school:',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 30, right: 10, top: 10),
                child: Text(
                  'If you test negative (you do not have the virus), you can return to school. \n\nIf you test positive (you do have the virus), you can only return after cleared by your local public health unit.',
                  textAlign: TextAlign.start,
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
                        textStyle:
                            TextStyle(fontSize: 24, color: Colors.black)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
