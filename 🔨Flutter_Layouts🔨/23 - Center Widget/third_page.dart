// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  ////a variable to access to another page
  static const routeName = "third_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("third page"),
      ),
    );
  }
}
