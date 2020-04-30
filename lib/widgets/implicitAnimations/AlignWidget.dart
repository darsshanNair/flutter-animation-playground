import 'package:flutter/material.dart';

class AlignWidget extends StatefulWidget {
  @override
  _AlignWidgetState createState() => _AlignWidgetState();
}

class _AlignWidgetState extends State<AlignWidget> {
  Alignment _alignment = Alignment(0, -1);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() => _alignment = _alignment == Alignment(0, -1)
            ? Alignment(0, 1)
            : Alignment(0, -1));
      },
      child: AnimatedAlign(
        alignment: _alignment,
        duration: Duration(milliseconds: 1500),
        child: FlutterLogo(size: 300),
      ),
    );
  }
}
