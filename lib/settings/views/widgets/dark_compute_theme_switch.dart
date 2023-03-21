import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/views/widgets/universal/switch_list_tile_adaptive.dart';
import '../../../l10n/generated/l10n.dart';
import '../../controllers/settings.dart';

class DarkComputeThemeSwitch extends ConsumerWidget {
  const DarkComputeThemeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SwitchListTileAdaptive(
      title: Text(T.of(context).computeDarkSchemaColorsSwitchTitle),
      subtitle: Text(T.of(context).computeDarkSchemaColorsSwitchSubtitle),
      value: ref.watch(Settings.darkComputeThemeProvider),
      onChanged: ref.read(Settings.darkComputeThemeProvider.notifier).set,
    );
  }
}
