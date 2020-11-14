import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'landingPage.dart';
import 'main.dart';

class MainPageStatefulWidget extends StatefulWidget {
  MainPageStatefulWidget({Key key}) : super(key: key);

  @override
  _MainPageStatefulWidgetState createState() => _MainPageStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MainPageStatefulWidgetState extends State<MainPageStatefulWidget> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    LandingPage(),
    Text(
      //Solyman borak page
      'صفحة برك سليمان',
    ),
    Text(
      //ABOUT PAGE
      'صفحة تعريف عن الفريق',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: mainColor,
        title: Text(
          "برك سليمان",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: ArabicFonts.Tajawal,
            package: 'google_fonts_arabic',
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "الرئيسية",
              style: TextStyle(
                fontFamily: ArabicFonts.Tajawal,
                package: 'google_fonts_arabic',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_boat),
            title: Text(
              "برك سليمان",
              style: TextStyle(
                fontFamily: ArabicFonts.Tajawal,
                package: 'google_fonts_arabic',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts),
            title: Text(
              "من نحن",
              style: TextStyle(
                fontFamily: ArabicFonts.Tajawal,
                package: 'google_fonts_arabic',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mainColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
