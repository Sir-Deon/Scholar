import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class Done extends StatefulWidget {
  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("New Profile"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: [
               Text("Save Details",
                 style: TextStyle(
                   color: Colors.green,
                   fontSize: 25,
                 ),
               ),
               SizedBox(height: 10),
               Text('Done filling your profile, save and move to the next section on the application wizard on the left.'),
               Row(
                 children: [
                   FlatButton(onPressed: (){
                     Navigator.pushReplacementNamed(context, '/parentDetails');
                   }, child: Text("Previous",
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ), color: Colors.grey,),
                   SizedBox(width: 150,),
                   FlatButton(onPressed: (){
                  
                   }, child: Text("Save",
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ), color: Colors.green,)
                 ],
               )
             ],
           ),
         )
        ],
      ),
    );
  }
}
