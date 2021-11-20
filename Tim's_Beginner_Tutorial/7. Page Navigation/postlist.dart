import 'package:flutter/material.dart';
import 'post.dart';

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
