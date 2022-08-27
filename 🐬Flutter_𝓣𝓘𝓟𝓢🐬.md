`MaterialApp` is a widget that introduces many interesting tools such as Navigator or Theme to help you develop your app.
#
`Material` widget is used to define a UI element respecting Material rules. It defines what elevation is, shape, and stuff. Then reused by many material widgets such as Appbar or Card or FloatingButton.
#
An `argument` don't start with a capital letter and the `widget` does (appBar(AppBar)
#
`home` widget sets main/default front page of app if not using routes to a navigated page
#
`ListView` is a very important widget in flutter. It is used to create the list of children But when we want to create a list recursively without writing code again and again then `ListView. builder` is used instead of ListView. `ListView` creates a scrollable, linear array of widgets.
#
`BoxDecoration` is important for customizing widgets
#
`Positioned` widget controls where a child of a [Stack] is positioned.
#
If a `container` holds no children it takes the whole space so then use child to restrict/control space
#
`Stacks` overlap other stacks
#
In a **container** `padding` is inside space and `margin` is outside space.Use Padding as a widget if want only text (EdgeInsets.only(left: 40.0))
#
`Padding` widget add some extra space around a widget
#
`SizeBox` widget controls size of other widgets(EXPAND IT or SHRINK IT). It can be used to take up space
#
The `InkWell` class is a rectangular area of a Material widget that responds to touch
#
 `Shrink wrap` extends the scroll view in the scrollDirection https://dartpad.dev/workshops.html?webserver=https://fdr-shrinkwrap-slivers.web.app
#
`TextEditingController` keeps track what the user is typing in text field
#
`MediaQuery` is used to check the current device's orientation or can be used to check if the user has modified the default font size
#
Basically a `container` is like a box to store contents
#
`controller` gets information from user and display it on screen
#
`width/lenght: double.infinity` takes all the space
#
`Bool `if true (?) else false (:)
#
`Constructor` is a special method of Dart class which is automatically called when the object is created. The constructor is like a function with/without parameter but it doesn't have a return type. ... If we don't define any constructor, the default constructor below will be created.
#
`setState` function refreshes/update widget
#
To call the oppsite/reverse of an variable use `!`.For example:
```
fowardVariable = !backVariable
```
#
Make a container first when adding rows in a column, use column to add below and row to add to the right
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
