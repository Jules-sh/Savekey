library shared_screens;

import 'package:bloc_implementation/bloc_implementation.dart' show BlocParent;
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show LengthLimitingTextInputFormatter, MaxLengthEnforcement;
import 'package:savekey/blocs/welcome_bloc.dart';

/// Welcome Screen for Desktop and Mobile
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  /// Route Name of the Welcome Screen
  static const routeName = '/welcome_screen';

  @override
  State<StatefulWidget> createState() => _WelcomeScreenState();
}

/// State of the Welcome Screen
class _WelcomeScreenState extends State<WelcomeScreen> {
  /// Welcome Bloc for this Screen
  WelcomeBloc? bloc;

  @override
  Widget build(BuildContext context) {
    // Get and asign Bloc to Variable
    bloc ??= BlocParent.of(context);

    return Scaffold(
      body: _body,
    );
  }

  /// Body of the Welcome Screen
  Widget get _body {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.ltr,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          const Icon(
            Icons.account_circle_rounded,
            size: 50,
          ),
          TextField(
            autocorrect: true,
            autofillHints: const <String>[
              'Name',
              'Lastname',
            ],
            autofocus: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            dragStartBehavior: DragStartBehavior.down,
            enableIMEPersonalizedLearning: true,
            enableInteractiveSelection: true,
            enableSuggestions: true,
            enabled: true,
            expands: false,
            inputFormatters: <LengthLimitingTextInputFormatter>[
              LengthLimitingTextInputFormatter(
                40,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
              )
            ],
            keyboardAppearance: Theme.of(context).brightness,
            keyboardType: TextInputType.name,
            maxLength: 40,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            maxLines: 2,
            minLines: 1,
            obscureText: false,
            readOnly: false,
            scribbleEnabled: true,
            scrollPhysics: const BouncingScrollPhysics(),
            selectionControls: MaterialTextSelectionControls(),
            showCursor: true,
            smartDashesType: SmartDashesType.enabled,
            smartQuotesType: SmartQuotesType.enabled,
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            textCapitalization: TextCapitalization.words,
            textDirection: TextDirection.ltr,
            textInputAction: TextInputAction.done,
            toolbarOptions: const ToolbarOptions(
              copy: true,
              cut: true,
              paste: true,
              selectAll: true,
            ),
          ),
        ],
      ),
    );
  }
}
