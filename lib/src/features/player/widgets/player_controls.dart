import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_playlist_app/src/core/core.dart';
import 'package:music_playlist_app/src/features/player/player.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class PlayerControls extends StatelessWidget {
  final double percentageExpandedPlayer;
  final Music music;
  final Duration duration;
  final Duration position;
  final bool isPlaying;
  final VoidCallback onPlayPause;
  final VoidCallback onShowBottomSheet;
  final Function(double) onSeek;
  final bool isLoadingAudio;
  final bool isLooping;
  final VoidCallback onToggleLoop;

  const PlayerControls({
    super.key,
    required this.percentageExpandedPlayer,
    required this.music,
    required this.duration,
    required this.position,
    required this.isPlaying,
    required this.onPlayPause,
    required this.onShowBottomSheet,
    required this.onSeek,
    required this.isLoadingAudio,
    required this.isLooping,
    required this.onToggleLoop,
  });

  Widget playPauseButton() {
    if (isLoadingAudio) {
      return const SizedBox(
        width: 48,
        height: 48,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    }
    return Icon(
      isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: percentageExpandedPlayer,
      child: Column(
        children: [
          ListTile(
            title: Text(
              music.title,
              style: AppTheme.darkTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              music.artist,
              style: AppTheme.darkTheme.textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ProgressBar(
              progress: position,
              total: duration,
              buffered: duration, // You can add buffered duration if needed
              onSeek: (duration) => onSeek(duration.inSeconds.toDouble()),
              baseBarColor:
                  AppTheme.lightTheme.primaryIconTheme.color!.withOpacity(0.3),
              progressBarColor: AppTheme.lightTheme.primaryIconTheme.color!,
              bufferedBarColor:
                  AppTheme.lightTheme.primaryIconTheme.color!.withOpacity(0.5),
              thumbColor: AppTheme.lightTheme.primaryIconTheme.color!,
              barHeight: 3,
              thumbRadius: 6,
              timeLabelTextStyle: TextStyle(
                fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                color: Colors.white,
              ),
              timeLabelPadding: 8,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: _buildPlaybackControls(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaybackControls() {
    return Builder(
      builder: (context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.queue_music,
                color: AppTheme.darkTheme.primaryIconTheme.color),
            onPressed: onShowBottomSheet,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous,
                    color: AppTheme.darkTheme.primaryIconTheme.color),
                iconSize: 33,
                onPressed: () => context.read<PlayerBloc>().add(
                  const PlayerBlocEvent.skipPrevious(),
                ),
              ),
              IconButton(
                icon: playPauseButton(),
                iconSize: 80,
                onPressed: onPlayPause,
                color: AppTheme.darkTheme.primaryIconTheme.color,
              ),
              IconButton(
                icon: Icon(Icons.skip_next,
                    color: AppTheme.darkTheme.primaryIconTheme.color),
                iconSize: 33,
                onPressed: () => context.read<PlayerBloc>().add(
                  const PlayerBlocEvent.skipNext(),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: onToggleLoop,
            icon: Icon(
              Icons.repeat,
              color: isLooping
                  ? Theme.of(context).primaryColor
                  : AppTheme.darkTheme.primaryIconTheme.color,
            ),
          ),
        ],
      ),
    );
  }
}
