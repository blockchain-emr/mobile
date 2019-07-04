import 'package:flutter/material.dart';
import 'package:care_blocks/patient/login.dart';
import 'package:care_blocks/doctor/doctor_login.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyHome();
  }
}

class MyHome extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Care Blocks",
      home: new Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        appBar: new AppBar(
          backgroundColor: Color.fromRGBO(101, 180, 206, 1.0),
          title: new Text(
            "CAREBLOCKS",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    new Container(
                      child: Image.asset(
                        'images/home.jpg',
                        fit: BoxFit.cover,
//                        width: 370.0,
                        height: 600,
                        alignment: Alignment.center,
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 0.0),
                      child: Text(
                        "Hello",
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(101, 180, 206, 1.0),
                        ),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(20.0, 80.0, 0.0, 0.0),
                      child: Text(
                        "There",
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(101, 180, 206, 1.0),
                        ),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(225.0, 80.0, 0.0, 0.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(101, 180, 206, 1.0),
                        ),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(120.0, 240.0, 0.0, 0.0),
                      child: Text(
                        "Enter As !",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(101, 180, 206, 1.0),
                        ),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(15.0, 300.0, 15.0, 0.0),
                      child: Container(
                        height: 60.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(40.0),
                          shadowColor: Color.fromRGBO(101, 180, 206, 1.0),
                          color: Color.fromRGBO(101, 180, 206, 1.0),
                          elevation: 7.0,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/login');
                            },
                            child: Center(
                              child: Text(
                                "Patient",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(180.0, 370.0, 15.0, 0.0),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromRGBO(101, 180, 206, 1.0),
                        ),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(15.0, 410.0, 15.0, 0.0),
                      child: Container(
                        height: 60.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(40.0),
                          shadowColor: Color.fromRGBO(101, 180, 206, 1.0),
                          color: Color.fromRGBO(101, 180, 206, 1.0),
                          elevation: 7.0,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/DoctorLogin');
                            },
                            child: Center(
                              child: Text(
                                "Doctor",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
