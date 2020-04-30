import 'package:flutter/material.dart';

class SecondHeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Hero Page"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16, top: 10, right: 16),
        child: Column(children: <Widget>[
          Container(
              child: Hero(
            tag: 'logo',
            child: FlutterLogo(
              size: 500,
            ),
          )),
          Container(
            child: Text(
                "asdasdasdasdasdasdasdasdasd adsasdasdasdasdasdasdasd asdasdasdasdasd asdasdasdasdas asdasdasdasd asdasdasdasd"),
          )
        ]),
      ),
    );
  }
}
