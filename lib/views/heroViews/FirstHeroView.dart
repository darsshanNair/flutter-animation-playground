import 'package:animation_playground/views/heroViews/SecondHeroVIew.dart';
import 'package:flutter/material.dart';

class FirstHeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Hero Page")),
      body: Container(
        margin: EdgeInsets.only(left: 16, top: 10, right: 16),
        child: ListTile(
          leading: Hero(tag: 'logo', child: FlutterLogo(size: 100)),
          title: Text("Just a title"),
          subtitle: Text("Just a subtitle"),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondHeroPage()),
            );
          },
        ),
      ),
    );
  }
}
