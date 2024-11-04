import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

class PlayerImage extends StatelessWidget {
  final double paddingLeft;
  final double paddingVertical;
  final double imageSize;
  final Music music;

  const PlayerImage({
    super.key,
    required this.paddingLeft,
    required this.paddingVertical,
    required this.imageSize,
    required this.music,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Center(
        child: Image.network(
          music.artworkUrl,
          errorBuilder: (context, error, stackTrace) {
            return Image.asset(
              'assets/images/music_cover_640x640.png',
              // width: 80,
              // height: 80,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
