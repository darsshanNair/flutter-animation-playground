import 'package:flutter/material.dart';

class AnimatingContainer extends StatefulWidget {
  @override
  _AnimatingContainerState createState() => _AnimatingContainerState();
}

class _AnimatingContainerState extends State<AnimatingContainer> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: _selected ? 400.0 : 200.0,
          height: _selected ? 200.0 : 400.0,
          color: _selected ? Colors.red : Colors.blue,
          alignment:
              _selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 75),
        ),
      ),
    );
  }
}
