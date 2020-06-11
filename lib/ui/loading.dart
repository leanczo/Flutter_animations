import 'dart:math';
import 'package:flutter/cupertino.dart';
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

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
  super.initState();
  _animationController = AnimationController(
  vsync: this,
  duration: Duration(seconds: 10),
  );

  _animationController.addListener(() => setState(() {}));
  _animationController.repeat();
  }
  
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _LiquidLinear(_animationController.value),
              _LiquidCircular(_animationController.value),
              _LiquidCustom(_animationController.value),
            ],
          ),
        ),
      ),
    );
  }
}

_LiquidLinear(double percentage) {
  return Container(
      height: 90,
      child: LiquidLinearProgressIndicator(
        value: percentage,
        valueColor: AlwaysStoppedAnimation(Colors.blue),
        backgroundColor: Colors.white,
        borderColor: Colors.blue,
        borderWidth: 5.0,
        borderRadius: 12.0,
        direction: Axis.vertical,
        center: Text("Loading..."),
      ));
}

_LiquidCircular(double percentage) {
  return Container(
      height: 90,
      child: LiquidCircularProgressIndicator(
        value: percentage,
        valueColor: AlwaysStoppedAnimation(Colors.pink),
        backgroundColor: Colors.white,
        borderColor: Colors.red,
        borderWidth: 5.0,
        direction: Axis.horizontal,
        center: Text("Loading..."),
      ));
}

_LiquidCustom(double percentage) {
  return Container(
      height: 90,
      child: LiquidCustomProgressIndicator(
        value: percentage,
        valueColor: AlwaysStoppedAnimation(Colors.green),
        backgroundColor: Colors.white,
        direction: Axis.vertical,
        shapePath:_buildSpeechBubblePath(),
      ));
}

Path _buildSpeechBubblePath() {
  return Path()
    ..moveTo(50, 0)
    ..quadraticBezierTo(0, 0, 0, 37.5)
    ..quadraticBezierTo(0, 75, 25, 75)
    ..quadraticBezierTo(25, 95, 5, 95)
    ..quadraticBezierTo(35, 95, 40, 75)
    ..quadraticBezierTo(100, 75, 100, 37.5)
    ..quadraticBezierTo(100, 0, 50, 0)
    ..close();
}
