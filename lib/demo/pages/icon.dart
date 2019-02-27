import 'package:flutter/material.dart';

class IconRoute extends StatefulWidget {
  @override
  _IconState createState() => _IconState();
}

class _IconState extends State<IconRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IconFont'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.pets),
              Icon(Icons.phone),
              Icon(
                Icons.phone_android,
                size: 50.0,
                color: Colors.lightBlue,
              )
            ],
          ),
        ));
  }
}
