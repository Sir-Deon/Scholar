import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class ContactDetails extends StatefulWidget {
  @override
  _ContactDetailsState createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  String presentAddress, permanentAddress, country, state, city, phone, mobile, email;
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
                Text("Contact Details",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      presentAddress = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Present Address'
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      permanentAddress = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Permanent Address'
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  onChanged: (value){
                    setState(() {
                      country = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Country'
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      state = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'State/Region'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      city = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'City'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      phone = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Phone (Include Zip Code)'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.datetime,
                  onChanged: (value){
                    setState(() {
                      mobile = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Mobile (Inclued Zip Code)'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      email = value;
                    },
                    );
                  },

                  decoration: InputDecoration(
                      labelText: 'Personal Email'
                  ),
                ),


                SizedBox(height: 10),
               Row(
                 children: [
                   FlatButton(onPressed: (){
                     Navigator.pushReplacementNamed(context, '/newProfile');
                   }, child: Text("Previous",
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ), color: Colors.grey,),
                   SizedBox(width: 150,),
                   FlatButton(onPressed: (){
                     Navigator.pushNamed(context, '/parentDetails');
                   }, child: Text("Next",
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ), color: Colors.grey,)
                 ],
               )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
