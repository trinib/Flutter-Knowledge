import 'package:flutter/material.dart';
import '/stat_screen.dart';
import '/shop_cart.dart';
import '/product_desc.dart';
import '/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  ////? a 'TAB' CONTROLLER (for bottom navigation bar) ////
  late TabController controller;

  @override
  void initState() {
    super.initState();
    //// amount of icons to show
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    ////implement dispose
    controller.dispose();
    super.dispose();
  }

  ////? end of tab controller ////
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      ///+ a 'bottom navigation bar' widget in scaffold
      ///// using 'home' argument sets main/default front page if not using routes to a navigated page
      home: Scaffold(
        bottomNavigationBar: Material(
          elevation: 30,
          child: TabBar(
            controller: controller,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.amber,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.amber.shade800),
            tabs: const <Widget>[
              Tab(icon: Icon(Icons.event_seat)),
              Tab(icon: Icon(Icons.timer)),
              Tab(icon: Icon(Icons.shopping_cart)),
              Tab(icon: Icon(Icons.person_outline))
            ],
          ),
        ),
        ////+ A 'TABARVIEW' WIDGET IN BODY TO SHOW DIFFERENT PAGES
        ////* TAB BAR
        body: TabBarView(
          //// need to add controller for 'tabcontroller' method
          controller: controller,
          children: [
            HomePage(),
            ProdDesc(),
            ShopCart(),
            StatScreen(),
          ],
        ),
      ),
    );
  }
}
