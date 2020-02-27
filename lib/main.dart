import 'package:flutter/material.dart';
import 'package:test_scan/page/page_four.dart';
import 'package:test_scan/page/page_one.dart';
import 'package:test_scan/page/page_three.dart';
import 'package:test_scan/page/page_two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compare QR code Scanner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Compare QR code Scanner'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: _onPressOne(),
              child: Text("Library 1"),
            ),
            RaisedButton(
              onPressed: _onPressTwo(),
              child: Text("Library 2"),
            ),
            RaisedButton(
              onPressed: _onPressThree(),
              child: Text("Library 3"),
            ),
            RaisedButton(
              onPressed: _onPressFour(),
              child: Text("Library 4"),
            ),
          ],
        ),
      ),
    );
  }

  _onPressOne() {
    //QR mobile vision
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PageOne()),
    );
  }
  _onPressTwo() {
    //Barcode scan
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PageTwo()),
    );
  }

  _onPressThree() {
    //QRcode scanner
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PageThree()),
    );
  }

  _onPressFour() {
    //flutter barcode
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PageFour()),
    );
  }
}

