import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';


class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email, password;
  
  
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

  Widget _send() {
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
            },
            child: Text(
              "Continue",
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

@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Forgot Password'),
          centerTitle: true,
          backgroundColor: mainColor,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 80),
                  Form(
                      key: _formKey,
                      child: Container(
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text('Recover Password',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height/30,
                                ),
                              ),
                              _buildEmailRow(),
                              SizedBox(height: 10),
                              _send()
                            ],
                          ),
                        ),
                      )
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
