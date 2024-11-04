import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:music_playlist_app/src/features/my_playlist/my_playlist.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

class PlayerTabBarView extends StatelessWidget {
  final TabController tabController;
  final Music music;
  final bool? isLoadingAudio;
  const PlayerTabBarView({
    super.key,
    required this.tabController,
    required this.music,
    this.isLoadingAudio,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<TrackBloc>()..initialize(),
      child: Builder(
        builder: (context) => Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              BlocConsumer<TrackBloc, TrackBlocState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return UpNextTab(
                    music: music,
                    onTap: (selectedMusic) {
                      currentlyPlaying.value = selectedMusic;
                      context.read<PlayerBloc>()
                        ..add(PlayerBlocEvent.started(selectedMusic))
                        ..add(PlayerBlocEvent.updatePalette(
                            selectedMusic.artworkUrl));
                    },
                    isLoadingAudio: isLoadingAudio ?? false,
                  );
                },
              ),
              const LyricsTab(),
            ],
          ),
        ),
      ),
    );
  }
}
