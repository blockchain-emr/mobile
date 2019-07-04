import 'package:flutter/material.dart';

class DoctorLogin extends StatefulWidget {
  @override
//  _DoctorLoginState createState() => new _DoctorLoginState();
  State<StatefulWidget> createState() {
    return _DoctorLoginState();
  }
}

class _DoctorLoginState extends State<DoctorLogin> {
  String _email, _pass;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              new Container(
                child: Image.asset(
                  'images/home.jpg',
                  fit: BoxFit.cover,
//                  width: 370.0,
                  height: 780.0,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                child: Form(
                  key: _formKey,
                  child: new Container(
                    padding: EdgeInsets.fromLTRB(10.0, 30.0, 50.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        new Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 110.0, 50.0),
                                      child: Text(
                                        'Hello\nDoctor!',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(
                                              101, 180, 206, 2.0),
                                          fontSize: 55,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Container(
//                    padding: EdgeInsets.fromLTRB(10.0, 175.0, 35.0, 0.0),

                          child: TextFormField(
                            validator: (val) =>
                                !val.contains('@') ? 'Invalid Email.' : null,
                            onSaved: (input) => _email = input,
                            decoration: new InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              icon: Icon(
                                Icons.person,
                                size: 30,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 3.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10),
                          child: TextFormField(
                            validator: (input) {
                              if (input.isEmpty) {
                                return "Please Enter Your Password.";
                              }
                            },
                            onSaved: (input) => _pass = input,
                            decoration: new InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              icon: Icon(
                                Icons.lock,
                                size: 30,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 3.0,
                                ),
                              ),
                            ),
                            obscureText: true,
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.fromLTRB(50.0, 20.0, 0.0, 0.0),
                          height: 70.0,
                          child: new Material(
                            borderRadius: BorderRadius.circular(40.0),
                            shadowColor: Colors.black,
                            color: Color.fromRGBO(101, 180, 206, 1.0),
                            elevation: 7.0,
                            child: FlatButton(
                              onPressed: () {
                                if (signIn() == true) {
                                  Navigator.of(context)
                                      .pushNamed('/DoctorProfile');
                                }
                              },
                              child: Center(
                                //padding: EdgeInsets.only(right: 110,left: 80),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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

  bool signIn() {
    final FormState = _formKey.currentState;
    if (FormState.validate()) {
      return true;
    } else
      return false;
  }
}
