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
  ///need to create a bool for press(true) and unpress(false)
  bool myNewButton = false;
  String myText = "hello this is false";
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
        children: [
          ///button
          ElevatedButton(
            onPressed: () {
              setState(() {
                ///currently false & when pressed it will be equal to true
                myNewButton = !myNewButton;
              });
            },
            child: Text("My Button"),
          ),

          ///a container to move/adjust widget
          Container(
            height: 100,

            ///row
            child: Row(
              ////horizontal
              mainAxisAlignment: MainAxisAlignment.center,

              ///vertical
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ///this expression means if my new button is true(REMEMBER myNewbutton=false) else is false(call mytext)
                Text(myNewButton ? "this is true" : myText),
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
