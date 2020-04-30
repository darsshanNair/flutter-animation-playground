import 'package:flutter/material.dart';

class RotatingLogo extends StatelessWidget {
  final Animation _animation;
  RotatingLogo(this._animation);

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: FlutterLogo(),
    );
  }
}
