library blocs;

import 'package:bloc_implementation/bloc_implementation.dart' show Bloc;
import 'package:flutter/material.dart';
import 'package:savekey/logic/routes.dart';
import 'package:savekey/screens/shared/welcome_screen.dart';

/// Bloc responsible for the Loading Screen
class LoadingBloc extends Bloc {
  bool _isFirstOpening = false;

  @override
  void init() {
    _isFirstOpening = true;
    super.init();
  }

  void isFirstOpening(BuildContext context) {
    if (_isFirstOpening) {
      Navigator.pushNamed(context, WelcomeScreen.routeName);
    } else {
      Navigator.pushNamed(context, Routes.homescreen);
    }
  }

  @override
  void dispose() {}
}
