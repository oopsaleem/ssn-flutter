import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/constants/app_const.dart';
import '../../../core/constants/app_insets.dart';
import '../../../core/views/widgets/universal/page_body.dart';
import '../../../drawer/views/app_drawer.dart';
import '../../../l10n/generated/l10n.dart';

/// Home page showing with a simple Riverpod count and theme controls.
///
/// Also displays the active
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  static const String route = '/home';

  @override
  ConsumerState<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<HomePage> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController(
      keepScrollOffset: true,
      debugLabel: 'pageBodyScroll',
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = Theme.of(context);
    // final TextTheme textTheme = theme.textTheme;
    // final TextStyle medium = textTheme.headlineMedium!;

    final MediaQueryData media = MediaQuery.of(context);
    final double topPadding = media.padding.top + kToolbarHeight + AppInsets.m;
    final double bottomPadding =
        media.padding.bottom + kBottomNavigationBarHeight;

    final bool isNarrow = media.size.width < AppInsets.phoneWidthBreakpoint;
    final double sideMargin = isNarrow ? 0 : AppInsets.l;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(title: const Text(AppConst.appName)),
      drawer: const AppDrawer(),
      // This annotated region will change the Android system navigation bar to
      // a theme color, matching active theme mode and FlexColorScheme theme.
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: FlexColorScheme.themedSystemNavigationBar(context),
        child: PageBody(
          controller: scrollController,
          child: ListView(
            controller: scrollController,
            padding: EdgeInsets.fromLTRB(
              sideMargin,
              topPadding,
              sideMargin,
              bottomPadding,
            ),
            children: [Text(T.of(context).greeting('username'))],
          ),
        ),
      ),
    );
  }
}
