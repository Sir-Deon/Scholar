import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:scholar/statics.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email, password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildLogo(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('SCHOLAR',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height/19,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )
      ],
    );
  }

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
            return 'Email is Required';
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

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () {
              if(!_formKey.currentState.validate()){
                return;
              };
              _formKey.currentState.save();
              Navigator.pushReplacementNamed(context, '/app');
            },
            child: Text(
              "Login",
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
  Widget _buildOrRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Text(
            '- OR -',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }

  Widget _options() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(onPressed: (){
          Navigator.pushNamed(context, '/signup');
        },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Don\'t have an account?'),
                  Text('Sign Up',
                    style: TextStyle(
                      color: mainColor,
                    ),
                  )

    ],
            )),
        FlatButton(onPressed: (){
          Navigator.pushNamed(context, '/forgot');
        }, child: Text(
            'Forgot password?',
            style: TextStyle(
              color: mainColor
            )
        ))

      ],
    );
  }

  Widget _buildContainer(){

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height*0.8,
            width: MediaQuery.of(context).size.width*0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Login',
                        style:  TextStyle(
                          fontSize: MediaQuery.of(context).size.height/20,
                        ),
                      )
                    ],
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        _buildEmailRow(),
                        _buildPasswordRow(),
                        SizedBox(height: 5.0),
                        _buildLoginButton(),
                      ],
                    ),
                  ),

                  _buildOrRow(),
                  _options(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: mainColor,
       elevation: 0,

     ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*0.7,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(70),
                        bottomRight: const Radius.circular(70),
                      )
                  ),
                ),
              ),
              Column(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: <Widget>[
                  _buildLogo(),
                  SizedBox(height: 10),
                  _buildContainer(),

                ],
              )
            ],
          ),
        ],
      )
    );
  }
}
