import 'package:flutter/material.dart';

class AnimatingThemeWidget extends StatefulWidget {
  @override
  _AnimatingThemeWidgetState createState() => _AnimatingThemeWidgetState();
}

class _AnimatingThemeWidgetState extends State<AnimatingThemeWidget> {
  var _isLightTheme = false;

  _buttonDidPress() {
    setState(() {
      _isLightTheme = !_isLightTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: AnimatedTheme(
              data: _isLightTheme ? ThemeData.light() : ThemeData.dark(),
              duration: Duration(milliseconds: 1500),
              child: Card(
                child: const Padding(
                  padding: EdgeInsets.all(100),
                  child: Text(
                    'Hello',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          RaisedButton(
            onPressed: _buttonDidPress,
            child: Text("Press Me"),
          )
        ]);
  }
}
