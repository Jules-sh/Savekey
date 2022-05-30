library values;

import 'dart:ui' show Locale;

import 'package:string_translate/string_translate.dart'
    show StandardTranslations, TranslationLocales;

/// Contains the Translated Strings
class TranslatedStrings {
  /// Own Translations, that are not provided through the [StandardTranslations]
  static final Map<String, Map<Locale, String>> _translations = {
    'We didn\'t found the Page you were looking for': {
      TranslationLocales.german:
          'Wir haben die Seite die du gesucht hast nicht gefunden',
      // TODO: add Translations
    }
  };

  /// What actually is used to translate Stuff in the App.
  /// It adds the [_translations], as much as a few [StandardTranslations]
  /// to a Map and returns the complete Map
  static Map<String, Map<Locale, String>> get translations {
    final Map<String, Map<Locale, String>> localTranslations = {};

    localTranslations.addAll(_translations);
    localTranslations.addAll(StandardTranslations.actions);
    localTranslations.addAll(StandardTranslations.error);

    return localTranslations;
  }
}
