
import 'package:flutter/material.dart';
import 'package:shop_item_ui_kit/screens/mainScreen.dart';
import 'package:shop_item_ui_kit/screens/secondScreen.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MainScreen(),
      theme: new ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.green[700],
          fontFamily: 'Pier',
          hintColor: Colors.brown),
    );
  }
}
