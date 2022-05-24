library main;

import 'package:flutter/material.dart';
import 'package:savekey/values/translations.dart';
import 'package:string_translate/string_translate.dart'
    show Translation, TranslationLocales;

void main() {
  runApp(const Savekey());
}

/// The Standard Stateless Widget that represents the
/// Material App.
/// Is created as first Widget on Startup.
class Savekey extends StatelessWidget {
  const Savekey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Init the Translation Package
    Translation.init(
      supportedLocales: {
        TranslationLocales.english,
        TranslationLocales.german,
        TranslationLocales.french,
        TranslationLocales.spanish,
        TranslationLocales.portuguese,
      },
      defaultLocale: TranslationLocales.english,
      translations: TranslatedStrings.translations,
    );

    /// The Title of the App.
    /// Only used inside the App.
    /// This isn't shown to the User at any time.
    const title = 'Savekey_App';

    // Actual App
    return MaterialApp(
      /* Developer Section */
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,
      debugShowCheckedModeBanner: true,
      debugShowMaterialGrid: false,
      showPerformanceOverlay: false,
      showSemanticsDebugger: false,

      /* App Section */
      // Keys
      key: const GlobalObjectKey(title),
      navigatorKey: const GlobalObjectKey('Navigator_KEY'),
      scaffoldMessengerKey: const GlobalObjectKey('Scaffold_Messenger_KEY'),

      // TODO: change Theme Section
      // Theme
      themeMode: ThemeMode.system,

      // Locales
      supportedLocales: Translation.supportedLocales,

      // other
      title: title,
      onGenerateTitle: (_) {
        return title;
      },

      useInheritedMediaQuery: false,
      scrollBehavior: const MaterialScrollBehavior(),
    );
  }
}
