import 'package:flutter/material.dart';

class SplashRoute extends StatefulWidget {
  final Widget child;

  SplashRoute({Key key, this.child}) : super(key: key);

  _SplashRouteState createState() => _SplashRouteState();
}

class _SplashRouteState extends State<SplashRoute> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: widget.child,
    );
  }
}