import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';


class AddDocument extends StatefulWidget {
  @override
  _AddDocumentState createState() => _AddDocumentState();
}

class _AddDocumentState extends State<AddDocument> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String title, document;
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
        title: Text("New Document"),
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
                      title = value;
                    },
                    );
                  },
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Document Title is Required';
                      // ignore: missing_return
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Document Title'
                  ),
                ),

                ListTile(
                  title: Text('Select Program:'),
                  trailing: DropdownButton<String>(
                    value: document,
                    hint: Text('Choose'),
                    onChanged: ((String newValue) {
                      setState((){
                        document = newValue;
                      });
                    }),
                    items:_dropDownMenuItems,
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
