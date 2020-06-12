import 'package:flutter/material.dart';
import 'package:flutteranimations/ui/nav_drawer.dart';
import 'package:flutteranimations/ui/tabs/first.dart';
import 'package:flutteranimations/ui/tabs/second.dart';
import 'package:flutteranimations/ui/tabs/third.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key, this.title}) : super(key: key);
  static const routeName = '/tabs';
  final String title;

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          // set icon to the tab
          icon: Icon(Icons.favorite),
        ),
        Tab(
          icon: Icon(Icons.adb),
        ),
        Tab(
          icon: Icon(Icons.airport_shuttle),
        ),
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
          backgroundColor: Colors.blue,
        bottom:  getTabBar()),
      body:       getTabBarView(<Widget>[First(), Second(), Third()])
    );
  }
}