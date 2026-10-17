# ssnapp

**Staff Service Nederland** — a Flutter application built around a highly configurable
FlexColorScheme theme system, Riverpod state management and full app localization.

The app started as a FlexColorScheme + Riverpod theme demo and has been grown into the
SSN app shell: home page, theme showcase, drawer navigation, bottom-sheet settings,
persisted user preferences and 9 supported languages.

- **Version:** 0.9.5 (`pubspec.yaml` / `lib/core/constants/app_const.dart`)
- **Repository:** `git@github.com:oopsaleem/ssn-flutter.git`
- **Platforms:** Android, iOS, Web, macOS, Linux, Windows (all platform folders are present)
- **App id / bundle id:** `com.example.ssnapp`

## Features

- **Live theme engine** — light/dark `ThemeData` is derived from Riverpod providers, so
  every settings change animates into the UI immediately (Flutter lerps theme properties).
- **~70 color schemes** via [FlexColorScheme](https://pub.dev/packages/flex_color_scheme):
  5 hand-picked/custom schemes followed by all 67 built-in `FlexColor.schemesList`
  entries (`AppTheme.schemes` in `lib/theme/models/app_theme.dart`). The active scheme is
  selected by index (default index `35`).
- **Theme settings** (all persisted, all resettable from a dialog):
  - Material 2 / Material 3 toggle and opinionated component (sub) themes
  - Theme mode: system / light / dark
  - Light & dark surface blend mode and blend strength
  - Swap primary/secondary colors, AppBar style, elevation, opacity, transparent status bar
  - Computed dark theme from light colors (with saturation level) and true-black dark mode
  - Seeded color schemes: use primary/secondary/tertiary key colors with selectable
    `FlexTones` setup
  - Global component border radius slider
- **Pluggable key-value storage** — one `KeyValueDb` abstraction with three
  implementations (Hive, SharedPreferences, in-memory) that can be swapped **at runtime**
  without restarting; default is Hive box `settings_box`.
- **Localization** — 9 languages: Arabic, Bulgarian, Czech, English, Dutch, Polish,
  Russian, Slovak, Ukrainian. The chosen locale is persisted and applied app-wide.
- **Pages & UI**: home page (Riverpod counter + theme controls), theme showcase page,
  app drawer, settings bottom sheet, language picker, platform simulator
  (`TargetPlatform` provider for previewing iOS/Android/desktop behavior), about dialog,
  splash page.

## Tech stack

| Concern | Package |
| --- | --- |
| State management | `flutter_riverpod` (3.x, incl. legacy `StateNotifier`/`StateProvider`) |
| Theming | `flex_color_scheme` 9.x, `flex_color_picker`, `material_design_icons_flutter` |
| Persistence | `hive`, `shared_preferences`, `path_provider` |
| Localization | `flutter_localizations` + `intl` (custom `gen-l10n` config) |
| UI helpers | `material_ui`, `dropdown_search`, `cupertino_icons` |
| Misc | `url_launcher` |

Requires **Dart SDK `^3.12.0`** (developed/tested with Flutter stable 3.47.x).

## Getting started

```bash
# 1. Install dependencies
flutter pub get

# 2. Generate localizations (lib/l10n/generated)
flutter gen-l10n

# 3. Run on a connected device / emulator
flutter run
```

Useful checks:

```bash
flutter analyze        # strict lint set, see "Linting" below
flutter test           # no tests exist yet — the test/ folder is not created
flutter build apk      # or: ios / web / macos / linux / windows
```

## Project structure

```
lib/
├── main.dart                 # boots ProviderContainer, inits KV store, runApp
├── app/views/ssn_app.dart    # MaterialApp: themes, locale, routes, delegates
├── core/
│   ├── constants/            # app name/version, fonts, icons, insets, default DB
│   ├── utils/                # provider observer, scroll behavior, platform paths
│   └── views/widgets/        # shared universal + app widgets
├── home/                     # home page, counter & platform providers, settings page
├── settings/
│   ├── controllers/settings.dart   # every setting: default + provider + key + reset/init
│   └── views/widgets/              # one widget per theme setting
├── theme/
│   ├── controllers/theme_providers.dart  # lightThemeProvider / darkThemeProvider
│   └── models/app_theme.dart             # FlexColorScheme light()/dark() builders
├── persistence/key_value/    # KeyValueDb abstraction: Hive / Prefs / Memory
├── l10n/
│   ├── arb/intl_*.arb        # 9 source languages (template: intl_en.arb)
│   └── generated/            # generated T localizations (do not edit)
├── drawer/                   # navigation drawer
├── bottom_sheet/             # settings bottom sheet
├── theme_showcase/           # showcase page for the active theme
├── splash/                   # splash page
├── about/                    # about dialog
└── repositories/user/        # orphaned freezed output (see Notes)
```

### How theming works

1. `Settings` (`lib/settings/controllers/settings.dart`) exposes every preference as a
   `SettingsEntry<T>` Riverpod notifier with a default value, a persistence key, plus
   `init()`/`reset()` helpers.
2. `lightThemeProvider` / `darkThemeProvider` (`lib/theme/controllers/theme_providers.dart`)
   watch those entries and build `ThemeData` with `AppTheme.light/dark`
   (FlexColorScheme).
3. `SsnApp` watches the theme providers, so a settings change rebuilds `MaterialApp`
   with an animated theme transition.
4. `SettingsEntry` values are written through the `KeyValueDb` interface; the active
   implementation comes from `usedKeyValueDbProvider` (default: Hive).

### Startup flow

`main()` locks portrait orientation, creates a `ProviderContainer` with an
`AppProviderObserver` (logs provider changes in debug), initializes the key-value DB,
sets up the DB-swap listener, then runs the app via `UncontrolledProviderScope`.

### Routes

| Route | Page |
| --- | --- |
| `/home` | `HomePage` (initial route) |
| `/theme_showcase` | `ThemeShowcasePage` |
| `/splash` | `SplashPage` |

## Localization

Configured in `l10n.yaml`:

- `arb-dir: lib/l10n/arb`, template `intl_en.arb`
- output: `lib/l10n/generated/l10n.dart`, class name `T` (nullable getters disabled)
- untranslated messages are listed in `l10n_errors.txt`

After editing any `.arb` file, regenerate with `flutter gen-l10n`.

## Linting

`analysis_options.yaml` includes `all_lint_rules.yaml` (RydMike's linter preferences
v2.0.0) — essentially every Dart/Flutter lint rule enabled, with the undesired ones
turned off individually. Generated files (`*.g.dart`, `*.freezed.dart`) are excluded.
`custom_lint.log` in the repo root is a leftover log from a custom lint run.

## Notes

- `lib/core/constants/app_const.dart` still carries some demo-era values (e.g. the
  recorded FlexColorScheme/Flutter versions) — update it if you want the About dialog
  to report current versions.
- `lib/home/views/pages/settings_page.dart` defines a second `HomePage` class and is not
  referenced anywhere; the live settings UI is the bottom sheet in
  `lib/bottom_sheet/`.
- No `test/` directory exists yet; add widget/unit tests there when introducing them.
- `lib/repositories/user/user_repo.freezed.dart` is generated code whose source
  (`user_repo.dart`) is not in the repository and is not referenced anywhere. It is safe
  to delete, or you can add the missing source file and re-run the build runner.
