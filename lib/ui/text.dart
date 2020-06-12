import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteranimations/ui/nav_drawer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TextPage extends StatefulWidget {
  TextPage({Key key, this.title}) : super(key: key);
  static const routeName = '/text';
  final String title;

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
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
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 20.0, height: 100.0),
                  Text(
                    "Be",
                    style: TextStyle(fontSize: 43.0),
                  ),
                  SizedBox(width: 20.0, height: 100.0),
                  RotateAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    text: ["AWESOME", "OPTIMISTIC", "DIFFERENT"],
                    textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon"),
                    textAlign: TextAlign.start,
                    //alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 250.0,
                    height: 100,
                    child: TyperAnimatedTextKit(
                      onTap: () {
                        print("Tap Event");
                      },
                      text: [
                        "It is not enough to do your best,",
                        "you must know what to do,",
                        "and then do your best",
                        "- W.Edwards Deming",
                      ],
                      textStyle:
                          TextStyle(fontSize: 30.0, fontFamily: "Bobbers"),
                      textAlign: TextAlign.start,
                      //     alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 250.0,
                    child: ColorizeAnimatedTextKit(
                        onTap: () {
                          print("Tap Event");
                        },
                        text: [
                          "Larry Page",
                          "Bill Gates",
                          "Steve Jobs",
                        ],
                        textStyle:
                            TextStyle(fontSize: 50.0, fontFamily: "Horizon"),
                        colors: [
                          Colors.purple,
                          Colors.blue,
                          Colors.yellow,
                          Colors.red,
                        ],
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional
                            .topStart // or Alignment.topLeft
                        ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 250.0,
                    child: ScaleAnimatedTextKit(
                        onTap: () {
                          print("Tap Event");
                        },
                        text: ["Think", "Build", "Ship"],
                        textStyle:
                            TextStyle(fontSize: 70.0, fontFamily: "Canterbury"),
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional
                            .topStart // or Alignment.topLeft
                        ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
