import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Networks extends StatefulWidget {
  @override
  _NetworksState createState() => _NetworksState();
}

class _NetworksState extends State<Networks> {
String facebook = "https://user/auth?authclient=facebook";
String twitter = "https://user/auth?authclient=twitter";
String google = "https://user/auth?authclient=google";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Text("NetWorks",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                ),
                ),
                // Setting up facebook Connect
                Row(
                  children: [
                    Image.asset('assets/images/facebook.png', height: 60,),
                    SizedBox(width: 160,),
                    FlatButton(onPressed: (){
                      launch(facebook);
                    }, color: Colors.green, child:Text("Connect",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ) )
                  ],
                ),
                SizedBox(height: 4,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  color: Colors.grey,
                ),
                // Setting up twitter connect
                Row(
                  children: [
                    Image.asset('assets/images/twitter.png', height: 60,),
                    SizedBox(width: 160,),
                    FlatButton(onPressed: (){
                      launch(twitter);
                    }, color: Colors.green, child:Text("Connect",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ) )
                  ],
                ),
                SizedBox(height: 4,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  color: Colors.grey,
                ),
                SizedBox(height: 4,),
                // Setting upp google connect
                Row(
                  children: [
                    Image.asset('assets/images/google.png', height: 60,),
                    SizedBox(width: 160,),
                    FlatButton(onPressed: (){
                      launch(google);
                    }, color: Colors.green, child:Text("Connect",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ) )
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
