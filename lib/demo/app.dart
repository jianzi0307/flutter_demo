import 'package:flutter/material.dart';
import 'home.dart';
import 'text.dart';
import 'button.dart';
import 'image.dart';
import 'input.dart';
import 'icon.dart';
import 'switch.dart';
import 'qrcode.dart';
import 'form.dart';
import 'container.dart';

class App extends StatefulWidget {
  const App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: DemoHome(
        title: 'Demo',
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
        'container_route': (context) => ContainerRoute(),
      },
    );
  }
}
