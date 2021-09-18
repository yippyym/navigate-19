import 'package:covidscreeningapp/questionnaire/questionnaire.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CovidScreeningApp());
}

class CovidScreeningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreeningQuestionnaire(),
      debugShowCheckedModeBanner: false,
    );
  }
}
