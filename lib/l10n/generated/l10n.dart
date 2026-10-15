import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_ar.dart';
import 'l10n_bg.dart';
import 'l10n_cs.dart';
import 'l10n_en.dart';
import 'l10n_nl.dart';
import 'l10n_pl.dart';
import 'l10n_ru.dart';
import 'l10n_sk.dart';
import 'l10n_uk.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of T
/// returned by `T.of(context)`.
///
/// Applications need to include `T.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: T.localizationsDelegates,
///   supportedLocales: T.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the T.supportedLocales
/// property.
abstract class T {
  T(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static T of(BuildContext context) {
    return Localizations.of<T>(context, T)!;
  }

  static const LocalizationsDelegate<T> delegate = _TDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bg'),
    Locale('cs'),
    Locale('en'),
    Locale('nl'),
    Locale('pl'),
    Locale('ru'),
    Locale('sk'),
    Locale('uk')
  ];

  /// current language
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// current language
  ///
  /// In en, this message translates to:
  /// **'Hi {username}!'**
  String greeting(String username);

  /// locale language written in current locale
  ///
  /// In en, this message translates to:
  /// **'{languageWritten, select, arabic{Arabic} english{English} dutch{Dutch} polish{Polish} russian{Russian} ukrainian{Ukrainian} bulgaria{Bulgaria} czech{Czech} slovak{Slovak} other{Other}}'**
  String localeLanguageWritten(String languageWritten);

  /// No description provided for @pages.
  ///
  /// In en, this message translates to:
  /// **'Pages'**
  String get pages;

  /// No description provided for @homePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homePageTitle;

  /// No description provided for @hoursPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get hoursPageTitle;

  /// No description provided for @themShowcasePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Theme showcase'**
  String get themShowcasePageTitle;

  /// No description provided for @settingsPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsPageTitle;

  /// No description provided for @resetSettings.
  ///
  /// In en, this message translates to:
  /// **'Reset settings'**
  String get resetSettings;

  /// Theme subtitle
  ///
  /// In en, this message translates to:
  /// **'{modeSubtitle, select, system{System} dark{Dark} light{Light} other{Other}}'**
  String themeModeSubtitle(String modeSubtitle);

  /// No description provided for @resetSettingsDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset Application Settings'**
  String get resetSettingsDialogTitle;

  /// Current persisted db
  ///
  /// In en, this message translates to:
  /// **'Reset all {usedDb} theme settings back to their default values?'**
  String resetSettingsDialogContent(String usedDb);

  /// No description provided for @resetSettingsDialogConfirm.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get resetSettingsDialogConfirm;

  /// No description provided for @resetSettingsDialogCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get resetSettingsDialogCancel;

  /// No description provided for @themeModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get themeModeTitle;

  /// No description provided for @appSettingPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Application Settings'**
  String get appSettingPageTitle;

  /// No description provided for @useMaterial3.
  ///
  /// In en, this message translates to:
  /// **'Use Material 3'**
  String get useMaterial3;

  /// No description provided for @componentThemes.
  ///
  /// In en, this message translates to:
  /// **'Component themes'**
  String get componentThemes;

  /// No description provided for @componentThemesDetail.
  ///
  /// In en, this message translates to:
  /// **'Enable FlexColorScheme opinionated sub themes'**
  String get componentThemesDetail;

  /// No description provided for @swapColorTitle.
  ///
  /// In en, this message translates to:
  /// **'Swap colors'**
  String get swapColorTitle;

  /// No description provided for @swapColorDetail.
  ///
  /// In en, this message translates to:
  /// **'Swap primary and secondary colors'**
  String get swapColorDetail;

  /// No description provided for @appBarStyleTitle.
  ///
  /// In en, this message translates to:
  /// **'AppBar'**
  String get appBarStyleTitle;

  /// No description provided for @appBarStylePopupMenuTitle.
  ///
  /// In en, this message translates to:
  /// **'AppBar style'**
  String get appBarStylePopupMenuTitle;

  /// No description provided for @appBarStylePopupMenuDefaultLabel.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get appBarStylePopupMenuDefaultLabel;

  /// No description provided for @trueBlackSwitchTitle.
  ///
  /// In en, this message translates to:
  /// **'Use true black'**
  String get trueBlackSwitchTitle;

  /// No description provided for @computeDarkSchemaColorsSwitchTitle.
  ///
  /// In en, this message translates to:
  /// **'Compute dark scheme colors'**
  String get computeDarkSchemaColorsSwitchTitle;

  /// No description provided for @computeDarkSchemaColorsSwitchSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Dark scheme colors are computed from the light scheme, instead of using defined dark scheme colors.'**
  String get computeDarkSchemaColorsSwitchSubtitle;

  /// No description provided for @settingsAppBarElevationSliderTitle.
  ///
  /// In en, this message translates to:
  /// **'AppBar elevation'**
  String get settingsAppBarElevationSliderTitle;

  /// No description provided for @levelLabel.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get levelLabel;

  /// No description provided for @elevationLabel.
  ///
  /// In en, this message translates to:
  /// **'Elevation'**
  String get elevationLabel;

