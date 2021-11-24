// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static const routeName = "secondpage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("second spage"),
      ),
      body: Center(
        child: GridView.extent(
          primary: false,
          padding: const EdgeInsets.only(left: 100),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 200.0,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('First', style: TextStyle(fontSize: 20)),
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Second', style: TextStyle(fontSize: 20)),
              color: Colors.blue,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Third', style: TextStyle(fontSize: 20)),
              color: Colors.blue,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Four', style: TextStyle(fontSize: 20)),
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Fifth', style: TextStyle(fontSize: 20)),
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Six', style: TextStyle(fontSize: 20)),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
