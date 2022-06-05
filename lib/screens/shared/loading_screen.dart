library shared_screens;

import 'package:bloc_implementation/bloc_implementation.dart' show BlocParent;
import 'package:flutter/material.dart';
import 'package:savekey/blocs/loading_bloc.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  LoadingBloc? loadingBloc;

  @override
  Widget build(BuildContext context) {
    loadingBloc ??= BlocParent.of(context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadingBloc!.isFirstOpening(context);
    });
    return const IgnorePointer(
      ignoring: true,
      ignoringSemantics: true,
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
