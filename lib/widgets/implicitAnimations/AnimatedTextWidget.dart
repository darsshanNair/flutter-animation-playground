import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatefulWidget {
  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget> {
  TextStyle _textStyle = TextStyle(fontSize: 60, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() => _textStyle =
            _textStyle == TextStyle(fontSize: 60, color: Colors.blue)
                ? TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)
                : TextStyle(fontSize: 60, color: Colors.blue));
      },
      child: Center(
        child: AnimatedDefaultTextStyle(
          style: _textStyle,
          duration: Duration(milliseconds: 1500),
          child: Text("Click Me"),
        ),
      ),
    );
  }
}
