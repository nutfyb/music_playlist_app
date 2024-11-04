import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

class UpNextTab extends StatelessWidget {
  final Music music;
  final Function(Music) onTap;
  final bool? isLoadingAudio;

  const UpNextTab({
    super.key,
    required this.music,
    required this.onTap,
    required this.isLoadingAudio,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<Music>>(
      valueListenable: currentPlaylistNotifier,
      builder: (context, playlist, _) {
        return ValueListenableBuilder<Music?>(
          valueListenable: currentlyPlaying,
          builder: (context, currentMusic, _) {
            return ListView.builder(
              itemCount: playlist.length,
              itemBuilder: (context, index) {
                return UpNextMusicCard(
                  music: playlist[index],
                  onTap: (selectedMusic) {
                    currentlyPlaying.value = selectedMusic;
                    context.read<PlayerBloc>()
                      ..add(PlayerBlocEvent.started(selectedMusic))
                      ..add(PlayerBlocEvent.updatePalette(selectedMusic.artworkUrl));
                  },
                  isPlaying: currentMusic?.id == playlist[index].id,
                  isLoadingAudio: isLoadingAudio ?? false,
                );
              },
            );
          },
        );
      },
    );
  }
}
