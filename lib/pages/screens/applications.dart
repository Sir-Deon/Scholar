import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class CreateApllications extends StatefulWidget {
  @override
  _CreateApllicationsState createState() => _CreateApllicationsState();
}

class _CreateApllicationsState extends State<CreateApllications> {
  String programs = "program";
  String profileName = "Profile Name";
  String campus = "Campus";
  String startDate = "Expected Start Date";
  String finishDate = "Expected Finish Date";
  String mode = "Study Mode";
  String type = "Admission";
  String currentLevel = "Current Level";
  String appStatus = "Application";
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
                  Text('My Applications',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10,),
                  FlatButton.icon(onPressed: (){
                    Navigator.pushNamed(context, '/apply');
                  },
                    icon: Icon(Icons.add, color: Colors.white,),
                    label: Text('Apply For A Program',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),color: Colors.green,),
                  SizedBox(height: 20,),
                  Text('Programs:',
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
                      child: Text(programs,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Profile Name:',
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
                      child: Text(profileName,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Campus:',
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
                      child: Text(campus,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Expected Start Date:',
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
                      child: Text(startDate,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Expected Finish Date:',
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
                      child: Text(finishDate,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Study Mode:',
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
                      child: Text(mode,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Admission Type:',
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
                      child: Text(type,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Current Level:',
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
                      child: Text(currentLevel,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Application Status:',
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
                      child: Text(appStatus,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            FlatButton.icon(onPressed: (){
              Navigator.pushNamed(context, '/pay');
            }, icon: Icon(Icons.attach_money, color: Colors.white,), label: Text('Pay Fees',
            style: TextStyle(
              color: Colors.white,
            ),
            ), color: mainColor,
            )
          ],
        ),

    );
  }
}
