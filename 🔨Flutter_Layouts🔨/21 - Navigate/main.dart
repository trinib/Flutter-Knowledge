// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'second_page.dart';

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
      home: MyScaffoldApp(),
      routes: {SecondPage.routeName: (_) => SecondPage()},
    );
  }
}

////a new class to separate scaffold from materialapp
class MyScaffoldApp extends StatefulWidget {
  @override
  _MyScaffoldAppState createState() => _MyScaffoldAppState();
}

class _MyScaffoldAppState extends State<MyScaffoldApp> {
  ////need to create a bool for press(true) and unpress(false)
  bool myNewButton = false;
  String myText = "hello this is false";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ////button to secondpage
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SecondPage.routeName);
              },
              child: Text("My Button"),
            ),
            Image.network(
                "https://www.pngitem.com/pimgs/m/107-1075740_bear-png-cool-cool-bear-clipart-transparent-png.png"),
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
    );
  }
}
