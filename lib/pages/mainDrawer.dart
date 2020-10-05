import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: Image.asset("assets/images/scholar1.png",
              fit: BoxFit.cover,
            ),
          ),
         SizedBox(height: 20),
         Row(
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.account_circle, color: mainColor, size: 40,),
             ),
             Text('User Name',
             style: TextStyle(
               fontSize: 20,
             ),
             )
           ],
         ),
          Row(
            children: [
              FlatButton.icon(onPressed: (){
                Navigator.pushNamed(context, '/settings');
              }, icon:Icon(Icons.settings, color: mainColor,),
                  label: Text('Settings',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  ))
            ],
          ),
          Row(
            children: [
              FlatButton.icon(onPressed: (){
                Navigator.pushReplacementNamed(context, '/login');
              }, icon:Icon(Icons.add_to_home_screen, color: mainColor,),
                  label: Text('Sign Out',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ))
            ],
          ),
        ],
      )

    );
  }
}
