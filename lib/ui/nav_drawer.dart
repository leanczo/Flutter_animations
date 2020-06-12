import 'package:flutter/material.dart';
import 'package:flutteranimations/ui/rotation.dart';
import 'package:flutteranimations/ui/nav_drawer_item.dart';
import 'package:flutteranimations/ui/scale_and_translation.dart';
import 'package:flutteranimations/ui/loading.dart';
import 'package:flutteranimations/ui/text.dart';
import 'package:flutteranimations/ui/bubbles.dart';
import 'package:flutteranimations/ui/lists.dart';
import 'package:flutteranimations/ui/Tabs.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
          Container(
            color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NavigationDrawerItem(
                    context: context,
                    title: 'Rotation',
                    routeName: Rotation.routeName,
                  ),
                  NavigationDrawerItem(
                    context: context,
                    title: 'Scale and translation',
                    routeName: Scale.routeName,
                  ),
                  NavigationDrawerItem(
                    context: context,
                    title: 'Loading',
                    routeName: Loading.routeName,
                  ),
                  NavigationDrawerItem(
                    context: context,
                    title: 'Text',
                    routeName: TextPage.routeName,
                  ),
                  NavigationDrawerItem(
                    context: context,
                    title: 'Bubbles',
                    routeName: Bubbles.routeName,
                  ),
                  NavigationDrawerItem(
                    context: context,
                    title: 'List',
                    routeName: ListPage.routeName,
                  ),
                  NavigationDrawerItem(
                    context: context,
                    title: 'Tabs',
                    routeName: TabsPage.routeName,
                  ),
                ],
              ),
            ),
          )
    );
  }
}
