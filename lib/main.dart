import 'package:flutter/material.dart';

import './text_control.dart';

void main() => runApp(WidgetBasicsApp());

class WidgetBasicsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets Basics App'),
        ),
        body: TextControl(),
      ),
    );
  }
}
