import 'package:flutter/material.dart';

class PositionChangingLogo extends StatelessWidget {
  final AnimationController _controller;
  final RelativeRectTween _relativeRectTween;
  PositionChangingLogo(this._controller, this._relativeRectTween);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PositionedTransition(
          rect: _relativeRectTween.animate(_controller),
          child: Container(
            child: Container(
              width: 400,
              height: 400,
              padding: EdgeInsets.all(20),
              child: FlutterLogo(),
            ),
          ),
        ),
      ],
    );
  }
}
