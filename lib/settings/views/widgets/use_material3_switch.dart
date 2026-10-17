import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/views/widgets/universal/switch_list_tile_adaptive.dart';
import '../../../l10n/generated/l10n.dart';
import '../../controllers/settings.dart';

class UseMaterial3Switch extends ConsumerWidget {
  const UseMaterial3Switch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SwitchListTileAdaptive(
      title: Text(T.of(context).useMaterial3),
      value: ref.watch(Settings.useMaterial3Provider),
      onChanged: ref.read(Settings.useMaterial3Provider.notifier).set,
    );
  }
}
