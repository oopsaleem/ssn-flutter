import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../l10n/generated/l10n.dart';
import '../../../persistence/key_value/controllers/used_key_value_db_provider.dart';

/// Dialog to confirm if user wants to reset the current FlexColorscheme setup.
class ResetSettingsDialog extends ConsumerWidget {
  const ResetSettingsDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String usedDb =
        ref.watch(usedKeyValueDbProvider.notifier).state.describe;
    return AlertDialog(
      title: Text(T.of(context).resetSettingsDialogTitle),
      content: Text(T.of(context).resetSettingsDialogContent(usedDb)),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: Text(T.of(context).resetSettingsDialogCancel)),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text(T.of(context).resetSettingsDialogConfirm)),
      ],
    );
  }
}
