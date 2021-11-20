// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';
import 'login.dart';

//RUNAPP IS MAIN FUNCTION FROM `PACKAGE:FLUTTER/MATERIAL.DART' TO RUN (MYAPP).
void main() {
  runApp(const MyApp());
}

//THE CLASS THAT DEFINES `MYAPP` WHICH EXTENDS STATELESS WIDGET (TELLS WIDGET WHAT TO LOOK LIKE / PLACE / ADD)
class MyApp extends StatelessWidget {
  //MyApp take the functionality and alters it slightly from the PARENT CLASS `StatelessWidget`
  //statelesswidget do not change interactions with device
  const MyApp({Key? key}) : super(key: key);
//This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //the widget(MyHomePage) to render for home page/body
      home: LoginPage(),
    );
  }
}

