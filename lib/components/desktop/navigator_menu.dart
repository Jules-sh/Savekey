library desktop_components;

import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';

class NavigatorMenu extends StatelessWidget {
  const NavigatorMenu({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      drawerDragStartBehavior: DragStartBehavior.down,
      drawerEnableOpenDragGesture: true,
      drawer: const _NavigatorMenuDrawer(),
    );
  }
}

class _NavigatorMenuDrawer extends StatelessWidget {
  const _NavigatorMenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Scaffold.of(context).openDrawer();
    });
    return Drawer(
      child: SliverList(
        delegate: SliverChildListDelegate(
          [
            Text('LOL'),
          ],
          addAutomaticKeepAlives: true,
          addRepaintBoundaries: true,
          addSemanticIndexes: true,
        ),
      ),
    );
  }
}
