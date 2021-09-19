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
  // Function onTap(i) {
  //   return () => {
  //         setState(() {
  //           selected = i;
  //         })
  //       };
  // }

  @override
  Widget build(BuildContext context) {
    // int firstSelection = 0;
    // int secondSelection = 0;
    int selected = 0;

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
              child: SelectionInput(
                options: ['yes', 'no'],
                heading:
                    'In the last 14 days, have you travelled outside of Canada?',
                description:
                    ' If travel was only for a cross-border custody arrangement, select “No.”',
                selected: selected,
                optionColour: customPeach,
                headerColour: Colors.black,
                onTap: (i) {
                  return () => {
                        setState(() {
                          selected = i;
                        })
                      };
                },
              ),
            ),

            // second question
            Container(
                height: 350,
                child: SelectionInput(
                  options: ['yes', 'no'],
                  heading:
                      'Has a doctor, health care provider, or public health unit told you that you should currently be isolating (staying at home)?',
                  description:
                      'This can be because of an outbreak or contact tracing.',
                  selected: selected,
                  optionColour: customPeach,
                  headerColour: Colors.black,
                  onTap: (i) {
                    return () => {
                          setState(() {
                            selected = i;
                          })
                        };
                  },
                )),

            // third question
            Container(
                height: 350,
                child: SelectionInput(
                  options: ['yes', 'no'],
                  heading:
                      'In the last 10 days, have you been identified as a “close contact” of someone who currently has COVID-19?',
                  description:
                      'If public health has advised you that you do not need to self-isolate, select “No.”',
                  selected: selected,
                  optionColour: customPeach,
                  headerColour: Colors.black,
                  onTap: (i) {
                    return () => {
                          setState(() {
                            selected = i;
                          })
                        };
                  },
                )),

            // fourth question
            Container(
                height: 350,
                child: SelectionInput(
                  options: ['yes', 'no'],
                  heading:
                      'In the last 10 days, have you received a COVID alert exposure notification on your cell phone?',
                  description:
                      'If you already went for a test and got a negative result, select “No.”',
                  selected: selected,
                  optionColour: customPeach,
                  headerColour: Colors.black,
                  onTap: (i) {
                    return () => {
                          setState(() {
                            selected = i;
                          })
                        };
                  },
                )),

            // submit button
            Container(
              height: 63,
              width: 268,
              margin: EdgeInsets.only(top: 50, bottom: 50),
              child: ElevatedButton(
                style: Navigate19ButtonStyle.blackOutlineButton(),
                //TODO lead to qr code/check thing
                onPressed: () {
                  if (selected == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreeningPass(),
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ScreeningPass(),
                  //   ),
                  // );
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
