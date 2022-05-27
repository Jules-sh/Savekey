library desktop_screens;

import 'package:flutter/material.dart';
import 'package:savekey/components/desktop/navigator_menu.dart';

class HomescreenDesktop extends StatelessWidget {
  const HomescreenDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigatorMenu(
      child: Scaffold(
        body: _body,
      ),
    );
  }

  Widget get _body {
    return const Center(
      child: Text('Hello'),
    );
  }
}
