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
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      ///APPBAR (TOP WIDGET)
      appBar: AppBar(

          ///center text
          centerTitle: true,
          title: Text("Brandon")),

      ///COLUMN with a 'row' nested inside
      body: Column(
        mainAxisAlignment:

            ///if number is equal to zero then keep position (start) or if number is equal to 1 center else move to end
            //! '0' = start || '1' = center || '?' = "then" || ':' = "else"
            number == 0
                ? MainAxisAlignment.start
                : number == 1
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///a ROW nested in a column
          Row(
            ///if number is equal to zero then keep position (start) or if number is equal to 1 center else move to end
            mainAxisAlignment:

                ///if number is equal to zero then keep position (start) or if number is equal to 1 center else move to end
                number == 0
                    ? MainAxisAlignment.start
                    : number == 1
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (number == 2) {
                        number = 0;
                      } else {
                        number = number + 1;
                      }
                    });
                  },
                  child: Text("Press"))
            ],
          )
        ],
      ),

      /// BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomAppBar(
        ///color
        color: Colors.green,

        ///button
        child: IconButton(
          onPressed: () {
            print("hi");
          },

          ///HOME ICON
          icon: Icon(Icons.home_filled),
        ),
      ),
    ));
  }
}
