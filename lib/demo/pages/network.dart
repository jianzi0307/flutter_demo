import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class NetworkRoute extends StatefulWidget {
  @override
  _NetworkState createState() => _NetworkState();
}

class _NetworkState extends State<NetworkRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('网络')),
        body: Container(
          child: Center(
            child: ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('发送请求'),
                  onPressed: () async {
                    try {
                      Response response;
                      response = await Dio().get('http://www.baidu.com');
                      return print(response);
                    } catch (e) {
                      return print(e);
                    }
                  },
                )
              ],
            ),
          ),
        ));
  }
}
