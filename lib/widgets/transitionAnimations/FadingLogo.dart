import 'package:flutter/material.dart';

class FadingLogo extends StatelessWidget {
  final Animation _animation;
  FadingLogo(this._animation);

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: FlutterLogo(),
    );
  }
}
