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
      TranslationLocales.french:
          'Nous n\'avons pas trouvé la page que vous cherchiez',
      TranslationLocales.spanish:
          'No encontramos la página que estabas buscando.',
      TranslationLocales.portuguese:
          'Não encontramos a Página que você estava procurando',
    },
    'Welcome at Savekey. Let\'s set up your first Database': {
      TranslationLocales.german:
          'Wilkommen bei Savekey. Lass uns deine erste Datenbank anlegen.',
      TranslationLocales.french:
          'Bienvenue chez Savekey. Configurons votre première base de données',
      TranslationLocales.spanish:
          'Bienvenido a Savekey. Configuremos su primera base de datos',
      TranslationLocales.portuguese:
          'Bem-vindo ao Savekey. Vamos configurar seu primeiro banco de dados',
    },
    'Enter your Name': {
      TranslationLocales.german: 'Gib deinen Namen ein',
      TranslationLocales.french: 'Entrez votre nom',
      TranslationLocales.spanish: 'Introduzca su nombre',
      TranslationLocales.portuguese: 'Digite seu nome',
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
