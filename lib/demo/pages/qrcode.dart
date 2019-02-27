import 'package:flutter/material.dart';

class QrcodeRoute extends StatefulWidget {
  @override
  _QrcodeState createState() => _QrcodeState();
}

class _QrcodeState extends State<QrcodeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('二维码')),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Text('qrcode'),
        ));
  }
}
