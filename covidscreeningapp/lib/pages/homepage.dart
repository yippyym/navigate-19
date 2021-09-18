import 'package:covidscreeningapp/pages/questionnaire/questionnaire.dart';
import 'package:flutter/material.dart';

//iPhone 8 - 37
class Homepage extends StatefulWidget {
  @override
  _Homepage createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'COVID-19 \nSCREENING',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'This screening cannot diagnose you. \nIf you have medical questions, consult \na health care provider or your local public \nhealth unit.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Listen to the advice of your local public \nhealth unit first, as their advice overrules the advice in this screening.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 63,
              width: 268,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
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
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
