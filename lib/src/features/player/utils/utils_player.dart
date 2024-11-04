import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

// Controller for the miniplayer
// final MiniplayerController controller = MiniplayerController();

// Value notifier for player expansion progress
final ValueNotifier<double> playerExpandProgress = ValueNotifier(playerMinHeight);


final currentPlaylistNotifier = ValueNotifier<List<Music>>([]);

ValueNotifier<Music?> currentlyPlaying = ValueNotifier(null);

// Constants for player dimensions
const double playerMinHeight = 100;
const double playerMaxHeight = 400;
const double miniplayerPercentageDeclaration = 0.2;

// Utility functions for calculating percentages and values
double percentageFromValueInRange({
  required double min,
  required double max,
  required double value,
}) {
  return (value - min) / (max - min);
}

double valueFromPercentageInRange({
  required double min,
  required double max,
  required double percentage,
}) {
  return ((max - min) * percentage) + min;
}

double borderDouble({
  required double minRange,
  required double maxRange,
  required double value,
}) {
  if (value > maxRange) return maxRange;
  if (value < minRange) return minRange;
  return value;
}

String convertSecToMin(int seconds) {
  final int minutes = (seconds / 60000).floor();
  final int remainingSeconds = seconds % 60;
  return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
}


enum PanelState { min, max, dismiss }

/// Extension to get height code from PanelState
extension SelectedColorExtension on PanelState {
  int get heightCode {
    switch (this) {
      case PanelState.min:
        return -1;
      case PanelState.max:
        return -2;
      case PanelState.dismiss:
        return -3;
      default:
        return -1;
    }
  }
}
