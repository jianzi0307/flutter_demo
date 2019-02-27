import 'package:flutter/material.dart';

class ImageRoute extends StatefulWidget {
  @override
  _ImageState createState() => _ImageState();
}

class _ImageState extends State<ImageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('图片'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/images/demo.jpg'),
              Image.asset(
                'assets/images/demo.jpg',
                width: 100.0,
                colorBlendMode: BlendMode.difference,
              ),
            ],
          ),
        ));
  }
}
