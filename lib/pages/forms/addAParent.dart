import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class AddAParent extends StatefulWidget {
  @override
  _AddAParentState createState() => _AddAParentState();
}

class _AddAParentState extends State<AddAParent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String names, relation, education, occupation, address, nationality, state, city, phone, mobile, email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("Add A Parent"),
        centerTitle: true,
      ),
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
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      relation = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Relation is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Relation'
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  onChanged: (value){
                    setState(() {
                      education = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Education is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Education'
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      occupation = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Occupation is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Occupation'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      address = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Address is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Address'
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
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Nationality is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Nationality'
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
                  validator: (String value){
                    if(value.isEmpty){
                      return 'State/Region is Required';
                      // ignore: missing_return
                    }
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
                  validator: (String value){
                    if(value.isEmpty){
                      return 'City is Required';
                      // ignore: missing_return
                    }
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
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Phone is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Phone'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      mobile = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Mobile is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Mobile'
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

                SizedBox(height: 10),
                FlatButton(onPressed: (){
                  if(!_formKey.currentState.validate()){
                    return;
                  }
                  _formKey.currentState.save();
                }, child: Text("Save",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ), color: Colors.green,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
