library shared_screens;

import 'package:flutter/material.dart';
import 'package:string_translate/string_translate.dart' show Translate;

/// Screen shown when the Page isn't found
class UnknownScreen extends StatelessWidget {
  const UnknownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body,
    );
  }

  /// The Body of the SCreen
  Widget get _body {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.ltr,
        verticalDirection: VerticalDirection.down,
        children: [
          const Icon(
            Icons.question_mark_rounded,
            size: 100,
          ),
          const SizedBox(height: 25),
          Text('We didn\'t found the Page you were looking for'.tr()),
        ],
      ),
    );
  }
}
