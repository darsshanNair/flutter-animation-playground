import 'package:flutter/material.dart';

class RescalingLogo extends StatelessWidget {
  final Animation _animation;
  RescalingLogo(this._animation);

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      alignment: Alignment.center,
      child: FlutterLogo(),
    );
  }
}
