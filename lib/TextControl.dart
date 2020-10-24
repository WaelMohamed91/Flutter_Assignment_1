import 'package:flutter/material.dart';
import 'CurrentText.dart';

int clickCounter = 0;
String text = "Click number : 0";

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  void _generateText() {
    setState(() {
      clickCounter++;
      text = "Click number : " + clickCounter.toString();
    });
    print(clickCounter);
  }

  void _reset() {
    setState(() {
      clickCounter = 0;
      text = "Click number : " + clickCounter.toString();
    });
    print(clickCounter);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: RaisedButton(
                child: Text(
                  "Count",
                  style: TextStyle(fontSize: 50),
                ),
                textColor: Colors.black,
                color: Colors.blue[200],
                padding: EdgeInsets.all(10),
                onPressed: _generateText)),
        Current_text(text),
        RaisedButton(
            child: Text(
              "Reset",
              style: TextStyle(fontSize: 50),
            ),
            textColor: Colors.black,
            color: Colors.red[200],
            padding: EdgeInsets.all(10),
            onPressed: _reset),
      ],
    );
  }
}
