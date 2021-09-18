import 'package:covidscreeningapp/pages/questionnaire/questionnaire.dart';
import 'package:covidscreeningapp/pages/screening%20result/fail.dart';
import 'package:covidscreeningapp/pages/screening%20result/pass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Text(
                'STUDENT NAME',
                style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 40)),
              ),
            ),

            // screening result
            SizedBox(
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
                    //TODO lead to qr code/check thing
                    MaterialPageRoute(
                      builder: (context) => ScreeningFail(),
                    ),
                  );
                },
                child: Text(
                  'daily screening result',
                  style: GoogleFonts.oswald(
                      textStyle: TextStyle(fontSize: 24, color: Colors.black)),
                ),
              ),
            ),

            // contact tracing
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 50),
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
                    //TODO lead to maps/contact tracing
                    MaterialPageRoute(
                      builder: (context) => ScreeningQuestionnaire(),
                    ),
                  );
                },
                child: Text(
                  'exposure risk',
                  style: GoogleFonts.oswald(
                      textStyle: TextStyle(fontSize: 24, color: Colors.black)),
                ),
              ),
            ),

            // start screening
            SizedBox(
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
                      builder: (context) => ScreeningQuestionnaire(),
                    ),
                  );
                },
                child: Text(
                  'start screening',
                  style: GoogleFonts.oswald(
                      textStyle: TextStyle(fontSize: 24, color: Colors.black)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
