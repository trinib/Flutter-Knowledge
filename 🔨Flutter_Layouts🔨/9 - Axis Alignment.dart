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
      ///top widget
      appBar: AppBar(

          ///center text
          centerTitle: true,
          title: Text("Brandon")),
          ///column
      body: Column(
        ///horizontal
        crossAxisAlignment: CrossAxisAlignment.center,
        ///vertical
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("my body"),
          Text("my body"),
          Text("my body"),
          Text("my body"),
          ///a container to move/adjust widget
          Container(
            height: 100,
            ///row
            child: Row(
              ///horizontal
              mainAxisAlignment: MainAxisAlignment.center,
              ///vertical
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("my body"),
                Text("my body"),
                Text("my body"),
              ],
            ),
          ),
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
          ///home icon
          icon: Icon(Icons.home_filled),
        ),
      ),
    ));
  }
}
