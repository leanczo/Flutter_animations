import 'package:flutter/material.dart';
import 'package:flutteranimations/ui/rotation.dart';
import 'package:flutteranimations/ui/scale_and_translation.dart';
import 'package:flutteranimations/ui/loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Animations',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          Rotation.routeName: (context) => Rotation(title: "Rotation"),
          Scale.routeName: (context) => Scale(title: "Scale and translation"),
          Loading.routeName: (context) => Loading(title: "Loading"),
        }
    );
  }
}