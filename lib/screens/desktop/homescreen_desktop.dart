library desktop_screens;

import 'package:bloc_implementation/bloc_implementation.dart' show BlocParent;
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';
import 'package:savekey/blocs/homescreen_bloc.dart';
import 'package:savekey/components/desktop/navigator_menu.dart';

/// The Homescreen for the Desktop Application
class HomescreenDesktop extends StatefulWidget {
  const HomescreenDesktop({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomescreenDesktopState();
}

/// State of the Desktop Homescreen
class _HomescreenDesktopState extends State<HomescreenDesktop> {
  HomescreenBloc? bloc;

  @override
  Widget build(BuildContext context) {
    bloc ??= BlocParent.of(context);

    return NavigatorMenu(
      username: bloc!.username,
      child: Scaffold(
        body: _body,
        resizeToAvoidBottomInset: true,
      ),
    );
  }

  Widget get _body {
    return ListView.builder(
      addAutomaticKeepAlives: true,
      addRepaintBoundaries: true,
      addSemanticIndexes: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      dragStartBehavior: DragStartBehavior.down,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      // TODO: change Itemcount
      itemCount: 2,
      itemBuilder: (_, counter) {
        return ListTile(
          autofocus: false,
          enableFeedback: true,
          enabled: true,
          isThreeLine: false,
        );
      },
    );
  }
}
