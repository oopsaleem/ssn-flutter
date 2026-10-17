import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../about/views/about.dart';
import '../../bottom_sheet/views/bottom_sheet_settings.dart';
import '../../core/constants/app_const.dart';
import '../../core/constants/app_icons.dart';
import '../../core/constants/app_insets.dart';
import '../../core/utils/app_scroll_behavior.dart';
import '../../home/views/pages/home_page.dart';
import '../../l10n/generated/l10n.dart';
import '../../settings/views/widgets/theme_mode_list_tile.dart';
import '../../theme_showcase/views/pages/theme_showcase_page.dart';

/// An AppDrawer widget used on two pages in this demo application.
///
/// The Drawer shows that for example that our ThemeModeSwitch() widget can
/// just be dropped in the drawer to control theme mode from there as well.
class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    return Drawer(
      child: ScrollConfiguration(
        // The menu can scroll, but bounce and glow scroll effects are removed.
        behavior: ScrollNoEdgeEffect(),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd,
                  colors: <Color>[
                    theme.colorScheme.primary,
                    theme.primaryColorLight,
                  ],
                ),
              ),
              child: Text(
                AppConst.appName,
                style: theme.primaryTextTheme.headlineMedium,
              ),
            ),
            _Header(T.of(context).pages),
            ListTile(
              title: Text(T.of(context).homePageTitle),
              trailing: const Icon(AppIcons.menuItemOpen),
              onTap: () async {
                Navigator.pop(context);
                await Navigator.pushReplacementNamed(context, HomePage.route);
              },
            ),
            ListTile(
              title: Text(T.of(context).themShowcasePageTitle),
              trailing: const Icon(AppIcons.menuItemOpen),
              onTap: () async {
                Navigator.pop(context);
                await Navigator.pushReplacementNamed(
                  context,
                  ThemeShowcasePage.route,
                );
              },
            ),

            // The logout option is only shown if we are logged in.
            // ListTile(
            //   title: Text(T.of(context).hoursPageTitle),
            //   trailing: const Icon(AppIcons.menuItemOpen),
            //   onTap: () async {
            //     Navigator.pop(context);
            //     await Navigator.pushNamed(context, SplashPage.route);
            //   },
            // ),
            const Divider(),
            // _Header(T.of(context).themeModeTitle),
            // const UseMaterial3Switch(),
            // UseSubThemesListTile(
            //   title: Text(T.of(context).componentThemes),
            // ),
            ThemeModeListTile(title: Text(T.of(context).themeModeTitle)),

            const Divider(),
            // _Header(T.of(context).language),

            ListTile(
              title: Text(T.of(context).settingsPageTitle),
              trailing: const Icon(AppIcons.menuItemOpen),
              onTap: () {
                Navigator.pop(context);
                showBottomSheet(
                  context: context,
                  builder: (BuildContext context) =>
                      const BottomSheetSettings(),
                );
              },
            ),
            ListTile(
              title: Text(T.of(context).about),
              // trailing: const Icon(AppIcons.menuItemOpen),
              onTap: () {
                Navigator.pop(context);
                showAppAboutDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(
        AppInsets.l,
        AppInsets.s,
        AppInsets.l,
        AppInsets.xs,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
