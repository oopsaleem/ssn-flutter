import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/constants/app_insets.dart';
import '../../core/views/widgets/universal/animated_hide.dart';
import '../../home/views/widgets/language_picker_widget.dart';
import '../../l10n/generated/l10n.dart';
import '../../settings/controllers/settings.dart';
import '../../settings/views/dialogs/reset_settings_dialog.dart';
import '../../settings/views/widgets/app_bar_elevation_slider.dart';
import '../../settings/views/widgets/dark_app_bar_style_popup_menu.dart';
import '../../settings/views/widgets/dark_colors_swap_switch.dart';
import '../../settings/views/widgets/dark_compute_theme_switch.dart';
import '../../settings/views/widgets/dark_level_slider.dart';
import '../../settings/views/widgets/dark_true_black_switch.dart';
import '../../settings/views/widgets/light_app_bar_style_popup_menu.dart';
import '../../settings/views/widgets/light_colors_swap_switch.dart';
import '../../settings/views/widgets/theme_mode_list_tile.dart';
import '../../settings/views/widgets/theme_popup_menu.dart';
import '../../settings/views/widgets/use_material3_switch.dart';
import '../../settings/views/widgets/use_sub_themes_list_tile.dart';

/// A widget that allows us to change some of the theme settings. Intended
/// to be used in a BottomSheet.
///
/// Here we as an example demonstrate using some of our settings widgets
/// in a bottom sheet.
///
/// The Widgets we use Riverpod StateNotifierProviders based controllers to
/// display their values. These controller are then used in the theme
/// definitions that we use in out MaterialApp. As the controller value are
/// manipulated with UI views, the theme changes and the app rebuilds with new
/// resulting theme applied.
///
/// The Flutter theme handles the animation between theme changes since its
/// properties lerp between values and use animated theme.
class BottomSheetSettings extends ConsumerWidget {
  const BottomSheetSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isLight = Theme.of(context).brightness == Brightness.light;
    return SizedBox(
      height: 400,
      child: Column(
        children: <Widget>[
          const _CloseBottomSheetHandle(),
          Expanded(
            child: ListView(
              controller: ScrollController(),
              primary: false,
              children: <Widget>[
                ListTile(title: Text(T.of(context).appSettingPageTitle)),
                const Divider(),
                const LanguagePickerWidget(),
                const ThemePopupMenu(),
                const UseMaterial3Switch(),
                UseSubThemesListTile(
                  title: Text(T.of(context).componentThemes),
                  subtitle: Text(T.of(context).componentThemesDetail),
                ),
                ThemeModeListTile(title: Text(T.of(context).themeModeTitle)),
                if (isLight)
                  LightColorsSwapSwitch(
                    title: T.of(context).swapColorTitle,
                    subtitle: T.of(context).swapColorDetail,
                  )
                else
                  DarkColorsSwapSwitch(
                    title: T.of(context).swapColorTitle,
                    subtitle: T.of(context).swapColorDetail,
                  ),
                // Hide the extra dark mode controls in light theme mode.
                AnimatedHide(
                  hide: isLight,
                  child: const Column(
                    children: <Widget>[
                      DarkIsTrueBlackSwitch(),
                      DarkComputeThemeSwitch(),
                      DarkLevelSlider(),
                    ],
                  ),
                ),
                const Divider(),
                ListTile(title: Text(T.of(context).appBarStyleTitle)),
                if (isLight)
                  LightAppBarStylePopupMenu(
                    title: T.of(context).appBarStylePopupMenuTitle,
                    defaultLabel: T
                        .of(context)
                        .appBarStylePopupMenuDefaultLabel,
                  )
                else
                  DarkAppBarStylePopupMenu(
                    title: T.of(context).appBarStylePopupMenuTitle,
                    defaultLabel: T
                        .of(context)
                        .appBarStylePopupMenuDefaultLabel,
                  ),
                const AppBarElevationSlider(),
                ListTile(
                  title: Text(T.of(context).resetSettings),
                  leading: const Icon(Icons.restore),
                  onTap: () async {
                    final bool? reset = await showDialog<bool?>(
                      context: context,
                      builder: (BuildContext context) {
                        return const ResetSettingsDialog();
                      },
                    );
                    if (reset ?? false) {
                      Settings.reset(ref);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// This widget is used to draw a bottom sheet handle that can be tapped
// to close the bottom sheet. Usually placed as top item in a column or
// ListView in a BottomSheet.
class _CloseBottomSheetHandle extends StatelessWidget {
  const _CloseBottomSheetHandle();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: SizedBox(
        height: AppInsets.xl,
        child: Center(
          child: Material(
            color: Theme.of(context).colorScheme.primary.withAlpha(150),
            type: MaterialType.card,
            elevation: 1,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppInsets.xl),
            ),
            child: const SizedBox(width: 100, height: 8),
          ),
        ),
      ),
    );
  }
}
