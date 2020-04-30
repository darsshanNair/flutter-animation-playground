import 'package:animation_playground/views/AnimatedIconsView.dart';
import 'package:animation_playground/views/AnimatedListView.dart';
import 'package:animation_playground/views/AnimatedSwitcherView.dart';
import 'package:animation_playground/views/ImplicitlyAnimatedWidgetsView.dart';
import 'package:animation_playground/views/TransitionAnimationView.dart';
import 'package:animation_playground/views/heroViews/FirstHeroView.dart';
import 'package:animation_playground/widgets/general/BlueButton.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Playground"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            BlueButton("Transition Animations", () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransitionAnimationView()),
              );
            }),
            BlueButton("Implicitly Animated Widgets", () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImplicitlyAnimatedWidgetsView()),
              );
            }),
            BlueButton("Animated Icons", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnimatedIconsView()),
              );
            }),
            BlueButton("Animated List", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnimatedListView()),
              );
            }),
            BlueButton("Animated Switcher", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnimatedSwitcherView()),
              );
            }),
            BlueButton("Hero Animation", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstHeroPage()),
              );
            })
          ],
        ),
      ),
    );
  }
}
