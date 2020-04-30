import 'package:flutter/material.dart';

class FadingWidget extends StatefulWidget {
  @override
  _FadingWidgetState createState() => _FadingWidgetState();
}

class _FadingWidgetState extends State<FadingWidget> {
  double _opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => _opacityLevel = _opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: _opacityLevel,
          duration: Duration(seconds: 3),
          child: FlutterLogo(
            size: 300,
          ),
        ),
        RaisedButton(
          child: Text('Fade Logo'),
          onPressed: _changeOpacity,
        ),
      ],
    );
  }
}
