import 'package:intl/intl.dart' as intl;

import 'l10n.dart';

/// The translations for Arabic (`ar`).
class TAr extends T {
  TAr([String locale = 'ar']) : super(locale);

  @override
  String get language => 'اللغة';

  @override
  String greeting(String username) {
    return 'مرحبا $username!';
  }

  @override
  String localeLanguageWritten(String languageWritten) {
    String _temp0 = intl.Intl.selectLogic(
      languageWritten,
      {
        'arabic': 'العربية',
        'english': 'الانجليزية',
        'dutch': 'الهولندية',
        'polish': 'البولندية',
        'russian': 'الروسية',
        'ukrainian': 'الاوكرانية',
        'bulgaria': 'البلغارية',
        'czech': 'التشيكية',
        'slovak': 'السلوڤاكية',
        'other': 'اخرى',
      },
    );
    return '$_temp0';
  }

  @override
  String get pages => 'الصفحات';

  @override
  String get homePageTitle => 'الرئيسية';

  @override
  String get hoursPageTitle => 'الساعات';

  @override
  String get themShowcasePageTitle => 'عرض الموضوع';

  @override
  String get settingsPageTitle => 'اعدادت البرنامج';

  @override
  String get resetSettings => 'اعادة ضبط الاعدادات';

  @override
  String themeModeSubtitle(String modeSubtitle) {
    String _temp0 = intl.Intl.selectLogic(
      modeSubtitle,
      {
        'system': 'نظام الجهاز',
        'dark': 'داكن',
        'light': 'فاتح',
        'other': 'اخر',
      },
    );
    return '$_temp0';
  }

  @override
  String get resetSettingsDialogTitle => 'اعادة ضبط إعدادات السمات';

  @override
  String resetSettingsDialogContent(String usedDb) {
    return 'هل ترغب باعادة ضبط إعدادات السمات الى الإعدادت الافتراضية؟ قاعدة البيانات $usedDb';
  }

  @override
  String get resetSettingsDialogConfirm => 'تأكيد';

  @override
  String get resetSettingsDialogCancel => 'إلغاء';

  @override
  String get themeModeTitle => 'السمات';

  @override
  String get moreSettingPageTitle => 'اعدادات اخرى';

  @override
  String get useMaterial3 => 'ادوات الاصدار ٣';

  @override
  String get componentThemes => 'ادوات السمات';

  @override
  String get componentThemesDetail => 'تمكين السمات الفرعية FlexColorScheme.';

  @override
  String get swapColorTitle => 'تبديل بين الالوان';

  @override
  String get swapColorDetail => 'تبديل بين الالوان الرئيسية و الثانوية.';

  @override
  String get appBarStyleTitle => 'شريط النظام';

  @override
  String get appBarStylePopupMenuTitle => 'نمط شريط النظام';

  @override
  String get appBarStylePopupMenuDefaultLabel => 'إفتراضي';

  @override
  String get trueBlackSwitchTitle => 'تمكين اللون الأسود الحقيقي';

  @override
  String get computeDarkSchemaColorsSwitchTitle => 'تمكين احتساب ألوان النظام الداكنة';

  @override
  String get computeDarkSchemaColorsSwitchSubtitle => 'يتم حساب ألوان النظام الداكنة من مخطط الإضاءة ، بدلاً من استخدام ألوان مخطط داكنة محددة.';

  @override
  String get settingsAppBarElevationSliderTitle => 'ارتفاع شريط النظام';

  @override
  String get levelLabel => 'المستوى';

  @override
  String get elevationLabel => 'ارتفاع';

