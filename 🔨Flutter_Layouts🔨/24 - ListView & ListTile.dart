// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  ////a variable to access to another page
  static const routeName = "second_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ),
      ////a listview wrapped in a container
      body: ListView(
        children: [
          Container(
            color: Colors.purple,
            child: ListTile(
              title:  Text("my tile"),
              subtitle: Text("subtitle"),
              leading: Icon(Icons.access_alarms_rounded),
              trailing: Icon(Icons.account_balance_rounded),
            ),
          ),
        ],
      ),
    );
  }
}

