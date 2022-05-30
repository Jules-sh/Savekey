library desktop_screens;

import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';
import 'package:savekey/components/desktop/navigator_menu.dart';

class HomescreenDesktop extends StatelessWidget {
  const HomescreenDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigatorMenu(
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
