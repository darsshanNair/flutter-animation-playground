import 'package:flutter/material.dart';

class SlidingLogo extends StatelessWidget {
  final AnimationController _controller;
  final Animation _animation;
  SlidingLogo(this._controller, this._animation);

  @override
  Widget build(BuildContext context) {
    _controller.duration = Duration(seconds: 2);
    return SlideTransition(
      position: _animation,
      child: FlutterLogo(),
    );
  }
}
