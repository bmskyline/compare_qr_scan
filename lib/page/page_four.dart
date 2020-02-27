import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class PageFour extends StatefulWidget {
  PageFour({Key key}) : super(key: key);

  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {

  String barcode = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Libraby 4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                onPressed: () => startBarcodeScanStream(),
                child: Text("Start barcode scan stream")),
            Text(barcode,
                style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }

  startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
        "#ff6666", "Cancel", true, ScanMode.BARCODE)
        .listen((code) => setState(() {
          barcode = code;
    }));
  }
}