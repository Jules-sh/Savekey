library values;

import 'dart:ui' show Locale;

import 'package:string_translate/string_translate.dart';

class TranslatedStrings {
  static final Map<String, Map<Locale, String>> _translations = {
    'Savekey App': {
      TranslationLocales.german: 'App',
    }
  };

  static Map<String, Map<Locale, String>> get translations {
    final Map<String, Map<Locale, String>> localTranslations = {};

    localTranslations.addAll(_translations);
    localTranslations.addAll(StandardTranslations.actions);
    localTranslations.addAll(StandardTranslations.error);

    return localTranslations;
  }
}
