import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QR extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QRState();
  }
}

class _QRState extends State<QR> {
  Future<String> _barCodeString;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Scan Me !',
                style: TextStyle(
                    color: Color.fromRGBO(101, 180, 206, 1.0), fontSize: 24 , fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              QrImage(
                data: '123456789',
                foregroundColor: Colors.black,
                size: 300.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
