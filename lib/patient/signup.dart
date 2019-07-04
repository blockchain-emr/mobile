import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySign();
  }
}

class MySign extends State<SignUp> {
  String _email, _pass, _uname, _name, _phone;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    padding: EdgeInsets.fromLTRB(10.0, 5.0, 35.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        new Container(
                          child: TextFormField(
                            validator: (input) {
                              if (input.isEmpty) {
                                return "please enter your Name";
                              }
                            },
                            onSaved: (input) => _name = input,
                            decoration: InputDecoration(
                              labelText: "Full Name",
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18),
                              icon: Icon(
                                Icons.edit,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Column(
                            children: <Widget>[
                              new Container(
                                child: TextFormField(
                                  validator: (val) => !val.contains('@')
                                      ? 'Invalid Email'
                                      : null,
                                  onSaved: (input) => _email = input,
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 19.0,
                                    ),
                                    icon: Icon(
                                      Icons.mail_outline,
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                              ),
                              new Container(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Column(
                                  children: <Widget>[
                                    new Container(
                                      child: TextFormField(
                                        validator: (input) {
                                          if (input.isEmpty) {
                                            return "please enter your your Phone";
                                          }
                                        },
                                        onSaved: (input) => _phone = input,
                                        decoration: InputDecoration(
                                            labelText: "Phone",
                                            labelStyle: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            icon: Icon(
                                              Icons.phone_iphone,
                                              size: 30,
                                            )),
                                      ),
                                    ),
                                    new Container(
                                      padding: EdgeInsets.only(top: 10.0),
                                      child: Column(
                                        children: <Widget>[
                                          new Container(
                                            child: TextFormField(
                                              validator: (input) {
                                                if (input.isEmpty) {
                                                  return "please enter your User Name";
                                                }
                                              },
                                              onSaved: (input) =>
                                                  _uname = input,
                                              decoration: InputDecoration(
                                                labelText: "USER NAME",
                                                labelStyle: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 17,
                                                ),
                                                icon: Icon(
                                                  Icons.person_outline,
                                                  size: 30,
                                                ),
                                              ),
                                            ),
                                          ),
                                          new Container(
                                            padding: EdgeInsets.only(top: 10.0),
                                            child: TextFormField(
                                              validator: (input) {
                                                if (input.isEmpty) {
                                                  return "please enter your Password";
                                                }
                                              },
                                              onSaved: (input) => _pass = input,
                                              decoration: InputDecoration(
                                                labelText: "PASSWORD",
                                                labelStyle: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 17,
                                                ),
                                                icon: Icon(
                                                  Icons.lock_outline,
                                                  size: 30,
                                                ),
                                              ),
                                              obscureText: true,
                                            ),
                                          ),
                                          new Container(
                                            padding: EdgeInsets.fromLTRB(
                                                50.0, 20.0, 0.0, 0.0),
                                            child: new Material(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                              shadowColor: Color.fromRGBO(
                                                  101, 180, 206, 1.0),
                                              color: Color.fromRGBO(
                                                  101, 180, 206, 1.0),
                                              elevation: 7.0,
                                              child: FlatButton(
                                                onPressed: () {
                                                  if (signUp() == true) {
                                                    Navigator.of(context)
                                                        .pushNamed(
                                                            '/patient_profile');
                                                  }
                                                },
                                                child: Center(
                                                  child: Text(
                                                    "Sign Up",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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

  bool signUp() {
    final FormState = _formKey.currentState;
    if (FormState.validate()) {
      return true;
    } else
      return false;
  }
}
