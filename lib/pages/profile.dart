import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String names, website, location, timeZone, gravatarEmail, bio, email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      names = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Names are Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Full Names'
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value){
                    setState(() {
                      email = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Email is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Email'
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  onChanged: (value){
                    setState(() {
                      website = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Website is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Website'
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      location = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Location is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Location'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      timeZone = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Time Zone is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Time Zone'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      gravatarEmail = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Gravatar Email is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Gravatar Email'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      bio = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Bio is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Bio'
                  ),
                ),

                SizedBox(height: 10),
                FlatButton(onPressed: (){}, child: Text("Save",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ), color: Colors.green,)
              ],
            ),
          ),
        ],
      ),
    );;
  }
}
