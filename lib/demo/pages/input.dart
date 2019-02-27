import 'package:flutter/material.dart';

class InputRoute extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<InputRoute> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('输入框和表单')),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                _createLoginFormsWidget(),
                _createFocusNodeWidget(),
                Divider(),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'form_route');
                  },
                  child: Text('表单'),
                )
              ],
            )));
  }

  Widget _createLoginFormsWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'labelText：'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: TextField(
            decoration: InputDecoration(labelText: 'labelText：'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: TextField(
            decoration: InputDecoration(icon: Icon(Icons.person)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: TextField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.person_add)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: TextField(
            decoration: InputDecoration(suffixIcon: Icon(Icons.person)),
          ),
        ),
      ],
    );
  }

  Widget _createFocusNodeWidget() {
    return Theme(
        data: Theme.of(context).copyWith(
            hintColor: Colors.blue[200],
            inputDecorationTheme: InputDecorationTheme(
                labelStyle: TextStyle(color: Colors.red),
                hintStyle: TextStyle(color: Colors.yellow, fontSize: 14.0))),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                autofocus: true,
                focusNode: focusNode1,
                decoration: InputDecoration(
                    labelText: 'labelText1',
                    hintText: 'hintText1',
                    border: UnderlineInputBorder(),
                    hintStyle: TextStyle(color: Colors.purple, fontSize: 30.0)),
              ),
              TextField(
                focusNode: focusNode2,
                decoration: InputDecoration(
                    labelText: 'labelText2', hintText: 'hintText2'),
              ),
              RaisedButton(
                child: Text('移动焦点'),
                onPressed: () {
                  if (null == focusScopeNode) {
                    focusScopeNode = FocusScope.of(context);
                  }
                  focusScopeNode.requestFocus(focusNode2);
                },
              ),
              RaisedButton(
                child: Text('隐藏键盘'),
                onPressed: () {
                  focusNode1.unfocus();
                  focusNode2.unfocus();
                },
              )
            ],
          ),
        ));
  }
}
