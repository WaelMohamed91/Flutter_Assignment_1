import 'package:flutter/material.dart';

class Current_text extends StatelessWidget {
  final String text;
  Current_text(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 45,
        ),
      ),
    );
  }
}
