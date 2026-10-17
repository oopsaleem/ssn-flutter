import 'package:flutter_localizations/flutter_localizations.dart'
    hide GlobalMaterialLocalizations;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/constants/app_const.dart';
import '../../core/utils/app_scroll_behavior.dart';
import '../../home/views/pages/home_page.dart';
import '../../l10n/generated/l10n.dart';
import '../../l10n/l10n.dart';
import '../../settings/controllers/settings.dart';
import '../../splash/views/splash_page.dart';
import '../../theme/controllers/theme_providers.dart';
import '../../theme_showcase/views/pages/theme_showcase_page.dart';

/// The [MaterialApp] widget for the ThemeDemo application.
///
/// We use a ConsumerWidget to access the Riverpod providers we
/// use to control the used light and dark themes, as well as theme mode.
class SsnApp extends ConsumerWidget {
  const SsnApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const AppScrollBehavior(),
      title: AppConst.appName,
      theme: ref.watch(lightThemeProvider),
      darkTheme: ref.watch(darkThemeProvider),
      themeMode: ref.watch(Settings.themeModeProvider),
      locale: Locale(ref.watch(Settings.localeProvider) ?? 'en'),
      supportedLocales: L10n.supportedLanguages.map((e) => Locale(e.code)),
      localizationsDelegates: const [
        T.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      initialRoute: HomePage.route,
      routes: <String, WidgetBuilder>{
        SplashPage.route: (BuildContext context) => const SplashPage(),
        ThemeShowcasePage.route: (BuildContext context) =>
            const ThemeShowcasePage(),
        HomePage.route: (BuildContext context) => const HomePage(),
      },
    );
  }
}
