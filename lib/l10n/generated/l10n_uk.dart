// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class TUk extends T {
  TUk([String locale = 'uk']) : super(locale);

  @override
  String get language => 'українська';

  @override
  String greeting(String username) {
    return 'Привіт $username!';
  }

  @override
  String localeLanguageWritten(String languageWritten) {
    String _temp0 = intl.Intl.selectLogic(
      languageWritten,
      {
        'arabic': 'арабська',
        'english': 'англійська',
        'dutch': 'голландська',
        'polish': 'польський',
        'russian': 'російський',
        'ukrainian': 'українська',
        'bulgaria': 'Болгарія',
        'czech': 'чеська',
        'slovak': 'словацька',
        'other': 'інший',
      },
    );
    return '$_temp0';
  }

  @override
  String get pages => 'Pages';

  @override
  String get homePageTitle => 'Home';

  @override
  String get hoursPageTitle => 'Hours';

  @override
  String get themShowcasePageTitle => 'Theme showcase';

  @override
  String get settingsPageTitle => 'Settings';

  @override
  String get resetSettings => 'Reset settings';

  @override
  String themeModeSubtitle(String modeSubtitle) {
    String _temp0 = intl.Intl.selectLogic(
      modeSubtitle,
      {
        'system': 'System',
        'dark': 'Dark',
        'light': 'Light',
        'other': 'Other',
      },
    );
    return '$_temp0';
  }

  @override
  String get resetSettingsDialogTitle => 'Reset Application Settings';

  @override
  String resetSettingsDialogContent(String usedDb) {
    return 'Reset all $usedDb theme settings back to their default values?';
  }

  @override
  String get resetSettingsDialogConfirm => 'Reset';

  @override
  String get resetSettingsDialogCancel => 'Cancel';

  @override
  String get themeModeTitle => 'Theme';

  @override
  String get appSettingPageTitle => 'Application Settings';

  @override
  String get useMaterial3 => 'Use Material 3';

  @override
  String get componentThemes => 'Component themes';

  @override
  String get componentThemesDetail =>
      'Enable FlexColorScheme opinionated sub themes';

  @override
  String get swapColorTitle => 'Swap colors';

  @override
  String get swapColorDetail => 'Swap primary and secondary colors';

  @override
  String get appBarStyleTitle => 'AppBar';

  @override
  String get appBarStylePopupMenuTitle => 'AppBar style';

  @override
  String get appBarStylePopupMenuDefaultLabel => 'Default';

  @override
  String get trueBlackSwitchTitle => 'Use true black';

  @override
  String get computeDarkSchemaColorsSwitchTitle => 'Compute dark scheme colors';

  @override
  String get computeDarkSchemaColorsSwitchSubtitle =>
      'Dark scheme colors are computed from the light scheme, instead of using defined dark scheme colors.';

  @override
  String get settingsAppBarElevationSliderTitle => 'AppBar elevation';

  @override
  String get levelLabel => 'Level';

  @override
  String get elevationLabel => 'Elevation';

  @override
  String colorSchemeName(String schemeName) {
    String _temp0 = intl.Intl.selectLogic(
      schemeName,
      {
        'Juanandpink': 'Juan and pink',
        'OhMandyred': 'Oh Mandy red',
        'Mossandmustard': 'Moss and mustard',
        'OregonandEden': 'Oregon and Eden',
        'Pinkandlaser': 'Pink and laser',
        'Materialdefault': 'Material default',
        'Materialhighcontrast': 'Material high contrast',
        'Bluedelight': 'Blue delight',
        'Indigonights': 'Indigo nights',
        'Hippieblue': 'Hippie blue',
        'Aquablue': 'Aqua blue',
        'Brandblues': 'Brand blues',
        'Deepbluesea': 'Deep blue sea',
        'Pinksakura': 'Pink sakura',
        'OhMandyred': 'Oh Mandy red',
        'Redtornado': 'Red tornado',
        'Redredwine': 'Red red wine',
        'Purplebrown': 'Purple brown',
        'Greenforest': 'Green forest',
        'Greenmoney': 'Green money',
        'Greenjungle': 'Green jungle',
        'Greylaw': 'Grey law',
        'Willowandwasabi': 'Willow and wasabi',
        'Goldsunset': 'Gold sunset',
        'Mangomojito': 'Mango mojito',
        'Amberblue': 'Amber blue',
        'Vesuviusburned': 'Vesuvius burned',
        'Deeppurple': 'Deep purple',
        'Ebonyclay': 'Ebony clay',
        'Barossa': 'Barossa',
        'Sharkandorange': 'Shark and orange',
        'Bigstonetulip': 'Big stone tulip',
        'Damaskandlunar': 'Damask and lunar',
        'Bahamaandtrinidad': 'Bahama and trinidad',
        'Mallardandvalencia': 'Mallard and valencia',
        'Espressoandcrema': 'Espresso and crema',
        'Outerspacestage': 'Outer space stage',
        'Bluewhale': 'Blue whale',
        'SanJuanblue': 'San Juan blue',
        'Rosewood': 'Rosewood',
        'Blumine': 'Blumine',
        'FlutterDash': 'Flutter Dash',
        'M3baseline': 'M3 baseline',
        'Verdungreen': 'Verdun green',
        'Dellgenoagreen': 'Dell genoa green',
        'other': 'other',
      },
    );
    return '$_temp0';
  }

  @override
  String colorSchemeDesc(String schemeDesc) {
    String _temp0 = intl.Intl.selectLogic(
      schemeDesc,
      {
        'Juanandpink': 'San Juan blue and sea pink.',
        'OhMandyred': 'Mandy red and Viking blue inspired red theme',
        'Mossandmustard': 'Moss green and mustard yellow.',
        'OregonandEden': 'Oregon orange and eden green.',
        'Pinkandlaser': 'Tapestry pink and laser yellow',
        'Materialdefault':
            'Default Material 2 color theme, used in the design guide',
        'Materialhighcontrast': 'High contrast Material 2 design guide theme',
        'Bluedelight':
            'Blue color theme, based on Material blue and light blue colors',
        'Indigonights':
            'Indigo color theme, based on Material indigo and deep purple colors',
        'Hippieblue':
            'Hippie blue with surfie green and chock coral pink theme',
        'Aquablue': 'Aqua tropical ocean blue theme',
        'Brandblues': 'Blue colors used in well known brand themes',
        'Deepbluesea': 'Dark deep blue sea color theme',
        'Pinksakura':
            'Pink color theme, based on sakura cherry blossom like colors',
        'OhMandyred': 'Mandy red and Viking blue inspired red theme',
        'Redtornado': 'Red color theme, based on Material red and pink colors',
        'Redredwine': 'Red color theme, based on red wine like colors',
        'Purplebrown':
            'Purple brown tinted aubergine and eggplant colored theme',
        'Greenforest':
            'Green color theme, based on Material green and cyan colors',
        'Greenmoney': 'Green money and finance style color theme',
        'Greenjungle': 'Green jungle and rain forest color theme',
        'Greylaw':
            'Material blue grey and ultra dark purple color theme, law firm style',
        'Willowandwasabi':
            'Wild Willow and wasabi green with orchid purple inspired colors',
        'Goldsunset': 'Gold sunset color theme, based on orange like colors',
        'Mangomojito': 'Orange and green Mango mojito color theme',
        'Amberblue':
            'Amber blaze and blue color theme, based on Material amber and blue accent colors',
        'Vesuviusburned': 'Vesuvius burned orange and eden green theme',
        'Deeppurple':
            'Deep purple daisy bush theme, based on Material deepPurple and lightBlueAccent colors',
        'Ebonyclay':
            'Ebony clay dark blue-grey and watercourse green colored theme',
        'Barossa': 'Barossa red and cardin green colored theme',
        'Sharkandorange': 'Shark grey and orange ecstasy colored theme',
        'Bigstonetulip': 'Big stone blue and tulip tree yellow colored theme',
        'Damaskandlunar': 'Damask red and lunar green colored theme',
        'Bahamaandtrinidad': 'Bahama blue and trinidad orange colored theme',
        'Mallardandvalencia': 'Mallard green and Valencia pink colored theme',
        'Espressoandcrema': 'Espresso dark brown and crema colored theme',
        'Outerspacestage': 'Outer space dark blue-grey and stage red theme',
        'Bluewhale':
            'Blue whale, jungle green and outrageous tango orange theme',
        'SanJuanblue': 'San Juan blue and pink salmon theme',
        'Rosewood': 'Rosewood red, with horses neck and driftwood theme',
        'Blumine': 'Blumine, easter blue and saffron mango theme',
        'FlutterDash': 'Flutter Dash wallpaper based theme',
        'M3baseline': 'Material guide 3 baseline based theme',
        'Verdungreen': 'Material guide 3 verdun and mineral green with hemlock',
        'Dellgenoagreen':
            'Material guide 3 theme with dell, axolotl and genoa greens',
        'other': 'other',
      },
    );
    return '$_temp0';
  }

  @override
  String get about => 'About';
}
