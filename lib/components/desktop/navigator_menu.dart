library desktop_components;

import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';

/// A Navigation Drawer for Desktop Applications.
/// It contains a Material [Drawer] on the left Side.
///
/// The [child], typically a [Scaffold], is on the right Side.
/// The [child] is the main Location for you App.
/// Everything you want to display you have to display in the
/// [child]. Also the [AppBar]. Because of that, it's typically a
/// [Scaffold].
///
/// The [navigationAppBar] is the AppBar shown on the Level
/// of the Navigation Drawer.
///
/// You can specify a [FloatingActionButton] and it's location,
/// but it isn't recommended.
/// Specify the Button in the Scaffold you use pass as [child]
class NavigatorMenu extends StatelessWidget {
  const NavigatorMenu({
    required this.username,
    this.navigationAppBar,
    this.floatingActionButton,
    this.btnlocation,
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final PreferredSizeWidget? navigationAppBar;
  final FloatingActionButton? floatingActionButton;
  final FloatingActionButtonLocation? btnlocation;
  final String username;

  @override
  Widget build(BuildContext context) {
    final Size mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: navigationAppBar,
      endDrawerEnableOpenDragGesture: false,
      drawerDragStartBehavior: DragStartBehavior.down,
      drawerEnableOpenDragGesture: true,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.ltr,
        verticalDirection: VerticalDirection.down,
        children: [
          _NavigatorMenuDrawer(
            username: username,
          ),
          const VerticalDivider(width: 2),
          SizedBox(
            height: mediaSize.height,
            width: mediaSize.width / 100 * 64.3,
            child: child,
          )
        ],
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: btnlocation,
      resizeToAvoidBottomInset: true,
    );
  }
}

/// The actual Drawer used inside the [NavigatorMenu]'s Scaffold.
class _NavigatorMenuDrawer extends StatelessWidget {
  const _NavigatorMenuDrawer({
    required this.username,
    Key? key,
  }) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 100 * 35.3,
      child: ListView(
        addAutomaticKeepAlives: true,
        addRepaintBoundaries: true,
        addSemanticIndexes: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        dragStartBehavior: DragStartBehavior.down,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          DrawerHeader(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                textDirection: TextDirection.ltr,
                verticalDirection: VerticalDirection.down,
                children: [
                  const Spacer(flex: 3),
                  const Icon(Icons.account_circle_rounded, size: 70),
                  const Spacer(flex: 1),
                  Text(username, textScaleFactor: 1.25),
                  const Spacer(flex: 3)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
