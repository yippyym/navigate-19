import 'package:covidscreeningapp/pages/questionnaire/selection_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//iPhone 8 - 37
class ScreeningQuestionnaire extends StatefulWidget {
  @override
  _ScreeningQuestionnaire createState() => _ScreeningQuestionnaire();
}

class _ScreeningQuestionnaire extends State<ScreeningQuestionnaire> {
  List<String> options = ["yes", "no"];
  String heading = "In the last 14 days, have you travelled outside of Canada?";
  String question =
      " If travel was only for a cross-border custody arrangement, select “No.”";
  int _selected = -1;
  Color optionColour = Colors.red;
  Color headerColour = Colors.black;

  Function onTap(i) {
    return () => {
          setState(() {
            _selected = i;
          })
        };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // header
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                'COVID-19 \nSCREENING',
                textAlign: TextAlign.center,
                style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 40)),
              ),
            ),

            // first question
            Container(
              height: 300,
              child: SelectionInput(options, heading, question, _selected,
                  optionColour, headerColour, onTap),
            ),

            //TODO - leave space for other questions
            SizedBox(height: 500),

            // submit button
            Container(
              height: 63,
              width: 268,
              margin: EdgeInsets.only(top: 50, bottom: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black, width: 3)),
                  primary: Colors.white,
                ),
                //TODO: lead to qr code or something
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreeningQuestionnaire(),
                    ),
                  );
                },
                child: Text(
                  'submit',
                  style: GoogleFonts.oswald(
                      textStyle: TextStyle(fontSize: 24, color: Colors.black)),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
