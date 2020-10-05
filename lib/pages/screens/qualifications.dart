import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class Qualifications extends StatefulWidget {
  @override
  _QualificationsState createState() => _QualificationsState();
}

class _QualificationsState extends State<Qualifications> {
  String qualification = "Qualification";
  String relatedProgram = "Related Program";
  String institution = "Institution";
  String creationDate = "Creation Date";
  String modification = "Modification Date";
  BoxDecoration myDecoration(){
    return BoxDecoration(
      border: Border.all(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(10.0),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text('Qualifications',
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 10,),
                FlatButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '/qualification');
                },
                  icon: Icon(Icons.add, color: Colors.white,),
                  label: Text('New Application Profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),color: Colors.green,),
                SizedBox(height: 20,),
                Text('Qualifications:',
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
                    child: Text(qualification,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Our Related Academic Program:',
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
                    child: Text(relatedProgram,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Institution:',
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
                    child: Text(institution,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Creation Date:',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.lightGreen,
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 210,
                  decoration: myDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text(creationDate,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                  Text('Creation Date:',
                  style: TextStyle(
                  fontSize: 15,
                   color: Colors.lightGreen,
                  ),
             ),
                SizedBox(height: 5,),
            Container(
            width: 210,
            decoration: myDecoration(),
            child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Text(creationDate,
                  style: TextStyle(
                        color: Colors.grey,
                   ),
                  ),
                 ),
               )
              ],
              ),
          )
        ],
      ),

    );
  }
}
