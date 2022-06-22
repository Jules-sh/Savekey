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
  late final LoadingBloc? loadingBloc;

  @override
  Widget build(BuildContext context) {
    // Init and assign Bloc, if it isn't assigned yet
    loadingBloc ??= BlocParent.of(context);

    // A the call to the isFirstOpening Method,
    // after the build Method is done.
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
