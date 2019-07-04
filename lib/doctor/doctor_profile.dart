import 'package:flutter/material.dart';
import 'qr_scanner.dart';
import 'package:english_words/english_words.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class DoctorProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DoctorProfileState();
  }
}

class _DoctorProfileState extends State<DoctorProfile> {
  int _selectedpage = 0;
  final _pageOptions = [
    getListView(),
//    Container(
//     padding: EdgeInsets.fromLTRB(10.0, 430.0, 10.0, 0.0),
//      child: new Material(
//        child: getListView(),
//      )
//    ),
    QrScanner(),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
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
          actions: <Widget>[
            FlatButton(onPressed: () {
              Navigator.of(context).pushNamed('/DoctorLogin');
            },

              child: Text(
                'Sign Out',
                style: TextStyle(
                    fontSize: 15.5,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
        body: _pageOptions[_selectedpage],
        bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedpage,
          onTap: (int index) {
            setState(() {
              _selectedpage = index;
            });
          },
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(
                Icons.person,
                size: 38,
              ),
              title: new Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(
                Icons.add_a_photo,
                size: 30,
              ),
              title: new Text(
                'QR Scanner',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget getListView() {}
