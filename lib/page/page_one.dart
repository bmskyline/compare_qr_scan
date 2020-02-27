import 'package:flutter/material.dart';
import 'package:qr_mobile_vision/qr_camera.dart';

//QR mobile vision
class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  String barcode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Libraby 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 300.0,
            child: QrCamera(
              qrCodeCallback: (code) {
                setState(() {
                  barcode = code;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 64.0),
            child: Text(barcode),
          )
        ],
      ),
    );
  }
}