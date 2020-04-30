import 'package:flutter/material.dart';

class PaddingWidget extends StatefulWidget {
  @override
  _PaddingWidgetState createState() => _PaddingWidgetState();
}

class _PaddingWidgetState extends State<PaddingWidget> {
  double _padding = 20;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => _padding = _padding == 20 ? 100 : 20);
      },
      child: Center(
        child: AnimatedPadding(
          padding: EdgeInsets.all(_padding),
          duration: Duration(milliseconds: 1500),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Text("Click me"),
            ),
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
