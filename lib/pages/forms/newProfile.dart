import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class NewProfile extends StatefulWidget {
  @override
  _NewProfileState createState() => _NewProfileState();
}

class _NewProfileState extends State<NewProfile> {
  String title, firstName, middleName, lastName, gender, dateOfBirth, birthPlace, nationality, bloodGroup, motherTongue, religion,
  currentQualification;
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
          Padding(padding: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Text("Personal Information",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      title = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Profile Title'
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      firstName = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'First Name'
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  onChanged: (value){
                    setState(() {
                      middleName = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Middle Name'
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      lastName = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Last Name'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      gender = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Gender'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      nationality = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Nationality'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.datetime,
                  onChanged: (value){
                    setState(() {
                      dateOfBirth = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Date of Birth'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      bloodGroup= value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Blood Group'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      motherTongue = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Mother Tongue'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      religion = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Religion'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      currentQualification = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Current Qualification'
                  ),
                ),

                SizedBox(height: 10),
                FlatButton(onPressed: (){
                  Navigator.pushNamed(context, '/contactDetails');
                }, child: Text("Forward",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ), color: Colors.grey,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
