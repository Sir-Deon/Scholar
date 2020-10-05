import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class ParentDetails extends StatefulWidget {
  @override
  _ParentDetailsState createState() => _ParentDetailsState();
}

class _ParentDetailsState extends State<ParentDetails> {
  String fullNames = "Full Names";
  String relation = "Related Program";
  String occupation = "Occupation";
  String address = "Address";
  String nationality = "Nationality";
  String phone = "Phone Number";
  String email = "Email";
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
                  Text('Parent Details',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10,),
                  FlatButton.icon(onPressed: (){
                    Navigator.pushNamed(context, '/addParent');
                  },
                    icon: Icon(Icons.add, color: Colors.white,),
                    label: Text('Add A Parent',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),color: Colors.green,),
                  SizedBox(height: 20,),
                  Text('Full Names:',
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
                      child: Text(fullNames,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Relation:',
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
                      child: Text(relation,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Occupation:',
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
                      child: Text(occupation,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Address:',
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
                      child: Text(address,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Nationality:',
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
                      child: Text(nationality,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Phone:',
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
                      child: Text(phone,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Email:',
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
                      child: Text(email,
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
