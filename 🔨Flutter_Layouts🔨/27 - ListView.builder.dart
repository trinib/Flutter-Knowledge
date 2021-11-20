// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  ////a variable to access to another page
  static const routeName = "second_page";

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ),
      ////a listview wrapped in a container(its like a column for listile)
      //// need to wrap ListView in a column to add button
      body: SingleChildScrollView(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  number = number + 1;
                });
              },
              child: Text("Add Tiles"),
            ),
            ListView.builder(
              ////to scroll page
              physics: ScrollPhysics(parent: null),
              ////need to use shrinkwrap cause column and listview have infinite height
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  //// use index to rebuild each item color in list
                  color: index.isEven ? Colors.blue : Colors.brown,
                  child: ListTile(
                    trailing: Icon(Icons.device_hub),
                    title: Text("tiles"),
                    subtitle: Text("subtitle"),
                    leading: Icon(Icons.local_activity),
                  ),
                );
              },
              itemCount: number,
            ),
          ],
        ),
      ),
    );
  }
}
