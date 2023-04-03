import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<TextControl> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
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
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: _nextJoke,
            child: Text('Next'),
          ),
        ),
        TextOutput(_jokes[_jokeIndex]),
      ],
    );
  }
}
