import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/features/player/player.dart';
import 'package:music_playlist_app/src/features/player/utils/utils_player.dart'
    as player_utils;

class PlayerContent extends StatelessWidget {
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
  final ValueChanged<double> onSeek;
  final Color backgroundColor;
  final bool isLoadingAudio;
  final bool isLooping;
  final VoidCallback onToggleLoop;

  const PlayerContent({
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
    if (percentage < 1) {
      return MiniPlayerContent(
        height: height,
        percentage: percentage,
        maxImgSize: maxImgSize,
        progressIndicator: progressIndicator,
        music: music,
        duration: duration,
        position: position,
        isPlaying: isPlaying,
        onPlayPause: onPlayPause,
        backgroundColor: backgroundColor,
        isLoadingAudio: isLoadingAudio,
      );
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      player_utils.playerExpandProgress.value = height;
    });

    final bool isMiniplayer =
        percentage < player_utils.miniplayerPercentageDeclaration;

    return isMiniplayer
        ? MiniPlayerContent(
            height: height,
            percentage: percentage,
            maxImgSize: maxImgSize,
            progressIndicator: progressIndicator,
            music: music,
            duration: duration,
            position: position,
            isPlaying: isPlaying,
            onPlayPause: onPlayPause,
            backgroundColor: backgroundColor,
            isLoadingAudio: isLoadingAudio,
          )
        : ExpandedPlayerContent(
            height: height,
            percentage: percentage,
            screenHeight: screenHeight,
            width: width,
            maxImgSize: maxImgSize,
            progressIndicator: progressIndicator,
            music: music,
            duration: duration,
            position: position,
            isPlaying: isPlaying,
            onPlayPause: onPlayPause,
            onShowBottomSheet: onShowBottomSheet,
            onSeek: onSeek,
            backgroundColor: backgroundColor,
            isLoadingAudio: isLoadingAudio,
            isLooping: isLooping,
            onToggleLoop: onToggleLoop,
          );
  }
}
