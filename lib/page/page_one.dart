import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);


  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Libraby 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}