import 'package:flutter/material.dart';
import 'package:care_blocks/home.dart';
import 'package:care_blocks/patient/login.dart';
import 'package:care_blocks/patient/signup.dart';
import 'package:care_blocks/patient/patient_profile.dart';
import 'package:care_blocks/patient/survices.dart';
import 'package:care_blocks/patient/qr_code.dart';
import 'package:care_blocks/doctor/doctor_login.dart';
import 'package:care_blocks/doctor/doctor_profile.dart';
import 'package:care_blocks/patient/myModel.dart';
import 'package:care_blocks/doctor/qr_scanner.dart';

void main() async {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new Home(),
        '/login': (BuildContext context) => new Login(),
        '/signup': (BuildContext context) => new SignUp(),
        '/patient_profile': (BuildContext context) => new Profile(),
        '/survices': (BuildContext context) => new Services(),
        '/qr_code': (BuildContext context) => new QR(),
        '/DoctorLogin': (BuildContext context) => new DoctorLogin(),
        '/DoctorProfile': (BuildContext context) => new DoctorProfile(),
      },
      home: new Home(),
    );
  }
}
