import 'package:flutter/material.dart';

//runApp is main function from `package:flutter/material.dart' to run (MyApp).
void main() {
  runApp(const MyApp());
}

//the class that defines `MyApp` which extends stateless widget (tells widget what to look like / place / add)
class MyApp extends StatelessWidget {
  //(MyApp take the functionality and alters it slightly from the PARENT CLASS `StatelessWidget`)
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
      home:
          const MyHomePage(), //the widget(MyHomePage) to render for home page/body
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //a build method that tell the widget what to display
    return Scaffold(
        appBar: AppBar(title: Text('brandon')),
        body: TextInputWidget() //to use STATEFUL WIDGET (TextInptWiget) in body
        );
  }
}

//A Stateful widget called TextInputWidget
//this 1st class is for contstructor arguments to setup and overide state
class TextInputWidget extends StatefulWidget {
  const TextInputWidget({Key? key}) : super(key: key);

  @override
  _TextInputWidgetState createState() =>
      _TextInputWidgetState(); //this line is a method to return the instance of the TextInputWidgetState using `=>` syntax
}

//this 2nd class handles state & rendering build menthods
class _TextInputWidgetState extends State<TextInputWidget> {
//an object connected to TextField `controller parameter` to access its values&modify the contents using `controller`
  final controller = TextEditingController();
  String text = ""; //this will store the text to display in `Text` Widget

  @override

//A method to refresh and update `text field` widget
//this dipose (clean up when fishing using) wiget to dispose `controller`
  void dispose() {
    super.dispose();
    controller.dispose(); //calling controller from the parent dispose
  }

  //This function modifies string text (line 55)
  void changeText(text) {
    //clear the word `hello` text with emply field
    if (text == "hello") {
      controller.clear();
      text = "";
    }

    setState(() {
      //wrapped with a special method that force refresh&updates `Column` Widget
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
//Defining line 57 with `return method`. The parameters decoration&prefixIcon etc are widgets
    return Column(children: <Widget>[
//First child of `column children`
      TextField(
        controller: //a parameter that is equal to `final controller` to access the value of this field
            this.controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.message), labelText: "Type A message:"),
        onChanged: (text) => this.changeText(
            text), //a parameter that calls `changeText` function to update text
      ),
      Text(this.text) //second child
    ]);
  }
}
