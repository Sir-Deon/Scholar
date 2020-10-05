import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';

class CreateWorkExperience extends StatefulWidget {
  @override
  _CreateWorkExperienceState createState() => _CreateWorkExperienceState();
}

class _CreateWorkExperienceState extends State<CreateWorkExperience> {
  String company, role, toDate, fromDate, description, val;
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("Create Work Experience"),
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
              company = value;
            },
            );
          },
          validator: (String value){
            if(value.isEmpty){
              return 'Company is Required';
              // ignore: missing_return
            }
          },
          decoration: InputDecoration(
              labelText: 'Company'
          ),
          ),
              TextFormField(
                keyboardType: TextInputType.text,
                onChanged: (value){
                  setState(() {
                    role = value;
                  },
                  );
                },
                validator: (String value){
                  if(value.isEmpty){
                    return 'Role is Required';
                    // ignore: missing_return
                  }
                },
                decoration: InputDecoration(
                    labelText: 'Role'
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
             TextFormField(
               maxLines: 10,
               decoration: InputDecoration(
                   labelText: 'Work Description',
                   focusColor: mainColor,
               ),
             ),
              SizedBox(height: 10),
              Text("What Acedmic Program best describes this work experience?"),
              ListTile(
                title: Text('Select Program:'),
                trailing: DropdownButton<String>(
                  value: val,
                  hint: Text('Choose'),
                  onChanged: ((String newValue) {
                    setState((){
                      val = newValue;
                    });
                  }),
                  items:_dropDownMenuItems,
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
