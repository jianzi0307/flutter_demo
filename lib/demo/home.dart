import 'package:flutter/material.dart';

class DemoHome extends StatefulWidget {
  DemoHome({Key key, this.title: ''}) : super(key: key);

  final String title;

  @override
  _DemoHomeState createState() => _DemoHomeState();
}

class _DemoHomeState extends State<DemoHome> {
  final Map _items = {
    'text': '文本',
    'button': '按钮',
    'image': '图片',
    'icon': 'IconFont',
    'switch': '单选框和复选框',
    'input': '输入框和表单',
    'qrcode': '二维码'
  };
  final TextStyle _listItemTitleStyle =
      TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        final index = i ~/ 2;
        if (index >= _items.length) {
          return null;
        }
        return _buildListItem(
            _items.values.toList()[index], _items.keys.toList()[index]);
      },
    );
  }

  Widget _buildListItem(String title, String key) {
    return ListTile(
        title: Text(title, style: _listItemTitleStyle),
        trailing: Icon(Icons.chevron_right),
        onTap: () {
          print(key);
          Navigator.pushNamed(context, '$key\_route');
        });
  }
}
