import 'package:covidscreeningapp/pages/questionnaire/questionnaire.dart';
import 'package:flutter/material.dart';

void main() => runApp(CovidScreeningApp());

class CovidScreeningApp extends StatelessWidget {
  CovidScreeningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: _widgetOptions.elementAt(_selectedIndex),
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
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Listen to the advice of your local public \nhealth unit first, as their advice overrules the advice in this screening.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
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
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
