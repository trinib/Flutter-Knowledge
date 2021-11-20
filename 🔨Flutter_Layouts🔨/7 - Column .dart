// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  ///runapp starts application
  ///MyApp is a class thats needs to be created
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

          ///center text
          centerTitle: true,
          title: Text("Brandon")),
      body: Column(
        children: [
          Text("my body"),
          Text("my body"),
          Text("my body"),
          Text("my body"),
          Text("my body"),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        ///color
        color: Colors.green,

        ///button
        child: IconButton(
          onPressed: () {
            print("hi");
          },
          icon: Icon(Icons.home_filled),
        ),
      ),
    ));
  }
}
