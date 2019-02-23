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
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'form_route');
                  },
                  child: Text('Form'),
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
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '账号:',
              hintText: '输入您的账号。',
              prefixIcon: Icon(Icons.phone)),
          autofocus: false,
          maxLines: 1,
          maxLength: 20,
          maxLengthEnforced: false,
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.url,
          onChanged: (v) {
            print('onChange: $v');
          },
          onSubmitted: (v) {
            print('onSubmitted: $v');
          },
          onEditingComplete: () {
            print('onEditingComplete: ');
          },
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '密码:',
              hintText: '输入您的登录密码。',
              prefixIcon: Icon(Icons.lock)),
        )
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