  /// Color scheme name.
  ///
  /// In en, this message translates to:
  /// **'{schemeName, select, Juanandpink{Juan and pink} OhMandyred{Oh Mandy red} Mossandmustard{Moss and mustard} OregonandEden{Oregon and Eden} Pinkandlaser{Pink and laser} Materialdefault{Material default} Materialhighcontrast{Material high contrast} Bluedelight{Blue delight} Indigonights{Indigo nights} Hippieblue{Hippie blue} Aquablue{Aqua blue} Brandblues{Brand blues} Deepbluesea{Deep blue sea} Pinksakura{Pink sakura} OhMandyred{Oh Mandy red} Redtornado{Red tornado} Redredwine{Red red wine} Purplebrown{Purple brown} Greenforest{Green forest} Greenmoney{Green money} Greenjungle{Green jungle} Greylaw{Grey law} Willowandwasabi{Willow and wasabi} Goldsunset{Gold sunset} Mangomojito{Mango mojito} Amberblue{Amber blue} Vesuviusburned{Vesuvius burned} Deeppurple{Deep purple} Ebonyclay{Ebony clay} Barossa{Barossa} Sharkandorange{Shark and orange} Bigstonetulip{Big stone tulip} Damaskandlunar{Damask and lunar} Bahamaandtrinidad{Bahama and trinidad} Mallardandvalencia{Mallard and valencia} Espressoandcrema{Espresso and crema} Outerspacestage{Outer space stage} Bluewhale{Blue whale} SanJuanblue{San Juan blue} Rosewood{Rosewood} Blumine{Blumine} FlutterDash{Flutter Dash} M3baseline{M3 baseline} Verdungreen{Verdun green} Dellgenoagreen{Dell genoa green} other{other} }'**
  String colorSchemeName(String schemeName);

  /// Color scheme description.
  ///
  /// In en, this message translates to:
  /// **'{schemeDesc, select, Juanandpink{San Juan blue and sea pink.} OhMandyred{Mandy red and Viking blue inspired red theme} Mossandmustard{Moss green and mustard yellow.} OregonandEden{Oregon orange and eden green.} Pinkandlaser{Tapestry pink and laser yellow} Materialdefault{Default Material 2 color theme, used in the design guide} Materialhighcontrast{High contrast Material 2 design guide theme} Bluedelight{Blue color theme, based on Material blue and light blue colors} Indigonights{Indigo color theme, based on Material indigo and deep purple colors} Hippieblue{Hippie blue with surfie green and chock coral pink theme} Aquablue{Aqua tropical ocean blue theme} Brandblues{Blue colors used in well known brand themes} Deepbluesea{Dark deep blue sea color theme} Pinksakura{Pink color theme, based on sakura cherry blossom like colors} OhMandyred{Mandy red and Viking blue inspired red theme} Redtornado{Red color theme, based on Material red and pink colors} Redredwine{Red color theme, based on red wine like colors} Purplebrown{Purple brown tinted aubergine and eggplant colored theme} Greenforest{Green color theme, based on Material green and cyan colors} Greenmoney{Green money and finance style color theme} Greenjungle{Green jungle and rain forest color theme} Greylaw{Material blue grey and ultra dark purple color theme, law firm style} Willowandwasabi{Wild Willow and wasabi green with orchid purple inspired colors} Goldsunset{Gold sunset color theme, based on orange like colors} Mangomojito{Orange and green Mango mojito color theme} Amberblue{Amber blaze and blue color theme, based on Material amber and blue accent colors} Vesuviusburned{Vesuvius burned orange and eden green theme} Deeppurple{Deep purple daisy bush theme, based on Material deepPurple and lightBlueAccent colors} Ebonyclay{Ebony clay dark blue-grey and watercourse green colored theme} Barossa{Barossa red and cardin green colored theme} Sharkandorange{Shark grey and orange ecstasy colored theme} Bigstonetulip{Big stone blue and tulip tree yellow colored theme} Damaskandlunar{Damask red and lunar green colored theme} Bahamaandtrinidad{Bahama blue and trinidad orange colored theme} Mallardandvalencia{Mallard green and Valencia pink colored theme} Espressoandcrema{Espresso dark brown and crema colored theme} Outerspacestage{Outer space dark blue-grey and stage red theme} Bluewhale{Blue whale, jungle green and outrageous tango orange theme} SanJuanblue{San Juan blue and pink salmon theme} Rosewood{Rosewood red, with horses neck and driftwood theme} Blumine{Blumine, easter blue and saffron mango theme} FlutterDash{Flutter Dash wallpaper based theme} M3baseline{Material guide 3 baseline based theme} Verdungreen{Material guide 3 verdun and mineral green with hemlock} Dellgenoagreen{Material guide 3 theme with dell, axolotl and genoa greens} other{other} }'**
  String colorSchemeDesc(String schemeDesc);

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;
}

class _TDelegate extends LocalizationsDelegate<T> {
  const _TDelegate();

  @override
  Future<T> load(Locale locale) {
    return SynchronousFuture<T>(lookupT(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'bg',
        'cs',
        'en',
        'nl',
        'pl',
        'ru',
        'sk',
        'uk'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_TDelegate old) => false;
}

T lookupT(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return TAr();
    case 'bg':
      return TBg();
    case 'cs':
      return TCs();
    case 'en':
      return TEn();
    case 'nl':
      return TNl();
    case 'pl':
      return TPl();
    case 'ru':
      return TRu();
    case 'sk':
      return TSk();
    case 'uk':
      return TUk();
  }

  throw FlutterError(
      'T.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
