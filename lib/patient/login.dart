import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyLogin();
  }
}

class _MyLogin extends State<Login> {
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
                    padding: EdgeInsets.fromLTRB(10.0, 175.0, 35.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        new Container(
                          child: TextFormField(
                            validator: (val) =>
                                !val.contains('@') ? 'Invalid Email.' : null,
                            onSaved: (input) => _email = input,
                            decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
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
                          padding: EdgeInsets.only(top: 10.0),
                          child: TextFormField(
                            validator: (input) {
                              if (input.isEmpty) {
                                return "please enter your Password";
                              }
                            },
                            onSaved: (input) => _pass = input,
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
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
                          padding: EdgeInsets.fromLTRB(50.0, 25.0, 0.0, 0.0),
                          child: new Material(
                            borderRadius: BorderRadius.circular(40.0),
                            shadowColor: Color.fromRGBO(101, 180, 206, 1.0),
                            color: Color.fromRGBO(101, 180, 206, 1.0),
                            elevation: 7.0,
                            child: FlatButton(
                              onPressed: () {
                                if (signIn() == true) {
                                  Navigator.of(context)
                                      .pushNamed('/patient_profile');
                                }
                              },
                              child: Center(
                                child: Text(
                                  "Login",
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
                        new Container(
                          padding: EdgeInsets.fromLTRB(50.0, 20.0, 0.0, 0.0),
                          child: new Material(
                            borderRadius: BorderRadius.circular(40.0),
                            shadowColor: Color.fromRGBO(101, 180, 206, 1.0),
                            color: Color.fromRGBO(101, 180, 206, 1.0),
                            elevation: 7.0,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/signup');
                              },
                              child: Center(
                                child: Text(
                                  "Sign Up",
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
