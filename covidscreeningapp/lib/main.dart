import 'package:covidscreeningapp/pages/questionnaire/questionnaire.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(CovidScreeningApp());

class CovidScreeningApp extends StatelessWidget {
  CovidScreeningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // homepage text
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // heading
            Text(
              'COVID-19 \nSCREENING',
              textAlign: TextAlign.center,
              style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 40)),
            ),

            // first paragraph
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 60),
              child: Text(
                'This screening cannot diagnose you. If you have medical questions, consult a health care provider or your local public health unit.',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 16)),
              ),
            ),

            // second paragraph
            Container(
              margin: EdgeInsets.only(left: 35, right: 35, top: 20, bottom: 50),
              child: Text(
                'Listen to the advice of your local public health unit first, as their advice overrules the advice in this screening.',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 16)),
              ),
            ),

            // start screening button
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
            )
          ],
        ),
      ),

      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.addchart_rounded,
              size: 40,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_sharp,
              size: 40,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
        selectedLabelStyle: TextStyle(fontSize: 0),
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
