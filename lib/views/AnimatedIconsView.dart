import 'package:flutter/material.dart';

class AnimatedIconsView extends StatefulWidget {
  @override
  _AnimatedIconsViewState createState() => _AnimatedIconsViewState();
}

class _AnimatedIconsViewState extends State<AnimatedIconsView>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _configureAnimations();
  }

  _configureAnimations() {
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Icons"),
      ),
      body: Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 4,
          children: <Widget>[
            AnimatedIcon(
              icon: AnimatedIcons.add_event,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.arrow_menu,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.close_menu,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.ellipsis_search,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.event_add,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.home_menu,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.list_view,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.menu_arrow,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.menu_home,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.pause_play,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.search_ellipsis,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
            AnimatedIcon(
              icon: AnimatedIcons.view_list,
              size: 50,
              progress: _animationController,
              semanticLabel: 'Show menu',
            ),
          ],
        ),
      ),
    );
  }
}
