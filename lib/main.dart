import 'package:flutter/material.dart';
import 'demo/pages/index.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Map<String, String> _gridsItems = {
      'scaffold': '脚手架',
      'text': '文本',
      'button': '按钮',
      'image': '图片',
      'icon': 'IconFont',
      'switch': '单选框和复选框',
      'input': '输入框和表单',
      'qrcode': '二维码',
      'network': '网络',
      'card': '卡片',
      'dialog': '弹窗',
      'list': '列表',
      'tab': '选项卡',
      'menu': '菜单',
      'picker': '选择器',
      'panel': '面板',
      'progress': '进度条',
      'slider': 'Slider',
      'bar': 'Bar'
    };

    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DemoHome(
        title: 'Demo',
        gridItems: _gridsItems,
      ),
      routes: {
        'text_route': (context) => TextRoute(),
        'button_route': (context) => ButtonRoute(),
        'image_route': (context) => ImageRoute(),
        'icon_route': (context) => IconRoute(),
        'switch_route': (context) => SwitchRoute(),
        'input_route': (context) => InputRoute(),
        'qrcode_route': (context) => QrcodeRoute(),
        'form_route': (context) => FormRoute(),
        'scaffold_route': (context) => ScaffoldRoute(),
        'network_route': (context) => NetworkRoute()
      },
    );
  }
}
