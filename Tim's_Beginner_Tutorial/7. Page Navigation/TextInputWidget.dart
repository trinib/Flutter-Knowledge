import 'package:flutter/material.dart';

//A STATEFUL WIDGET CALLED TEXTINPUTWIDGET
////this 1st class is for contstructor arguments to setup and overide state
class TextInputWidget extends StatefulWidget {
//a constructor argument that takes one parameter (the changeText method to use as a callback)
  final Function(String)
      callback; //this is a property(a callback) which a function takes a string as one of the arguments

//a constructor to define what callback is. this needs to be passed to `TextInputWidget` from build method
  TextInputWidget(this.callback);

  @override
  //this line is a method to return the instance of the TextInputWidgetState using `=>` syntax
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

//this 2nd class handles state & rendering build menthods
class _TextInputWidgetState extends State<TextInputWidget> {
//an object connected to TextField `controller parameter` to access its values&modify the contents using `controller`
  final controller = TextEditingController();

  @override

//A method to refresh and update `text field` widget
//this dipose (clean up when fishing using) wiget to dispose `controller`
  void dispose() {
    super.dispose();
    controller.dispose(); //calling controller from the parent dispose
  }

//a method to call the callback defined in 1st class
  void click() {
    widget.callback(controller.text); //to call the callback function
    controller.clear(); //clear text after sending message
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
//DEFINING WITH `RETURN METHOD` TO ADD STUFF. THE PARAMETERS DECORATION&PREFIXICON ETC ARE WIDGETS
    return TextField(
        //a parameter that is equal to `final controller` to access the value of this field
        controller: this.controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.message),
            labelText: "Type A message:",
            suffixIcon: IconButton(
              icon: Icon(Icons.send), //icon button
              splashColor: Colors.green,
              tooltip: "me me",
              onPressed: this.click,
            )));
  }
}

