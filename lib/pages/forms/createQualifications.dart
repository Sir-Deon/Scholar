import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class CreateQualification extends StatefulWidget {
  @override
  _CreateQualificationState createState() => _CreateQualificationState();
}

class _CreateQualificationState extends State<CreateQualification> {
  String institution, toDate, fromDate, qualification, val1, val2;
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

  static const menuItems1 = <String>[
    'Higher National Diploma (HND)',
    'Bachelors Degree',
    'Masters Degree',
  ];
  final List <DropdownMenuItem<String>> _dropDownMenuItems1 = menuItems1.map(
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
                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    setState(() {
                      institution = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Institution is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Institution'
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
                      toDate = value;
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
                      labelText: 'To Date'
                  ),
                ),

                SizedBox(height: 10),

                ListTile(
                  title: Text('Select Program:'),
                  trailing: DropdownButton<String>(
                    value: val1,
                    hint: Text('Select Program'),
                    onChanged: ((String newValue) {
                      setState((){
                        val1 = newValue;
                      });
                    }),
                    items:_dropDownMenuItems,
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
                    items:_dropDownMenuItems1,
                  ),
                ),
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
    );
  }
}
