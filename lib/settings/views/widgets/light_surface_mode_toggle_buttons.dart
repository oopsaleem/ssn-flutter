import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../controllers/settings.dart';
import 'surface_mode_widgets.dart';

class LightSurfaceModeToggleButtons extends ConsumerWidget {
  const LightSurfaceModeToggleButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SurfaceModeToggleButtons(
      mode: ref.watch(Settings.lightSurfaceModeProvider),
      onChanged: ref.read(Settings.lightSurfaceModeProvider.notifier).set,
    );
  }
}
