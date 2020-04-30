import 'package:animation_playground/widgets/transitionAnimations/BoxChangingLogo.dart';
import 'package:animation_playground/widgets/transitionAnimations/FadingLogo.dart';
import 'package:animation_playground/widgets/transitionAnimations/PositionChangingLogo.dart';
import 'package:animation_playground/widgets/transitionAnimations/RescalingLogo.dart';
import 'package:animation_playground/widgets/transitionAnimations/RotatingLogo.dart';
import 'package:animation_playground/widgets/transitionAnimations/SlidingLogo.dart';

import 'package:flutter/material.dart';

class TransitionAnimationView extends StatefulWidget {
  @override
  _TransitionAnimationViewState createState() =>
      _TransitionAnimationViewState();
}

class _TransitionAnimationViewState extends State<TransitionAnimationView>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _fadeAnimation;
  Animation _scaleAnimation;
  Animation _slideAnimation;
  Animation _rotateAnimation;
  RelativeRectTween _relativeRectTween;
  DecorationTween _decorationTween;

  @override
  void initState() {
    super.initState();
    configureAnimations();
  }

  void configureAnimations() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    _fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _scaleAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);

    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: const Offset(1.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    _relativeRectTween = RelativeRectTween(
      begin: RelativeRect.fromLTRB(100, 100, 0, 0),
      end: RelativeRect.fromLTRB(0, 0, 100, 100),
    );

    _rotateAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _decorationTween = DecorationTween(
      begin: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border.all(
          color: const Color(0xFF000000),
          style: BorderStyle.solid,
          width: 4.0,
        ),
        borderRadius: BorderRadius.zero,
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Color(0x66000000),
            blurRadius: 10.0,
            spreadRadius: 4.0,
          )
        ],
      ),
      end: BoxDecoration(
        color: const Color(0xFF000000),
        border: Border.all(
          color: const Color(0xFF202020),
          style: BorderStyle.solid,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
        shape: BoxShape.rectangle,
        // No shadow.
      ),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Transition Animations"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: "Fade Transition"),
              Tab(text: "Scale Transition"),
              Tab(text: "Slide Transition"),
              Tab(text: "Position Transition"),
              Tab(
                text: "Rotation Transition",
              ),
              Tab(
                text: "DecoratedBox Transition",
              )
            ],
          ),
        ),
        body: (TabBarView(
          children: [
            FadingLogo(_fadeAnimation),
            RescalingLogo(_scaleAnimation),
            SlidingLogo(_animationController, _slideAnimation),
            PositionChangingLogo(_animationController, _relativeRectTween),
            RotatingLogo(_rotateAnimation),
            BoxChangingLogo(_animationController, _decorationTween),
          ],
        )),
      ),
    );
  }
}
