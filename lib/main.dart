// importing Packeges
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:scholar/pages/app.dart';
import 'package:scholar/pages/forgotpassword.dart';
import 'package:scholar/pages/forms/addAParent.dart';
import 'package:scholar/pages/forms/addDocument.dart';
import 'package:scholar/pages/forms/apply%20Forprogram.dart';
import 'package:scholar/pages/forms/createQualifications.dart';
import 'package:scholar/pages/forms/createWork.dart';
import 'package:scholar/pages/forms/contactDetails.dart';
import 'package:scholar/pages/forms/done.dart';
import 'package:scholar/pages/forms/newProfile.dart';
import 'package:scholar/pages/forms/parentDetails.dart';
import 'package:scholar/pages/intro.dart';
import 'package:scholar/pages/loading.dart';
import 'package:scholar/pages/login.dart';
import 'package:scholar/pages/screens/payment.dart';
import 'package:scholar/pages/settings.dart';
import 'package:scholar/pages/signUp.dart';
import 'package:scholar/statics.dart';



void main() => runApp(MaterialApp(
  // Setting Up Routes
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/app': (context) => App(),
    '/intro': (context) => Introduction(),
    '/login': (context) => Login(),
    '/signup': (context) => SignUp(),
    '/forgot': (context) => ForgotPassword(),
    '/pay': (context) => Payment(),
    '/work': (context) => CreateWorkExperience(),
    '/qualification': (context) => CreateQualification(),
    '/addParent': (context) => AddAParent(),
    '/addDocument': (context) => AddDocument(),
    '/apply': (context) => Apply(),
    '/settings': (context) => Settings(),
    '/newProfile': (context) => NewProfile(),
    '/contactDetails': (context) => ContactDetails(),
    '/parentDetails': (context) => ParentDetails(),
    '/saveDetails': (context) => Done(),


  },
),);


