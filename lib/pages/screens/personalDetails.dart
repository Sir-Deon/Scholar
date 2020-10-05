import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scholar/statics.dart';

class PersonalDetails extends StatefulWidget {
  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  String profileTitle = "Title";
  String name = "Name";
  String gender = "Gender";
  String email = "Email";

  BoxDecoration myDecoration() {
    return BoxDecoration(
      border: Border.all(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(10.0),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text('Personal Details',
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 10,),
                FlatButton.icon(onPressed: () {
                  Navigator.pushNamed(context, '/newProfile');
                },
                  icon: Icon(Icons.add, color: Colors.white,),
                  label: Text('New Application Profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ), color: Colors.green,),
                SizedBox(height: 20,),
                Text('Profile Title:',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.lightGreen,
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 240,
                  decoration: myDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text(profileTitle,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Name:',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.lightGreen,
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 240,
                  decoration: myDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text(name,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Gender:',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.lightGreen,
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 240,
                  decoration: myDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text(gender,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Personal Email:',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.lightGreen,
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 240,
                  decoration: myDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text(email,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}