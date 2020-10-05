import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';
import 'package:dropdownfield/dropdownfield.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email, password, val1;



  Widget _buildEmailRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value){
          setState(() {
            email = value;
          },
          );
        },
        validator: (String value){
          if(value.isEmpty){
            return 'Email is Requid';
            // ignore: missing_return
          }
        },
        decoration: InputDecoration(
            prefix: Icon(Icons.email, color: mainColor),
            labelText: 'E-mail'
        ),

      ),

    );
  }

  Widget _buildUserNameRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value){
          setState(() {
            email = value;
          },
          );
        },
        validator: (String value){
          if(value.isEmpty){
            return 'Username is Requid';
            // ignore: missing_return
          }
        },
        decoration: InputDecoration(
            prefix: Icon(Icons.account_circle, color: mainColor,
            ),
            labelText: 'Username'
        ),

      ),

    );
  }
  Widget _buildPasswordRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value){
          setState(() {
            email = value;
          },
          );
        },
        validator: (String value){
          if(value.isEmpty){
            return 'Password is Requid';
            // ignore: missing_return
          }
        },
        decoration: InputDecoration(
            prefix: Icon(Icons.lock, color: mainColor,
            ),
            labelText: 'Password'
        ),

      ),

    );
  }
  Widget _buildSignupButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 7),
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: mainColor,

            onPressed: () {
              if(!_formKey.currentState.validate()){
                return;
              };
              _formKey.currentState.save();
              Navigator.pushReplacementNamed(context, '/app');
            },
            child: Text(
              "Sign UP",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  static const campus = <String>[
    'Buea Campus',
  ];
  final List <DropdownMenuItem<String>> _dropDownMenuItemsCampus = campus.map(
          (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value)
      )
  ).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: mainColor,
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(

                  key: _formKey,
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
                      _buildEmailRow(),
                      _buildUserNameRow(),
                      _buildPasswordRow(),
                      SizedBox(height: 10),
                      _buildSignupButton(),
                      FlatButton(
                        onPressed: (){
                          Navigator.popAndPushNamed(context, '/login');
                        },
                        child: Text('Already registered? Sign In!',
                          style: TextStyle(
                            color: mainColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ]
      ),
    );
  }
}
