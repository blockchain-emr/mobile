import 'package:flutter/material.dart';
import 'dart:async';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';


class QrScanner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QrScannerState();
  }
}

class QrScannerState extends State<QrScanner> {
  String _barcode = "";
  var get_data='';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'images/QR.png',
                height: 250,
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(70, 0, 70, 20),
                child: new SizedBox(
                  height: 60,
                  child: RaisedButton.icon(
                    label: Text(
                      'SCAN HERE !',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    icon: Icon(
                      Icons.camera,
                      color: Colors.white,
                      size: 40,
                    ),
                    color: Color.fromRGBO(101, 180, 206, 1.0),
                    splashColor: Colors.black,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                    ),
                    onPressed: scan,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  _barcode,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this._barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this._barcode =
          'User did not give permission for the use of the camera!';
        });
      } else {
        setState(() => this._barcode = 'Unknown Error $e');
      }
    } on FormatException {
      setState(() => this._barcode = 'Exite with out Scan QR');
    } catch (e) {
      setState(() => this._barcode = 'Unknown Error : $e');
    }
  }
}

class QrImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage image = AssetImage('images/QR.png');
    Image qr_image = new Image(
      image: image,
      fit: BoxFit.fill,
      width: 600,
      height: 400,
    );
    return new Container(child: qr_image);
  }
}
