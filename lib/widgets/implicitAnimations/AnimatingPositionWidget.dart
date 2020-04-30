import 'package:flutter/material.dart';

class AnimatingPositionWidget extends StatefulWidget {
  @override
  _AnimatingPositionWidgetState createState() =>
      _AnimatingPositionWidgetState();
}

class _AnimatingPositionWidgetState extends State<AnimatingPositionWidget> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                curve: _selected ? Curves.elasticIn : Curves.elasticOut,
                duration: Duration(milliseconds: 1000),
                top: _selected ? 100 : 0,
                left: _selected ? 20 : 0,
                child: FlutterLogo(
                  size: 300,
                ),
              ),
            ],
          ),
        ),
        RaisedButton(
          onPressed: () {
            setState(() => _selected = !_selected);
          },
          child: Text("Click Me"),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
