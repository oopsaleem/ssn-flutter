import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/views/widgets/universal/switch_list_tile_adaptive.dart';
import '../../controllers/settings.dart';

class LightColorsSwapSwitch extends ConsumerWidget {
  final String title;
  final String subtitle;

  const LightColorsSwapSwitch(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SwitchListTileAdaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: ref.watch(Settings.lightSwapColorsProvider),
      onChanged: ref.read(Settings.lightSwapColorsProvider.notifier).set,
    );
  }
}
