import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scholar/pages/mainDrawer.dart';
import 'package:scholar/pages/screens/applications.dart';
import 'package:scholar/pages/screens/documents.dart';
import 'package:scholar/pages/screens/parentDetails.dart';
import 'package:scholar/pages/screens/personalDetails.dart';
import 'package:scholar/pages/screens/qualifications.dart';
import 'package:scholar/pages/screens/workexperience.dart';
import 'package:scholar/statics.dart';


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;
  // This function is resposible for Tab Navigation
  _onTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // Setting Up Screens for the Tab
    List<Widget> _screens = [
      PersonalDetails(),
      WorkExperience(),
      Qualifications(),
      ParentDetails(),
      Documents(),
      CreateApllications(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text('SCHOLAR'),
      ),

      // App Drawer is Being imported from a custom file
      drawer: MainDrawer(),
      //Where the screens display
      body: _screens[_currentIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      fixedColor: mainColor,
      onTap: _onTapped,
      items: [
          BottomNavigationBarItem(title: Text("Personal Details"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("Work Experience"), icon: Icon(Icons.business_center)),
          BottomNavigationBarItem(title: Text("Qualification"), icon: Icon(Icons.assignment_turned_in)),
          BottomNavigationBarItem(title: Text("Parents"), icon: Icon(Icons.supervisor_account)),
          BottomNavigationBarItem(title: Text("Documents"), icon: Icon(Icons.subscriptions)),
          BottomNavigationBarItem(title: Text("Admission Application"), icon: Icon(Icons.assignment)),
    ],
    ));
  }
}
