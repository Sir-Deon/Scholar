import 'package:flutter/material.dart';
import 'package:scholar/pages/account.dart';
import 'package:scholar/pages/networks.dart';
import 'package:scholar/pages/profile.dart';
import 'package:scholar/statics.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int _currentIndex = 0;
  _onTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      Profile(),
      Account(),
      Networks()
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Text('Settings'),
        ),

        body: _screens[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: mainColor,
          onTap: _onTapped,
          items: [
            BottomNavigationBarItem(title: Text("Profile"), icon: Icon(Icons.account_circle)),
            BottomNavigationBarItem(title: Text("Account"), icon: Icon(Icons.account_circle)),
            BottomNavigationBarItem(title: Text("Network"), icon: Icon(Icons.call_split)),
          ],
        ));;
  }
}
