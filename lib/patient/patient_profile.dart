import 'package:flutter/material.dart';
import 'package:care_blocks/home.dart';
import 'package:care_blocks/patient/survices.dart';
import 'package:care_blocks/patient/qr_code.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  final String url = "https://raw.githubusercontent.com/nitishk72/flutter_json_list/master/json_example.json";

  static List data;

  Future<String> getData() async{
    http.Response response = await http.get(
        Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),
        headers: {
          'Accept':'Application/json'
        }
    );
    setState(() {
      data = json.decode(response.body);
    });
    return 'success';
  }

  void initState(){
    this.getData();
  }


  int _selectedPage = 0;
  final _pageOption = [
    Container(
      child: Scaffold(
          body:new ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context,int index){
              return Text(
                  "${data[index]['title']}"
              );
            },
          )
      ),
    ),
    Services(),
    QR(),
  ];


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(101, 180, 206, 1.0),
            title: new Text(
              "CAREBLOCKS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            actions: <Widget>[
              FlatButton(onPressed: () {
                Navigator.of(context).pushNamed('/login');
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
          body: _pageOption[_selectedPage],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedPage,
            items: [
              new BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                title: Text(
                  "Profile",
                ),
              ),
              new BottomNavigationBarItem(
                  icon: Icon(Icons.data_usage),
                  title: Text(
                    "Services",
                  )),
              new BottomNavigationBarItem(
                  icon: Icon(Icons.view_quilt),
                  title: Text(
                    "QR",
                  ))
            ],
            onTap: (int index) {
              setState(() {
                _selectedPage = index;
              });
            },
            type: BottomNavigationBarType.fixed,
          ),
        ));
  }
}