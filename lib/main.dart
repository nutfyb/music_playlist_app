import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/core/core.dart';

import 'bootstrap.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initialize();

  bootstrap(() => const AppView());
}
