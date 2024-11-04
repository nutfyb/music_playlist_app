import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:music_playlist_app/src/core/core.dart';
import 'package:music_playlist_app/src/features/auth/auth.dart';
import 'package:music_playlist_app/src/features/my_playlist/my_playlist.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

class MyPlaylistContent extends StatelessWidget {
  final Function(Music) onTap;

  const MyPlaylistContent({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetIt.I.get<TrackBloc>()..initialize(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<AuthBloc>(),
        ),
      ],
      child: BlocConsumer<AuthBloc, AuthBlocState>(
        listener: (context, state) {
          state.maybeWhen(
            fetched: (token) {
              // Refresh tracks after successful login
              context.read<TrackBloc>().initialize();
            },
            orElse: () {},
          );
        },
        builder: (context, authState) {
          return BlocConsumer<TrackBloc, TrackBlocState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeWhen(
                fetched: (tracks) {
                  final musicList = tracks.map(
                    (track) => Music(
                      id: track.id.toString(),
                      title: track.name.toString(),
                      artist: track.artists!.first.name.toString(),
                      artworkUrl: track.album!.images!.first.url.toString(),
                      audioUrl: 'null',
                      durationMs: track.durationMs!,
                    ),
                  ).toList();

                  return Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 32.0, 0.0, 32.0),
                          child: Text(
                            'My Playlist',
                            style: AppTheme.lightTheme.textTheme.headlineLarge,
                          ),
                        ),
                        ...musicList.map(
                          (music) => MusicCard(
                            music: music,
                            onTap: (selectedMusic) {
                              currentPlaylistNotifier.value = musicList;
                              onTap(selectedMusic);
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
                failed: (error) => Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.library_music,
                          size: 64,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'My Playlist',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Please login to see your spotify playlist',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.grey,
                                  ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Trigger authentication flow
                            context
                                .read<AuthBloc>()
                                .add(const AuthBlocEvent.authenticate());
                          },
                          icon: const Icon(Icons.login),
                          label: const Text('Login with Spotify'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                orElse: () => const Expanded(
                    child: Center(
                  child: Text('Empty'),
                )),
              );
            },
          );
        },
      ),
    );
  }
}
