import 'dart:math';
import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
import 'package:flutteranimations/ui/nav_drawer.dart';

class Rotation extends StatefulWidget {
  Rotation({Key key, this.title}) : super(key: key);
  static const routeName = '/';
  final String title;

  @override
  _RotationState createState() => _RotationState();
}

class _RotationState extends State<Rotation> {
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
                  _rotationx(),
                  _rotationy(),
                  _rotationz(),
                ],
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _elasticOut(),
                    _elasticIn(),
                    _bounceOut(),
                  ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _originTopLeft(),
                    _originBottomRight(),
                    _offset(),
                  ]
              )
            ],
          )

        ),
      ),
    );
  }
}

_rotationx(){
  return Column(
    children: <Widget>[
      Text('Rotation X'),
      Animator(
        tween:Tween<double>(begin:0,end: 2*pi),
        duration: Duration(seconds: 2),
        repeats: 0,
        builder: (context, anim, _) => Transform(
          transform: Matrix4.rotationX(anim.value),
          alignment: Alignment.center,
          child: Icon(
            Icons.insert_drive_file,
            color:Colors.blue,
            size:50,
          ),
        ),
      ),
    ],
  );
}

_rotationy(){
  return Column(
    children: <Widget>[
      Text('Rotation Y'),
      Animator(
        tween:Tween<double>(begin:0,end: 2*pi),
        duration: Duration(seconds: 2),
        repeats: 0,
        builder: (context, anim, _) => Transform(
          transform: Matrix4.rotationY(anim.value),
          alignment: Alignment.center,
          child: Icon(
            Icons.insert_drive_file,
            color:Colors.blue,
            size:50,
          ),
        ),
      ),
    ],
  );
}

_rotationz(){
  return Column(
    children: <Widget>[
      Text('Rotation Z'),
      Animator(
        tween:Tween<double>(begin:0,end: 2*pi),
        duration: Duration(seconds: 2),
        repeats: 0,
        builder: (context, anim, _) => Transform(
          transform: Matrix4.rotationZ(anim.value),
          alignment: Alignment.center,
          child: Icon(
            Icons.insert_drive_file,
            color:Colors.blue,
            size:50,
          ),
        ),
      ),
    ],
  );
}

_elasticOut(){
  return( Column(
    children: <Widget>[
      Text('ElasticOut'),
      Animator(
        tween:Tween<double>(begin:0,end: 2*pi),
        duration: Duration(seconds: 2),
        curve: Curves.elasticOut,
        cycles: 0,
        builder: (context, anim, _) => Transform.rotate(
          angle: anim.value,
          child: Icon(
            Icons.insert_drive_file,
            color:Colors.green,
            size:50,
          ),
        ),
      ),
    ],
  )
  );
}

_elasticIn(){
  return( Column(
    children: <Widget>[
      Text('ElasticIn'),
      // _mainScreenTitle(user),
      Animator(
        tween:Tween<double>(begin:0,end: 2*pi),
        duration: Duration(seconds: 2),
        curve: Curves.elasticIn,
        cycles: 0,
        builder: (context, anim, _) => Transform.rotate(
          angle: anim.value,
          child: Icon(
            Icons.insert_drive_file,
            color:Colors.green,
            size:50,
          ),
        ),
      ),
    ],
  )
  );
}

_bounceOut(){
  return( Column(
    children: <Widget>[
      Text('BounceOut'),
      // _mainScreenTitle(user),
      Animator(
        tween:Tween<double>(begin:0,end: 2*pi),
        duration: Duration(seconds: 2),
        curve: Curves.bounceOut,
        cycles: 0,
        builder: (context, anim, _) => Transform.rotate(
          angle: anim.value,
          child: Icon(
            Icons.insert_drive_file,
            color:Colors.green,
            size:50,
          ),
        ),
      ),
    ],
  )
  );
}

_originTopLeft(){
  return( Column(
    children: <Widget>[
      Text('Origin Top Left'),
      // _mainScreenTitle(user),
      Animator(
        tween:Tween<double>(begin:0,end: 2*pi),
        duration: Duration(seconds: 2),
        repeats : 0,
        builder: (context, anim, _) => Transform.rotate(
          angle: anim.value,
          alignment: Alignment.topLeft,
          child: Icon(
            Icons.insert_drive_file,
            color:Colors.red,
            size:50,
          ),
        ),
      ),
    ],
  )
  );
}
_originBottomRight(){
  return( Column(
    children: <Widget>[
      Text('Origin Bottom Right'),
      // _mainScreenTitle(user),
      Animator(
        tween:Tween<double>(begin:0,end: 2*pi),
        duration: Duration(seconds: 2),
        repeats : 0,
        builder: (context, anim, _) => Transform.rotate(
          angle: anim.value,
          alignment: Alignment.bottomRight,
          child: Icon(
            Icons.insert_drive_file,
            color:Colors.red,
            size:50,
          ),
        ),
      ),
    ],
  )
  );
}
_offset(){
  return( Column(
    children: <Widget>[
      Text('offset(-10,10)'),
      // _mainScreenTitle(user),
      Animator(
        tween:Tween<double>(begin:0,end: 2*pi),
        duration: Duration(seconds: 2),
        repeats : 0,
        builder: (context, anim, _) => Transform(
          transform: Matrix4.rotationZ(anim.value),
          alignment: Alignment.center,
          origin: Offset(-10,10),
          child: Icon(
            Icons.insert_drive_file,
            color:Colors.red,
            size:50,
          ),
        ),
      ),
    ],
  )
  );
}