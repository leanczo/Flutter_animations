import 'package:flutteranimations/ui/rotation.dart';
import 'package:flutter/cupertino.dart';

class NavigationDrawerItem extends StatelessWidget {
  final BuildContext context;
  final String title, routeName;
  final Function onButtonPressed;

  NavigationDrawerItem(
      {this.context,
        this.title,
        this.routeName,
        this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 30,
              ),
              Text(
                title,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
              )
            ],
          )),
      onTap: () {
        if (onButtonPressed != null) {
          onButtonPressed();
        }
        if (routeName != null) {
          Navigator.pop(context);
          Navigator.of(context).pushNamedAndRemoveUntil(routeName, (route) {
            if (route.settings.name == '/' ||
                route.settings.name == Rotation.routeName) {
              return true;
            }
            return false;
          }, arguments: null);
        }
      },
    );
  }
}
