import 'package:flutter/material.dart';

class BoxChangingLogo extends StatelessWidget {
  final AnimationController _controller;
  final DecorationTween _decorationTween;
  BoxChangingLogo(this._controller, this._decorationTween);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: DecoratedBoxTransition(
        position: DecorationPosition.background,
        decoration: _decorationTween.animate(_controller),
        child: Container(
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(20),
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
