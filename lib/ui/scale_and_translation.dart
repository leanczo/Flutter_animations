import 'dart:math';
import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
import 'package:flutteranimations/ui/nav_drawer.dart';

class Scale extends StatefulWidget {
  Scale({Key key, this.title}) : super(key: key);
  static const routeName = '/scale';
  final String title;

  @override
  _ScaleState createState() => _ScaleState();
}

class _ScaleState extends State<Scale> {
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
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _elasticOut(),
                    _translation(),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}

_elasticOut(){
  return Column(
    children: <Widget>[
      Text('elasticOut'),
      Animator(
        tween:Tween<double>(begin:0.8,end: 1.4),
        curve: Curves.elasticOut,
        cycles: 0,
        builder: (context, anim, _) => Transform.scale(
          scale : anim.value,
          child: Icon(
            Icons.favorite,
            color: Colors.red,
            size:50,
          ),
        ),
      ),
    ],
  );
}

_translation(){
  return Column(
    children: <Widget>[
      Text('translation'),
      Animator(
        tween:Tween<Offset>(begin:Offset(-5,0),end: Offset(5,0)),
        duration: Duration(seconds: 3),
        cycles: 0,
        builder: (context, anim, _) => FractionalTranslation(
          translation: anim.value,
          child: Icon(
            Icons.local_shipping,
            size:50,
          ),
        ),
      ),
    ],
  );
}