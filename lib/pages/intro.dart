import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: Image.asset("assets/images/scholar1.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Column(
              children: <Widget>[
                Text("Never created an application account",
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  color: mainColor,
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/signup');
                  },
                  child: Text("START APPLICATION HERE",

                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text("Already started an application or you are already a student?",
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 17,
                    ),

                  ),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  color: mainColor,
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: Text("LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
