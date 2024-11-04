import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/features/player/player.dart';
import 'package:music_playlist_app/src/features/player/utils/utils_player.dart'
    as player_utils;

class ExpandedPlayerContent extends StatelessWidget {
  final double height;
  final double percentage;
  final double screenHeight;
  final double width;
  final double maxImgSize;
  final Widget progressIndicator;
  final Music music;
  final Duration duration;
  final Duration position;
  final bool isPlaying;
  final VoidCallback onPlayPause;
  final VoidCallback onShowBottomSheet;
  final Function(double) onSeek;
  final Color backgroundColor;
  final bool isLoadingAudio;
  final bool isLooping;
  final VoidCallback onToggleLoop;

  const ExpandedPlayerContent({
    super.key,
    required this.height,
    required this.percentage,
    required this.screenHeight,
    required this.width,
    required this.maxImgSize,
    required this.progressIndicator,
    required this.music,
    required this.duration,
    required this.position,
    required this.isPlaying,
    required this.onPlayPause,
    required this.onShowBottomSheet,
    required this.onSeek,
    required this.backgroundColor,
    required this.isLoadingAudio,
    required this.isLooping,
    required this.onToggleLoop,
  });

  @override
  Widget build(BuildContext context) {
    var percentageExpandedPlayer = player_utils.percentageFromValueInRange(
      min: screenHeight * player_utils.miniplayerPercentageDeclaration +
          player_utils.playerMinHeight,
      max: screenHeight,
      value: height,
    );

    percentageExpandedPlayer = percentageExpandedPlayer.clamp(0.0, 1.0);

    final paddingVertical = player_utils.valueFromPercentageInRange(
      min: 0,
      max: 10,
      percentage: percentageExpandedPlayer,
    );

    final heightWithoutPadding = height - paddingVertical * 2;
    final imageSize =
        heightWithoutPadding > maxImgSize ? maxImgSize : heightWithoutPadding;
    final paddingLeft = player_utils.valueFromPercentageInRange(
          min: 0,
          max: width - imageSize,
          percentage: percentageExpandedPlayer,
        ) /
        2;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const PlayerHeader(),
          Expanded(
            child: PlayerImage(
              paddingLeft: paddingLeft,
              paddingVertical: paddingVertical,
              imageSize: imageSize,
              music: music,
            ),
          ),
          Expanded(
            child: PlayerControls(
              percentageExpandedPlayer: percentageExpandedPlayer,
              music: music,
              duration: duration,
              position: position,
              isPlaying: isPlaying,
              onPlayPause: onPlayPause,
              onShowBottomSheet: onShowBottomSheet,
              onSeek: onSeek,
              isLoadingAudio: isLoadingAudio,
              isLooping: isLooping,
              onToggleLoop: onToggleLoop,
            ),
          ),
        ],
      ),
    );
  }
} 