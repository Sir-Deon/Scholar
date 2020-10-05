import 'package:flutter/material.dart';
import 'package:scholar/statics.dart';


class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  BoxDecoration myDecoration(){
    return BoxDecoration(
      border: Border.all(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(10.0),

    );
  }
  String number, name;
  Widget _buildMtnPayments(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: myDecoration(),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/mtn.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (value){
                      setState(() {
                        number = value;
                      },
                      );
                    },
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Number is Required';
                      }
                      return value;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        prefix: Icon(Icons.phone_android, color: mainColor),
                        labelText: 'Phone Number'
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: (value){
                      setState(() {
                        name = value;
                      },
                      );
                    },
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Name is Required';
                      }
                      return value;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        prefix: Icon(Icons.phone_android, color: mainColor),
                        labelText: 'Receiver Name'
                    ),
                  ),
                  FlatButton.icon(
                    color: Colors.red,
                    onPressed: (){},
                    icon: Icon(Icons.monetization_on, color: Colors.white,),
                    label: Text("Pay Now",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrangePayments(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: myDecoration(),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/orange.jpeg'),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (value){
                        setState(() {
                          number = value;
                        },
                        );
                      },
                      validator: (String value){
                        if(value.isEmpty){
                          return 'Number is Required';
                        }

                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          prefix: Icon(Icons.phone_android, color: mainColor),
                          labelText: 'Phone Number'
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onChanged: (value){
                        setState(() {
                          name = value;
                        },
                        );
                      },
                      validator: (String value){
                        if(value.isEmpty){
                          return 'Name is Required';
                        }

                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          prefix: Icon(Icons.phone_android, color: mainColor),
                          labelText: 'Receiver Name'
                      ),
                    ),
                    FlatButton.icon(
                      color: Colors.red,
                      onPressed: (){},
                      icon: Icon(Icons.monetization_on, color: Colors.white,),
                      label: Text("Pay Now",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("Pey Fees"),
        centerTitle: true,
      ),
      body: ListView(
       children: <Widget>[
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("A message will be sent to you and you will be prompted to confirm transaction",
           style: TextStyle(
             color: Colors.green,
           ),
           ),
         ),
         _buildMtnPayments(),
         _buildOrangePayments()
       ],
      ),
    );
  }
}
