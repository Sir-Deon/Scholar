import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class Documents extends StatefulWidget {
  @override
  _DocumentsState createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  String documentTitle = "Document Title";
  String documentExtention = "Document Extension";
  String creationDate = "Creation Date";
  String dateModified = "Date Modified";
  String relatedProgram = "Related Academic Program";

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
                  Text('My Documents',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10,),
                  FlatButton.icon(onPressed: (){
                    Navigator.pushNamed(context, '/addDocument');
                  },
                    icon: Icon(Icons.add, color: Colors.white,),
                    label: Text('Add Documents',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),color: Colors.green,),
                  SizedBox(height: 20,),
                  Text('Document Title:',
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
                      child: Text(documentTitle,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Document Extension:',
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
                      child: Text(documentExtention,
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
                    width: 240,
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
                  Text('Date Modified:',
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
                      child: Text(dateModified,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Related Academic Program:',
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
                      child: Text(relatedProgram,
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
