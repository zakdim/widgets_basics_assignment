import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function eventHander;

  TextControl(this.eventHander);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: eventHander,
        child: Text('Next'),
      ),
    );
  }
}
