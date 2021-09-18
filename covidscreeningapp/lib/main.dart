import 'package:covidscreeningapp/pages/homepage.dart';
import 'package:covidscreeningapp/pages/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(CovidScreeningApp());

class CovidScreeningApp extends StatelessWidget {
  CovidScreeningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// create bottom navigation bar
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // nav bar options
  static const List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // switch pages
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
