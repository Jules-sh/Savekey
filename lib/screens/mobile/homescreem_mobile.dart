library mobile_screens;

import 'package:bloc_implementation/bloc_implementation.dart';
import 'package:flutter/material.dart';
import 'package:savekey/blocs/homescreen_bloc.dart';

/// Homescreen Widget / Screen for the mobile Application
class HomescreenMobile extends StatefulWidget {
  const HomescreenMobile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomescreenMobileState();
}

/// State of the Mobile Homescreen
class _HomescreenMobileState extends State<HomescreenMobile> {
  HomescreenBloc? bloc;

  @override
  Widget build(BuildContext context) {
    bloc ??= BlocParent.of(context);

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }

  /// AppBar of the Mobile Homescreens
  /// AppBars are mainly used in Mobile Screens
  AppBar get _appBar {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text('Welcome ${bloc!.username}'),
    );
  }

  Widget get _body {
    return Container();
  }
}
