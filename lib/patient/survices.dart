import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ServiceState();
  }
}

class _ServiceState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child:Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(101, 180, 206, 1.0),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 2.0,

            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Text(
                    'ISSUES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'ALLEGRIES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'MEDICATION',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'PRE APPOINTMENT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'LAB RRESULTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
