import 'package:flutter/material.dart';
import '../widgets/index.dart';

class DemoHome extends StatefulWidget {
  DemoHome({Key key, @required this.title: '', @required this.gridItems})
      : super(key: key);

  final String title;
  final Map<String, String> gridItems;

  @override
  _DemoHomeState createState() => _DemoHomeState();
}

class _DemoHomeState extends State<DemoHome> {
  final TextStyle _listItemTitleStyle = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: Text(widget.title),
        ),
        body: _buildGridView(),
        drawer: Drawer(
          semanticLabel: 'hihihi',
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Text('title'),
              ),
              ListTile(
                leading: Text('title'),
              ),
              ListTile(
                leading: Text('title'),
              )
            ],
          ),
        ));
  }

  /// 创建一个GridView
  Widget _buildGridView() {
    return HomeGridWidget(items: widget.gridItems);
  }

  /// 创建一个ListView
  Widget _buildListView() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        final index = i ~/ 2;
        if (index >= widget.gridItems.length) {
          return null;
        }
        return _buildListItem(widget.gridItems.values.toList()[index],
            widget.gridItems.keys.toList()[index]);
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
