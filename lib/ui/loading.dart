import 'dart:math';
import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
import 'package:flutteranimations/ui/nav_drawer.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class Loading extends StatefulWidget {
  Loading({Key key, this.title}) : super(key: key);
  static const routeName = '/loading';
  final String title;

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(25),
            child:_elasticOut(),
        ),
      ),
    );
  }
}

_elasticOut(){
  return
    LiquidLinearProgressIndicator(
    value: 0.25, // Defaults to 0.5.
    valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
    backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
    borderColor: Colors.red,
    borderWidth: 5.0,
    borderRadius: 12.0,
    direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
    center: Text("Loading..."),
    );
}