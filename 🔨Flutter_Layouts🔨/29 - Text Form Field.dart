// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  ////a variable to access to another page
  static const routeName = "third_page";

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  //// a Controller to get information from user and display it on screen
  final TextEditingController callcontroller = TextEditingController();
  //// a variable to display text in containers
  String userInput = "no input for user";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("third page"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.purple,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    ////trigger for button to display text in pink containerJ
                    userInput = callcontroller.text;
                  });
                },
                child: Text(
                  "Display Value",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          ),
          ////wrapped column in a container or sizebox to adjust size cause its takes all space in column
          Container(),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.orange,
              ////a textfield for user to type on
              child: TextFormField(
                /////controller gets information from user and display it on screen
                ////! need to create a TextEditingController function to call
                controller: callcontroller,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            ////refactor with center widget
            child: Container(
              ////to use all area space
              color: Colors.blue,
              child: Center(
                child: Text(
                  ////show typed text for user
                  userInput,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
