import 'package:flutter/material.dart';

class ScaffoldRoute extends StatefulWidget {
  @override
  _ScaffoldState createState() => _ScaffoldState();
}

class _ScaffoldState extends State<ScaffoldRoute>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List _tabs = ['新闻', '历史', '体育', '新闻', '历史', '体育', '新闻', '历史', '体育'];
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('脚手架'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: _tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(100, (index) {
          return Center(child: Text('Item $index'));
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('AAA')),
          BottomNavigationBarItem(icon: Icon(Icons.shop), title: Text('BBB')),
          BottomNavigationBarItem(icon: Icon(Icons.pets), title: Text('CCC'))
        ],
        onTap: (int index) {
          print(index);
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
