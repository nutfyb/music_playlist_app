import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/core/core.dart';
import 'package:music_playlist_app/src/features/my_playlist/my_playlist.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

//TODO: Implement library content soon.
class LibraryContent extends StatelessWidget {
  const LibraryContent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> audioFiles = [
      {
        'title': 'lilith',
        'path': 'audios/lilith.mp3',
        'duration': '2:37',
      },
      {
        'title': 'iron-man',
        'path': 'audios/iron-man.mp3',
        'duration': '1:50',
      },
      {
        'title': 'hope',
        'path': 'audios/hope.mp3',
        'duration': '3:02',
      },
    ];
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 32.0, 0.0, 32.0),
            child: Text(
              'Library',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
          ),
          ...audioFiles.map((audio) => MusicCard(
                music: Music(
                  id: '1',
                  title: audio['title']!,
                  artist: 'test',
                  artworkUrl: '',
                  audioUrl: audio['path']!,
                  durationMs: audio['duration']!
                          .split(':')
                          .map(int.parse)
                          .toList()
                          .reduce((a, b) => a * 60 + b) *
                      1000,
                ),
                onTap: (music) => currentlyPlaying.value = music,
              )),
        ],
      ),
    );
  }
}
