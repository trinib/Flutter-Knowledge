import 'package:flutter/material.dart';

void main() {
  // runapp starts application
  // MyApp is a class thats needs to be created
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Brandon"),
        ),
      ),
    );
  }
}
