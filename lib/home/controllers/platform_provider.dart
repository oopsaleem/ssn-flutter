import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

// StateProvider used as controller for the selected platform.
//
// This one is not persisted. We want to get default platform when we start
// the app. This feature if useful for switching platform and simulating other
// platforms during development.
final StateProvider<TargetPlatform> platformProvider =
    StateProvider<TargetPlatform>(
      (Ref ref) => defaultTargetPlatform,
      name: 'platformProvider',
    );
