library shared_screens;

import 'package:bloc_implementation/bloc_implementation.dart' show BlocParent;
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show LengthLimitingTextInputFormatter, MaxLengthEnforcement;
import 'package:savekey/blocs/welcome_bloc.dart';
import 'package:savekey/logic/routes.dart';
import 'package:string_translate/string_translate.dart' show Translate;

/// Welcome Screen for Desktop and Mobile
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
    final Size query = MediaQuery.of(context).size;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.ltr,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          const Icon(
            Icons.lock_person_rounded,
            size: 100,
          ),
          const SizedBox(height: 15),
          Text('Welcome at Savekey. Let\'s set up your first Database'.tr()),
          const SizedBox(height: 15),
          SizedBox(
            width:
                WidgetRouter.isDesktop ? query.width * 0.8 : query.width * 0.8,
            child: TextField(
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
              decoration: InputDecoration(
                labelText: 'Enter your Name'.tr(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
