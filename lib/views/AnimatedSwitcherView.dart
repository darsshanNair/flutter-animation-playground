import 'package:flutter/material.dart';

class AnimatedSwitcherView extends StatefulWidget {
  @override
  _AnimatedSwitcherViewState createState() => _AnimatedSwitcherViewState();
}

class _AnimatedSwitcherViewState extends State<AnimatedSwitcherView> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Switcher")),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _isVisible = !_isVisible;
        });
      }),
      body: Center(
          child: AnimatedSwitcher(
        child: _isVisible
            ? Container(
                height: 300.0,
                width: 300.0,
                color: Colors.red,
                child: Text("Container"),
              )
            : SizedBox(
                width: 300.0,
                height: 300.0,
                child: Container(
                  color: Colors.blueGrey,
                  child: Text("SizedBox"),
                ),
              ),
        duration: Duration(seconds: 2),
      )),
    );
  }
}
