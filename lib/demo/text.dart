import 'package:flutter/material.dart';

class TextRoute extends StatefulWidget {
  @override
  _TextState createState() => _TextState();
}

class _TextState extends State<TextRoute> {
  @override
  Widget build(BuildContext context) {
    final String hi = '你好。';
    return Scaffold(
        appBar: AppBar(title: Text('文本')),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(hi),
                Text(
                  hi,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18.0,
                      decoration: TextDecoration.lineThrough),
                ),
                Text(hi,
                    style: TextStyle(
                        color: Colors.green,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.lightBlue[300],
                        decorationStyle: TextDecorationStyle.double)),
                Text('嵌入字体',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 50.0,
                        fontFamily: 'ZoomlaShuaisong'))
              ],
            )));
  }
}
