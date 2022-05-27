library logic;

import 'package:flutter/material.dart';
import 'package:savekey/screens/desktop/homescreen_dekstop.dart';
import 'package:savekey/screens/mobile/homescreem_mobile.dart';
import 'package:savekey/screens/shared/unknown_page.dart';
import 'package:savekey/screens/shared/welcome_screen.dart';

/// Contains nearly all Routes used in this App.
/// Does not contains shared Routes like the one from [WelcomeScreen]
class Routes {
  /// The Homescreen Route Name
  static const homescreen = '/homescreen';
}

class WidgetRouter extends StatelessWidget {
  WidgetRouter({
    Key? key,
  }) : super(key: key) {
    routeName = '/';
  }

  /// Widget Router used in case, you want to open the Homescreen
  WidgetRouter.homescreen({Key? key}) : super(key: key) {
    routeName = Routes.homescreen;
  }

  /// Name of the Route
  late final String routeName;

  /// Whether it's an mobile or desktop OS
  static bool? _isDesktop;

  /// Whether it's an mobile or desktop OS
  static set isDesktop(bool isDesktop) {
    if (_isDesktop == null) {
      _isDesktop = isDesktop;
    } else {
      return;
    }
  }

  /// Whether it's an mobile or desktop OS
  static bool get isDesktop {
    if (_isDesktop == null) {
      throw ErrorDescription('is Desktop is null. Set it before you use it.');
    } else {
      return _isDesktop!;
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (routeName) {
      case Routes.homescreen:
        if (isDesktop) {
          return const HomescreenDesktop();
        } else {
          return const HomescreenMobile();
        }
      default:
        return const UnknownScreen();
    }
  }
}
