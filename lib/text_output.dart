import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String textOutput;

  TextOutput(this.textOutput);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        textOutput,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
