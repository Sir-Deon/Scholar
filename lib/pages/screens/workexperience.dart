import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';


class WorkExperience extends StatefulWidget {
  @override
  _WorkExperienceState createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  String company = "Company";
  String role = "Role";
  String fromDate = "From date";
  String toDate = "To Date";
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
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text('Work Experience',
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 10,),
                FlatButton.icon(onPressed: () {
                  Navigator.pushNamed(context, '/work');
                },
                  icon: Icon(Icons.add, color: Colors.white,),
                  label: Text('New Work Experience',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ), color: Colors.green,),
                SizedBox(height: 20,),
                Text('Company:',
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
                    child: Text(company,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Role:',
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
                    child: Text(role,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('From Date:',
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
                    child: Text(fromDate,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('To Date:',
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
                    child: Text(toDate,
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
