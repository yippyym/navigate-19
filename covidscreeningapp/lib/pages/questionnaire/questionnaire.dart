import 'package:covidscreeningapp/pages/questionnaire/radio_button.dart';
import 'package:flutter/material.dart';

//iPhone 8 - 37
class ScreeningQuestionnaire extends StatefulWidget {
  @override
  _ScreeningQuestionnaire createState() => _ScreeningQuestionnaire();
}

class _ScreeningQuestionnaire extends State<ScreeningQuestionnaire> {
  final List<String> _titles = [
    'Yes',
    'No',
  ];

  String _selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60),
            Text(
              'COVID-19 \nSCREENING',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 300,
              child: RadioButton(Colors.black, 'question', _titles, (value) {
                setState(() {
                  _selectedValue = value;
                });
              }, _selectedValue, 24, 16, false, 0),
            ),
          ],
        ),
      ),
    );
  }
}
