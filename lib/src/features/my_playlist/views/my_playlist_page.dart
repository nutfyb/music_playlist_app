import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/features/my_playlist/my_playlist.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

class MyPlaylistPage extends StatelessWidget {
  const MyPlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyPlaylistContent(
                  onTap: (music) => currentlyPlaying.value = music),
            ],
          )
        ],
      ),
    );
  }
}
