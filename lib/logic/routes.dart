library logic;

import 'package:bloc_implementation/bloc_implementation.dart';
import 'package:flutter/material.dart';
import 'package:savekey/blocs/homescreen_bloc.dart';
import 'package:savekey/blocs/loading_bloc.dart';
import 'package:savekey/blocs/welcome_bloc.dart';
import 'package:savekey/screens/desktop/homescreen_desktop.dart';
import 'package:savekey/screens/mobile/homescreem_mobile.dart';
import 'package:savekey/screens/shared/loading_screen.dart';
import 'package:savekey/screens/shared/unknown_page.dart';
import 'package:savekey/screens/shared/welcome_screen.dart';

/// Contains nearly all Routes used in this App.
/// Does not contains shared Routes like the one from [WelcomeScreen]
class Routes {
  /// The Loading Screen Route Name
  static const loadingscreen = '/';

  /// The Welcome Screen Route Name
  static const welcomescreen = '/welcome_screen';

  /// The Homescreen Route Name
  static const homescreen = '/homescreen';
}

/// Widget to pass a route Name as String.
/// Returns the corresponding Widget for either Mobile
/// or Desktop Devices.
class WidgetRouter extends StatelessWidget {
  WidgetRouter({Key? key}) : super(key: key) {
    routeName = '/';
  }

  /// Widget Routes used for the Loading Screen
  WidgetRouter.loadingscreen({Key? key}) : super(key: key) {
    routeName = Routes.loadingscreen;
  }

  /// Widget Routes used for the Welcome Screen
  WidgetRouter.welcomescreen({Key? key}) : super(key: key) {
    routeName = Routes.welcomescreen;
  }

  /// Widget Router used in case, you want to open the Homescreen
  WidgetRouter.homescreen({Key? key}) : super(key: key) {
    routeName = Routes.homescreen;
  }

  /// Name of the Route
  late final String routeName;

  /// Whether it's an mobile or desktop OS
  static late final bool? _isDesktop;

  /// Whether it's an mobile or desktop OS
  static set isDesktop(bool isDesktop) {
    _isDesktop ??= isDesktop;
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
      // Shared Loading Screen is shown
      case Routes.loadingscreen:
        return BlocParent(
          bloc: LoadingBloc(),
          child: const LoadingScreen(),
        );

      // Shared Welcome Screen is shown
      case Routes.welcomescreen:
        return BlocParent(
          bloc: WelcomeBloc(),
          child: const WelcomeScreen(),
        );

      /// Homescreen is shown.
      /// If Statement determines if Mobile or Desktop Screen is shown
      case Routes.homescreen:
        return BlocParent(
            bloc: HomescreenBloc(),
            child: isDesktop
                ? const HomescreenDesktop()
                : const HomescreenMobile());
      default:
        return const UnknownScreen();
    }
  }
}
