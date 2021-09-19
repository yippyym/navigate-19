import 'package:covidscreeningapp/model/model.dart';
import 'package:covidscreeningapp/pages/questionnaire/selection_input.dart';
import 'package:covidscreeningapp/pages/screening%20result/fail.dart';
import 'package:covidscreeningapp/pages/screening%20result/pass.dart';
import 'package:covidscreeningapp/style.dart';
import 'package:flutter/material.dart';

//iPhone 8 - 37
class ScreeningQuestionnaire extends StatefulWidget {
  @override
  _ScreeningQuestionnaire createState() => _ScreeningQuestionnaire();
}

class _ScreeningQuestionnaire extends State<ScreeningQuestionnaire> {
  // reused parameters
  List<String> options = ['yes', 'no'];
  Color optionColour = customPeach;
  Color headerColour = Colors.black;

  // question 1 parameters
  String heading1 =
      "In the last 14 days, have you travelled outside of Canada?";
  String question1 =
      "If travel was only for a cross-border custody arrangement, select “No.”";
  int _selected1 = -1;

  Function onTap1(i) {
    return () => {
          setState(() {
            _selected1 = i;
          })
        };
  }

  // question 2 parameters
  String heading2 =
      "Has a doctor, health care provider, or public health unit told you that you should currently be isolating (staying at home)?";
  String question2 = "This can be because of an outbreak or contact tracing.";
  int _selected2 = -1;
  Function onTap2(i) {
    return () => {
          setState(() {
            _selected2 = i;
          })
        };
  }

  // question 3 parameters
  String heading3 =
      "In the last 10 days, have you been identified as a “close contact” of someone who currently has COVID-19?";
  String question3 =
      "If public health has advised you that you do not need to self-isolate, select “No.”";
  int _selected3 = -1;
  Function onTap3(i) {
    return () => {
          setState(() {
            _selected3 = i;
          })
        };
  }

  // question 4 parameters
  String heading4 =
      "In the last 10 days, have you received a COVID alert exposure notification on your cell phone?";
  String question4 =
      "If you already went for a test and got a negative result, select “No.”";
  int _selected4 = -1;
  Function onTap4(i) {
    return () => {
          setState(() {
            _selected4 = i;
          })
        };
  }

  @override
  Widget build(BuildContext context) {
    Navigate19Model navigate19model = Navigate19Model();

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
                style: Navigate19TextStyle.oswaldHeading(),
              ),
            ),

            // first question
            Container(
              height: 300,
              child: NewSelectionInput(options, heading1, question1, _selected1,
                  optionColour, headerColour, onTap1),
            ),

            // second question
            Container(
              height: 350,
              child: NewSelectionInput(options, heading2, question2, _selected2,
                  optionColour, headerColour, onTap2),
            ),

            // third question
            Container(
              height: 350,
              child: NewSelectionInput(options, heading3, question3, _selected3,
                  optionColour, headerColour, onTap3),
            ),

            // fourth question
            Container(
              height: 350,
              child: NewSelectionInput(options, heading4, question4, _selected4,
                  optionColour, headerColour, onTap4),
            ),

            // submit button
            Container(
              height: 63,
              width: 268,
              margin: EdgeInsets.only(top: 30, bottom: 50),
              child: ElevatedButton(
                style: Navigate19ButtonStyle.blackOutlineButton(),
                onPressed: () {
                  //save to model for profile page use
                  navigate19model.selected1 = _selected1;
                  navigate19model.selected2 = _selected2;
                  navigate19model.selected3 = _selected3;
                  navigate19model.selected4 = _selected4;

                  // deicide if pass or fail screening
                  if (_selected1 == 1 &&
                      _selected2 == 1 &&
                      _selected3 == 1 &&
                      _selected4 == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreeningPass(),
                        settings: RouteSettings(arguments: navigate19model),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreeningFail(),
                      ),
                    );
                  }
                },
                child:
                    Text('submit', style: Navigate19TextStyle.oswaldButton()),
              ),
            )
          ],
        ),
      )),
    );
  }
}
