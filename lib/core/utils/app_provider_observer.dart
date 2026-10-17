import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Set the bool flag to true to show debug prints. Even if you forgot
// to set it to false, debug prints will not show in release builds.
// The handy part is that if it gets in the way in debugging, it is an easy
// toggle to turn it off here for just this feature. You can leave it true
// below to see this features logs in debug mode.
const bool _debug = !kReleaseMode && true;

/// AppProviderObserver represents a provider observer for changes in any
/// providers. If not in release mode, it debugPrints the changes.
base class AppProviderObserver extends ProviderObserver {
  AppProviderObserver();

  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    if (_debug) {
      debugPrint(
        'PROVIDER    : ${context.provider.name ?? '<NO NAME>'}\n'
        '  Type      : ${context.provider.runtimeType}\n'
        '  Old value : $previousValue\n'
        '  New value : $newValue',
      );
    }
  }
}
