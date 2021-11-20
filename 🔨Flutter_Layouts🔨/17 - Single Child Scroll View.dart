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
          ////center text
          centerTitle: true,
          title: Text("Brandon")),
      ////column
      ////! highlight column and refactor to a widget and rename to `SingleChildScrollView` to scroll
      body: SingleChildScrollView(
        child: Column(
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
            ////a container to move/adjust widget
            Container(
              height: 300,
              width: 200,
              color: Colors.purple,
              ////row
              child: Row(
                children: [
                  ////this expression means if my new button is true(REMEMBER myNewbutton=false) else is false(call mytext)
                  Text(myNewButton ? "this is true" : myText),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              ////padding is inside container,
              padding: EdgeInsets.all(0),
              ////margin is outside container
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.pink),
              child: Text(
                "hihi",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
            Image.network(
                "https://www.pngitem.com/pimgs/m/107-1075740_bear-png-cool-cool-bear-clipart-transparent-png.png")
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        ////color
        color: Colors.green,
        ////button
        child: IconButton(
          onPressed: () {
            print("hi");
          },
          ////home icon
          icon: Icon(Icons.home_filled),
        ),
      ),
    ));
  }
}