  @override
  String colorSchemeName(String schemeName) {
    String _temp0 = intl.Intl.selectLogic(
      schemeName,
      {
        'Juanandpink': 'خوان والوردي',
        'OhMandyred': 'يا ماندي الحمراء',
        'Mossandmustard': 'الطحلب والخردل',
        'OregonandEden': 'أوريغون وإيدن',
        'Pinkandlaser': 'الوردي والليزر',
        'Materialdefault': 'الافتراضي المادي',
        'Materialhighcontrast': 'التباين المادي العالي',
        'Bluedelight': 'فرحة زرقاء',
        'Indigonights': 'ليالي النيلي',
        'Hippieblue': 'الهبي الأزرق',
        'Aquablue': 'أزرق مائي',
        'Brandblues': 'بلوز العلامة التجارية',
        'Deepbluesea': 'بحر الأزرق العميق',
        'Pinksakura': 'الوردي ساكورا',
        'OhMandyred': 'يا ماندي الحمراء',
        'Redtornado': 'إعصار أحمر',
        'Redredwine': 'النبيذ الأحمر الأحمر',
        'Purplebrown': 'بني بنفسجي',
        'Greenforest': 'غابة خضراء',
        'Greenmoney': 'المال الأخضر',
        'Greenjungle': 'الغابة الخضراء',
        'Greylaw': 'القانون الرمادي',
        'Willowandwasabi': 'الصفصاف والوسابي',
        'Goldsunset': 'غروب الشمس الذهب',
        'Mangomojito': 'مانجو موهيتو',
        'Amberblue': 'العنبر الأزرق',
        'Vesuviusburned': 'احترق فيزوف',
        'Deeppurple': 'ديب بيربل',
        'Ebonyclay': 'طين خشب الأبنوس',
        'Barossa': 'باروسا',
        'Sharkandorange': 'سمك القرش والبرتقال',
        'Bigstonetulip': 'حجر الخزامى الكبير',
        'Damaskandlunar': 'دمشقي وقمري',
        'Bahamaandtrinidad': 'باهاما وترينيداد',
        'Mallardandvalencia': 'مالارد وفالنسيا',
        'Espressoandcrema': 'اسبريسو وكريمة',
        'Outerspacestage': 'مرحلة الفضاء الخارجي',
        'Bluewhale': 'الحوت الأزرق',
        'SanJuanblue': 'سان خوان الأزرق',
        'Rosewood': 'روزوود',
        'Blumine': 'بلومين',
        'FlutterDash': 'اندفاعة رفرفة',
        'M3baseline': 'خط الأساس M3',
        'Verdungreen': 'فردان الخضراء',
        'Dellgenoagreen': 'ديل جنوى جرين',
        'other': 'آخر',
      },
    );
    return '$_temp0';
  }

