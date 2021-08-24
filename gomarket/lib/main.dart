import 'package:flutter/material.dart';
import 'package:gomarket/walktrough_page/walktrough_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PopPins'),
      home: Walktrough(),
    );
  }
}
