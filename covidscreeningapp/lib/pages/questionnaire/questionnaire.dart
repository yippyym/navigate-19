import 'package:covidscreeningapp/pages/questionnaire/selection_input.dart';
import 'package:covidscreeningapp/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    int firstSelection = 0;
    int secondSelection = 0;

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
                heading: 'Hello',
                description: 'Okay hi',
                selected: firstSelection,
                optionColour: Colors.blue,
                headerColour: Colors.black,
                onTap: (i) {
                  return () => {
                        setState(() {
                          firstSelection = i;
                        })
                      };
                },
              ),
            ),

            // second question
            Container(
                height: 300,
                child: SelectionInput(
                  options: ['yes', 'no'],
                  heading: 'Bye',
                  description: 'Okay bye',
                  selected: secondSelection,
                  optionColour: Colors.blue,
                  headerColour: Colors.black,
                  onTap: (i) {
                    return () => {
                          setState(() {
                            secondSelection = i;
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreeningQuestionnaire(),
                    ),
                  );
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