  @override
  String colorSchemeDesc(String schemeDesc) {
    String _temp0 = intl.Intl.selectLogic(
      schemeDesc,
      {
        'Juanandpink': 'سان خوان الأزرق والوردي البحر.',
        'OhMandyred': 'موضوع أحمر Mandy Red و Viking blue مستوحى من اللون الأحمر',
        'Mossandmustard': 'الطحلب الأخضر والخردل الأصفر.',
        'OregonandEden': 'أوريغون البرتقالي والأخضر عدن.',
        'Pinkandlaser': 'نسيج وردي وأصفر ليزر',
        'Materialdefault': 'سمة اللون الافتراضية للمادة 2 ، تُستخدم في دليل التصميم',
        'Materialhighcontrast': 'موضوع دليل تصميم المواد 2 عالية التباين',
        'Bluedelight': 'موضوع اللون الأزرق ، على أساس ألوان المواد الزرقاء والأزرق الفاتح',
        'Indigonights': 'موضوع اللون النيلي ، على أساس المواد النيلي والألوان الأرجواني العميق',
        'Hippieblue': 'الهبي الأزرق مع موضوع الأخضر لركوب الأمواج والوردي الشائك',
        'Aquablue': 'أكوا الاستوائية المحيط الأزرق الموضوع',
        'Brandblues': 'تستخدم الألوان الزرقاء في موضوعات العلامات التجارية المعروفة',
        'Deepbluesea': 'أزرق داكن لون البحر الموضوع',
        'Pinksakura': 'موضوع اللون الوردي ، على أساس زهر الكرز ساكورا مثل الألوان',
        'OhMandyred': 'موضوع أحمر Mandy Red و Viking blue مستوحى من اللون الأحمر',
        'Redtornado': 'موضوع اللون الأحمر ، على أساس ألوان المواد الأحمر والوردي',
        'Redredwine': 'موضوع اللون الأحمر ، على أساس النبيذ الأحمر مثل الألوان',
        'Purplebrown': 'لون الباذنجان والباذنجان باللون البني الأرجواني',
        'Greenforest': 'موضوع اللون الأخضر ، على أساس ألوان المواد الخضراء والسماوية',
        'Greenmoney': 'المال الأخضر والتمويل موضوع اللون نمط',
        'Greenjungle': 'الغابة الخضراء والغابات المطيرة موضوع اللون',
        'Greylaw': 'مادة اللون الأزرق الرمادي والأرجواني الداكن للغاية موضوع ، على غرار شركة المحاماة',
        'Willowandwasabi': 'ويلو البري والأخضر الوسابي مع ألوان أرجوانية مستوحاة من الأوركيد',
        'Goldsunset': 'موضوع لون غروب الشمس الذهبي ، على أساس اللون البرتقالي مثل الألوان',
        'Mangomojito': 'البرتقالي والأخضر لون المانجو موخيتو الموضوع',
        'Amberblue': 'اللون الكهرماني واللون الأزرق ، بناءً على ألوان العنبر المادية والأزرق',
        'Vesuviusburned': 'حرق Vesuvius موضوع البرتقالي والأخضر عدن',
        'Deeppurple': 'سمة شجيرة أقحوان أرجوانية عميقة ، استنادًا إلى ألوان المواد العميقة والأرجواني الفاتح والأزرق الفاتح',
        'Ebonyclay': 'طين خشب الأبنوس ذو اللون الأزرق الداكن والرمادي والأخضر المائي',
        'Barossa': 'Barossa أحمر وكاردين موضوع اللون الأخضر',
        'Sharkandorange': 'سمك القرش الرمادي والبرتقالي النشوة الموضوع',
        'Bigstonetulip': 'كبير الحجر الأزرق والزنبق شجرة موضوع اللون الأصفر',
        'Damaskandlunar': 'دمشقي أحمر وقمر أخضر موضوع الملون',
        'Bahamaandtrinidad': 'باهاما الأزرق والبرتقالي ترينيداد موضوع اللون',
        'Mallardandvalencia': 'الأخضر مالارد وموضوع لون فالنسيا الوردي',
        'Espressoandcrema': 'اسبريسو بني غامق ولون كريما',
        'Outerspacestage': 'الفضاء الخارجي الأزرق الداكن الرمادي وموضوع المسرح الأحمر',
        'Bluewhale': 'الحوت الأزرق ، الغابة الخضراء والفاحشة موضوع البرتقالي التانغو',
        'SanJuanblue': 'موضوع سان خوان سمك السلمون الأزرق والوردي',
        'Rosewood': 'خشب الورد الأحمر ، مع رقبة خيول ومظهر الأخشاب الطافية',
        'Blumine': 'بلومين ، عيد الفصح الأزرق والزعفران موضوع المانجو',
        'FlutterDash': 'تستند خلفية Flutter Dash إلى الموضوع',
        'M3baseline': 'دليل المواد 3 أساس الموضوع الأساسي',
        'Verdungreen': 'دليل المواد 3 فردان ومعدني أخضر مع الشوكران',
        'Dellgenoagreen': 'دليل المواد 3 موضوع مع dell و axolotl و genoa greens',
        'other': 'آخر',
      },
    );
    return '$_temp0';
  }

  @override
  String get about => 'عن النظام';
}
