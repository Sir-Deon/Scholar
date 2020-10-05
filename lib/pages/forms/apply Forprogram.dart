import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class Apply extends StatefulWidget {
  @override
  _ApplyState createState() => _ApplyState();
}

class _ApplyState extends State<Apply> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String names, toDate, fromDate, val1, val2, val3, val4;
  static const menuItems = <String>[
    'Software Engineering',
    'Food and Nutrition',
    'Logistics and Transport'
  ];
  final List <DropdownMenuItem<String>> _dropDownMenuItems = menuItems.map(
          (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value)
      )
  ).toList();

  static const campus = <String>[
    'Buea Campus',
  ];
  final List <DropdownMenuItem<String>> _dropDownMenuItemsCampus = campus.map(
          (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value)
      )
  ).toList();

  static const studyMode = <String>[
    'Campus',
    'Online',
    'Hybrid',
    'Distant Learning'
  ];
  final List <DropdownMenuItem<String>> _dropDownMenuItems1 = studyMode.map(
          (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value)
      )
  ).toList();

  static const admission = <String>[
    'Regular',
    'Top Up',
    'Transfer'
  ];
  final List <DropdownMenuItem<String>> _dropDownMenuItemsAdmission = admission.map(
          (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value)
      )
  ).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("Create Qualification"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[

                ListTile(
                  trailing: DropdownButton<String>(
                    value: val1,
                    hint: Text('Select Campus'),
                    onChanged: ((String newValue) {
                      setState((){
                        val1 = newValue;
                      });
                    }),
                    items:_dropDownMenuItemsCampus,
                  ),
                ),
                ListTile(

                  trailing: DropdownButton<String>(
                    value: val2,
                    hint: Text('Select Program'),
                    onChanged: ((String newValue) {
                      setState((){
                        val2 = newValue;
                      });
                    }),
                    items:_dropDownMenuItems,
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.datetime,
                  onChanged: (value){
                    setState(() {
                      fromDate = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Date is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'From date'
                  ),
                ),
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
                      return 'Name is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Profile Name'
                  ),
                ),

                ListTile(

                  trailing: DropdownButton<String>(
                    value: val3,
                    hint: Text('Study Mode'),
                    onChanged: ((String newValue) {
                      setState((){
                        val3 = newValue;
                      });
                    }),
                    items:_dropDownMenuItems1,
                  ),
                ),


                ListTile(
                  trailing: DropdownButton<String>(
                    value: val4,
                    hint: Text('Admission Type'),
                    onChanged: ((String newValue) {
                      setState((){
                        val4 = newValue;
                      });
                    }),
                    items:_dropDownMenuItemsAdmission,
                  ),
                ),


                TextFormField(
                  keyboardType: TextInputType.datetime,
                  onChanged: (value){
                    setState(() {
                      fromDate = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Expected Start Date is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Expected Start Date'
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.datetime,
                  onChanged: (value){
                    setState(() {
                      toDate = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Expected End Date is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Expected End Date'
                  ),
                ),



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
    );;
  }
}
