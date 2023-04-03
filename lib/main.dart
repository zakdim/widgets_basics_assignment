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
  final _jokes = const [
    'Chuck Norris can divide by zero.',
    'Time waits for no man. Unless that man is Chuck Norris.',
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
    print('Joke index $_jokeIndex');
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
            Text(
              _jokes[_jokeIndex],
              style: TextStyle(fontSize: 28),
            ),
            ElevatedButton(
              onPressed: _nextJoke,
              child: Text('Next'),
            )
          ],
        ),
      ),
    );
  }
}
