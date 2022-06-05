library blocs;

import 'package:bloc_implementation/bloc_implementation.dart' show Bloc;
import 'package:flutter/material.dart' show BuildContext, Navigator;
import 'package:savekey/logic/routes.dart' show Routes;
import 'package:savekey/storage/storage.dart';

/// Bloc responsible for the Loading Screen
class LoadingBloc extends Bloc {
  late final bool _isFirstOpening;

  @override
  void init() {
    Storage.init();
    Storage.loadData();
    _isFirstOpening = Storage.isFirstOpening;
    super.init();
  }

  /// Demermines whether you opened the App the first Time
  /// or not
  void isFirstOpening(BuildContext context) {
    if (_isFirstOpening) {
      Navigator.pushNamed(context, Routes.welcomescreen);
    } else {
      Navigator.pushNamed(context, Routes.homescreen);
    }
  }

  @override
  void dispose() {
    // Set _isFirstOpening to false, because if this Code is beeing executed,
    // the App has to be running. So the User opened it.
    // Therefore it isn't the first opening anymore.
    _isFirstOpening = false;
  }
}
