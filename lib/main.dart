// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './text_control.dart';
import './text_display.dart';

void main() => runApp(WidgetBasicsApp());

class WidgetBasicsApp extends StatefulWidget {
  @override
  State<WidgetBasicsApp> createState() => _WidgetBasicsAppState();
}

class _WidgetBasicsAppState extends State<WidgetBasicsApp> {
  final _jokes = const [
    'Chuck Norris can divide by zero.',
    'Chuck Norris can start a fire with an ice cube.',
    'Chuck Norris does not sleep. He waits.',
    'The chief export of Chuck Norris is pain.',
    'Chuck Norris can dribble a bowling ball.',
    'Chuck Norris counted to infinity... twice.',
    'Chuck Norris makes onions cry.',
  ];
  var _jokeIndex = 0;

  void _nextJoke() {
    setState(() {
      _jokeIndex = (_jokeIndex + 1) % _jokes.length;
    });
    print('Next joke index $_jokeIndex');
    if (_jokeIndex == _jokes.length - 1) {
      print('Ran out of jokes. Restarting...');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets Basics App'),
        ),
        body: Column(
          children: [
            TextDisplay(_jokes[_jokeIndex]),
            TextControl(_nextJoke),
          ],
        ),
      ),
    );
  }
}
