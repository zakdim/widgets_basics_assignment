// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

void main() => runApp(WidgetBasicsApp());

class WidgetBasicsApp extends StatefulWidget {
  @override
  State<WidgetBasicsApp> createState() => _WidgetBasicsAppState();
}

class _WidgetBasicsAppState extends State<WidgetBasicsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets Basics App'),
        ),
        body: Column(
          children: [
            Text(
              'Hello Flutter World!',
              style: TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }
}
