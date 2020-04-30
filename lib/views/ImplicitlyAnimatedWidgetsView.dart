import 'package:animation_playground/widgets/implicitAnimations/AlignWidget.dart';
import 'package:animation_playground/widgets/implicitAnimations/AnimatedTextWidget.dart';
import 'package:animation_playground/widgets/implicitAnimations/AnimatingContainerWidget.dart';
import 'package:animation_playground/widgets/implicitAnimations/AnimatingPositionWidget.dart';
import 'package:animation_playground/widgets/implicitAnimations/AnimatingThemeWidget.dart';
import 'package:animation_playground/widgets/implicitAnimations/FadingWidget.dart';
import 'package:animation_playground/widgets/implicitAnimations/PaddingWidget.dart';

import 'package:flutter/material.dart';

class ImplicitlyAnimatedWidgetsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Implicit Animations"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: "Animated Opacity"),
              Tab(text: "Animated Container"),
              Tab(text: "Animated Padding"),
              Tab(text: "Animated Align"),
              Tab(text: "Animated Default Text View"),
              Tab(text: "Animated Positioned"),
              Tab(text: "Animated Theme"),
            ],
          ),
        ),
        body: (TabBarView(
          children: [
            FadingWidget(),
            AnimatingContainer(),
            PaddingWidget(),
            AlignWidget(),
            AnimatedTextWidget(),
            AnimatingPositionWidget(),
            AnimatingThemeWidget(),
          ],
        )),
      ),
    );
    ;
  }
}
