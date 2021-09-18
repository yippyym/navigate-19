import 'package:covidscreeningapp/questionnaire/radio_button.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Question test',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 300,
              child: RadioButton(Colors.black, '', _titles, (value) {
                setState(() {
                  _selectedValue = value;
                });
              }, _selectedValue, 0, 22, false, 0),
            ),
          ],
        ),
      ),
    );
  }
}
