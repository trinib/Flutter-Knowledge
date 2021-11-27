An `agument` don't start with a capital letter and the `widget` does (appBar(AppBar)
#
`ListView` is a very important widget in flutter. It is used to create the list of children But when we want to create a list recursively without writing code again and again then `ListView. builder` is used instead of ListView. `ListView` creates a scrollable, linear array of widgets.
#
`Positioned` widget can position other widgets
#
If a `container` holds no children it takes the whole space so then use child to restrict/control space
#
`Padding` is inside space and `Margin` is outside space of a *container*. Use Padding as a widget if want only text
#
`SizeBox` widget controls size of other widgets
#
Use `Shrink wrap` to control size in listview
#
`TextEditingController` keeps track what the user is typing in text field
#
Basically a `container` is like a box to store contents
#
To call the oppsite/reverse of an variable use `!`.For example:
```
fowardVariable = !backVariable
```
#
`controller` gets information from user and display it on screen
#
`width/lenght: double.infinity` takes all the space
#
`setState` function refreshes/update widget
#
Make a container first when adding rows in a column
#
`Navigate` : 
```
onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => SecondPage(),
                  ),
                );
              },
```
