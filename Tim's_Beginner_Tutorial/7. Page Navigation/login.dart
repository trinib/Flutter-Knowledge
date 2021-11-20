import 'package:flutter/material.dart';
import 'my_homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('brandon')), body: Body());
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late String name;
  //input field for user to enter text
  TextEditingController controller = new TextEditingController();

//a method for button press
  void click() {
    this.name = controller.text;
    //go to page
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyHomepage(this.name)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: this.controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Type your name:",
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.black)),
                suffixIcon: IconButton(
                  icon: Icon(Icons.send), //icon button
                  splashColor: Colors.green,
                  tooltip: "Submit",
                  onPressed: this.click,
                ),
              ),
            )));
  }
}
