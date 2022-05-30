library main;

import 'dart:io';

import 'package:bloc_implementation/bloc_implementation.dart' show BlocParent;
import 'package:flutter/material.dart';
import 'package:modern_themes/modern_themes.dart';
import 'package:savekey/blocs/loading_bloc.dart';
import 'package:savekey/blocs/welcome_bloc.dart';
import 'package:savekey/logic/routes.dart';
import 'package:savekey/screens/shared/loading_screen.dart';
import 'package:savekey/screens/shared/unknown_page.dart';
import 'package:savekey/screens/shared/welcome_screen.dart';
import 'package:savekey/values/translations.dart';
import 'package:string_translate/string_translate.dart'
    hide Translate, StandardTranslations;

void main() {
  runApp(const Savekey());
}

/// Determines whether the OS is an
/// Desktop OS or not.
bool _isDesktop() {
  const desktopOS = <String>['macos', 'windos', 'linux'];
  if (desktopOS.contains(Platform.operatingSystem)) {
    return true;
  } else {
    return false;
  }
}

/// The Standard Stateless Widget that represents the
/// Material App.
/// Is created as first Widget on Startup.
class Savekey extends StatelessWidget {
  const Savekey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetRouter.isDesktop = _isDesktop();
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

      // Theme
      themeMode: ThemeMode.system,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      highContrastTheme: Themes.highContrastLightTheme,
      highContrastDarkTheme: Themes.highContrastDarkTheme,

      // Locales
      supportedLocales: Translation.supportedLocales,
      localizationsDelegates: TranslationDelegates.localizationDelegates,
      locale: Translation.defaultLocation,

      // Routes
      initialRoute: '/',
      routes: {
        LoadingScreen.routeName: (context) => BlocParent(
              bloc: LoadingBloc(),
              child: const LoadingScreen(),
            ),
        WelcomeScreen.routeName: (context) => BlocParent(
              bloc: WelcomeBloc(),
              child: const WelcomeScreen(),
            ),
        Routes.homescreen: (context) => WidgetRouter.homescreen(),
      },
      onUnknownRoute: (_) => MaterialPageRoute(
        builder: (_) => const UnknownScreen(),
      ),

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
