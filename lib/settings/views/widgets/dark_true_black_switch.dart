import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/views/widgets/universal/switch_list_tile_adaptive.dart';
import '../../../l10n/generated/l10n.dart';
import '../../controllers/settings.dart';

class DarkIsTrueBlackSwitch extends ConsumerWidget {
  const DarkIsTrueBlackSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SwitchListTileAdaptive(
      title: Text(T.of(context).trueBlackSwitchTitle),
      value: ref.watch(Settings.darkIsTrueBlackProvider),
      onChanged: ref.read(Settings.darkIsTrueBlackProvider.notifier).set,
    );
  }
}
