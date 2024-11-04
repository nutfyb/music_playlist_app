import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/core/core.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

class MiniPlayerContent extends StatelessWidget {
  final double height;
  final double percentage;
  final double maxImgSize;
  final Widget progressIndicator;
  final Music music;
  final Duration duration;
  final Duration position;
  final bool isPlaying;
  final VoidCallback onPlayPause;
  final Color backgroundColor;
  final bool isLoadingAudio;

  const MiniPlayerContent({
    super.key,
    required this.height,
    required this.percentage,
    required this.maxImgSize,
    required this.progressIndicator,
    required this.music,
    required this.duration,
    required this.position,
    required this.isPlaying,
    required this.onPlayPause,
    required this.backgroundColor,
    required this.isLoadingAudio,
  });

  @override
  Widget build(BuildContext context) {
    final elementOpacity = 1 - 1 * percentage;
    final progressIndicatorHeight = 4 - 4 * percentage;

    Widget playPauseButton() {
      if (isLoadingAudio) {
        return const SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        );
      }
      return Icon(
        isPlaying ? Icons.pause : Icons.play_arrow,
        color: AppTheme.darkTheme.colorScheme.secondary,
        size: 36,
      );
    }

    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          SizedBox(
            height: progressIndicatorHeight,
            child: Opacity(
              opacity: 1,
              child: LinearProgressIndicator(
                backgroundColor: AppTheme.lightTheme.colorScheme.surface,
                value: duration.inSeconds > 0
                    ? position.inSeconds.toDouble() /
                        duration.inSeconds.toDouble()
                    : 0.0,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: maxImgSize),
                  child: Image.network(
                    music.artworkUrl,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        'assets/images/album_placeholder.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Opacity(
                      opacity: elementOpacity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(music.title,
                              style: AppTheme.darkTheme.textTheme.bodyMedium),
                          Text(
                            music.artist,
                            style: AppTheme.darkTheme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Opacity(
                    opacity: elementOpacity,
                    child: IconButton(
                      icon: playPauseButton(),
                      onPressed: isLoadingAudio ? null : onPlayPause,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
