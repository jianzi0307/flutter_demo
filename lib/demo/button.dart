import 'package:flutter/material.dart';

class ButtonRoute extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<ButtonRoute> {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: AppBar(
          title: Text('按钮'),
        ),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                FlatButton(
                  color: color,
                  child: Text('plat button'),
                  onPressed: () {},
                ),
                RaisedButton(
                  color: color,
                  child: Text('raised button'),
                  onPressed: () {},
                ),
                OutlineButton(
                  color: color,
                  child: Text('outline button'),
                  onPressed: () {},
                ),
                IconButton(
                  color: color,
                  icon: Icon(Icons.personal_video),
                  onPressed: () {},
                ),
                Divider(),
                _createRoundButton(),
              ],
            )));
  }

  Widget _createRoundButton() {
    Color color = Theme.of(context).primaryColor;

    return RaisedButton(
      color: color,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Text(
        '圆角按钮',
      ),
      onPressed: () {},
    );
  }
}
