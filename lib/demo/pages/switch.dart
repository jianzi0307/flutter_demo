import 'package:flutter/material.dart';

class SwitchRoute extends StatefulWidget {
  @override
  _SwitchState createState() => _SwitchState();
}

class _SwitchState extends State<SwitchRoute> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;
  bool _checkbox2Selected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('单选框和复选框')),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Switch(
              value: _switchSelected,
              onChanged: (value) {
                setState(() {
                  this._switchSelected = value;
                });
              },
            ),
            Checkbox(
              value: _checkboxSelected,
              tristate: false,
              onChanged: (value) {
                setState(() {
                  this._checkboxSelected = value;
                });
              },
            ),
            Checkbox(
              value: _checkbox2Selected,
              activeColor: Colors.lime,
              tristate: true,
              onChanged: (value) {
                setState(() {
                  this._checkbox2Selected = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
