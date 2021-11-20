
// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';

//runApp is main function from `package:flutter/material.dart' to run (MyApp).
void main() {
  runApp(const MyApp());
}

class Post {
  //Attributes
  String body;
  String author;
  int likes = 0;
  bool userLiked = false;
  //passing body and author
  Post(this.body, this.author);

//a method to be run when user likes post (add 1 if like or already liked & subtract already liked)
  void likePost() {
    this.userLiked = !this
        .userLiked; //reverse user likes(if false and call it will be true &viseversa)
    if (this.userLiked) {
      this.likes += 1; // if true add 1 to user likes
    } else {
      this.likes -= 1; //if not true minus 1
    }
  }
}

//the class that defines `MyApp` which extends stateless widget (tells widget what to look like / place / add)
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
      home:
          const MyHomepage(), //the widget(MyHomePage) to render for home page/body
    );
  }
}

//a statefull widget for myhomepage
class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  //attribute
  //this is a list storing post
  List<Post> post =
      []; // then call post which is equal to empty list to be modified anytime new post is created

//A method for MyHomepageState to be called when button is pressed.
//the `state text` will be modified anytime this method is called
  void newPost(String text) {
    //this takes the text and change & set the state
    this.setState(() {
      post.add(new Post(text, "brandon"));
      //wrapped with `setState` to re render widget(if not text will just be modified)
    });
  }

  @override
  Widget build(BuildContext context) {
    //a build method that tell the widget what to display
    return Scaffold(
        appBar: AppBar(title: Text('brandon')),
        body: Column(children: <Widget>[
          Expanded(child: PostList(this.post)), //this post widget get updated
          Expanded(
              //Expand fills the entire area
              child:
                  TextInputWidget(this.newPost)) // this will be equal to post[]
        ])); //to use STATEFUL WIDGET (TextInptWiget) in body
  }
}

//A Stateful widget called TextInputWidget
//this 1st class is for contstructor arguments to setup and overide state
class TextInputWidget extends StatefulWidget {
//a constructor argument that takes one parameter (the changeText method to use as a callback)
  final Function(String)
      callback; //this is a property(a callback) which a function takes a string as one of the arguments

  TextInputWidget(
      this.callback); //a constructor to define what callback is. this needs to be passed to `TextInputWidget` from build method

  @override
  _TextInputWidgetState createState() =>
      _TextInputWidgetState(); //this line is a method to return the instance of the TextInputWidgetState using `=>` syntax
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
  }

  @override
  Widget build(BuildContext context) {
//Defining with `return method`. The parameters decoration&prefixIcon etc are widgets
    return TextField(
        controller: //a parameter that is equal to `final controller` to access the value of this field
            this.controller,
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

//a listview for post to be displayed
class PostList extends StatefulWidget {
  final List<Post> listItems;

  PostList(this.listItems); //list of post to display

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return Listview.builder();
  }
}
