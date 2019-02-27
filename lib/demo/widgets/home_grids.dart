import 'package:flutter/material.dart';

class HomeGridWidget extends StatelessWidget {
  final Map<String, String> items;
  HomeGridWidget({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10.0),
      crossAxisCount: 3,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      childAspectRatio: 1 / 1,
      children: List.generate(items.length, (int index) {
        List keys = items.keys.toList();
        List values = items.values.toList();
        return Center(
            child: Container(
                // 加上alignment会充满父组件，不加会适应子组件大小
                alignment: Alignment.center,
                color: Colors.blue.shade200,
                child: FlatButton(
                  child: Text(values[index]),
                  onPressed: () {
                    Navigator.pushNamed(context, keys[index] + '_route');
                  },
                )));
      }),
    );
  }
}
