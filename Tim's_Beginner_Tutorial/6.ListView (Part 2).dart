// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';

//RUNAPP IS MAIN FUNCTION FROM `PACKAGE:FLUTTER/MATERIAL.DART' TO RUN (MYAPP).
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
    //reverse user likes(if false and call it will be true & viseversa)
    this.userLiked = !this.userLiked;
    if (this.userLiked) {
      this.likes += 1; // if true add 1 to user likes
    } else {
      this.likes -= 1; //if not true minus 1
    }
  }
}

//THE CLASS THAT DEFINES `MYAPP` WHICH EXTENDS STATELESS WIDGET (TELLS WIDGET WHAT TO LOOK LIKE / PLACE / ADD)
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
      //the widget(MyHomePage) to render for home page/body
      home: const MyHomepage(),
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
  // then call post which is equal to empty list to be modified anytime new post is created
  List<Post> post = [];

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
          TextInputWidget(this.newPost) // this will be equal to post[]
        ])); //to use STATEFUL WIDGET (TextInptWiget) in body
  }
}

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

//A LISTVIEW CLASS FOR POST TO BE DISPLAYED
class PostList extends StatefulWidget {
  final List<Post> listItems;

  PostList(
      this.listItems); //list of post to display to be updated in myhomepage state list attribute

  @override
  _PostListState createState() => _PostListState();
}

// a method to update `onPressed` when called
class _PostListState extends State<PostList> {
  void like(Function callBack) {
    this.setState(() {
      callBack();
    });
  }

  @override
  Widget build(BuildContext context) {
    // a function to construct items.
    return ListView.builder(
      itemCount: this.widget.listItems.length, //amount of item in list
      //index render how many items to show
      itemBuilder: (context, index) {
        // this is telling `ItemCount` how many items to display
        var post = this.widget.listItems[index];
        return Card(
            child: Row(children: <Widget>[
          Expanded(
              child: ListTile(
            //attributes of post
            title: Text(post.body),
            subtitle: Text(post.author),
          )),
          Row(
            children: <Widget>[
              Container(
                //a container to display the amount of likes, converted to a string
                child:
                    Text(post.likes.toString(), style: TextStyle(fontSize: 20)),
                padding: EdgeInsets.fromLTRB(0, 0, 10,
                    0), //padding is the amount of pixels seperated between widgets
              ),
              IconButton(
                  icon: Icon(Icons.thumb_up),
                  //calling `like` method when button press
                  onPressed: () => like(post.likePost),
                  // if user liked post turn green else turn black
                  color: post.userLiked ? Colors.green : Colors.black)
            ],
          )
        ]));
      },
    );
  }
}
