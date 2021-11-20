
import 'package:flutter/material.dart';
import 'post.dart';
import 'postlist.dart';
import 'text_input.dart';

//a statefull widget for myhomepage
class MyHomepage extends StatefulWidget {
  late final String name;
//a constructor to pass a name  when homepage is created
  MyHomepage(this.name);

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
      post.add(new Post(text, widget.name));
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
