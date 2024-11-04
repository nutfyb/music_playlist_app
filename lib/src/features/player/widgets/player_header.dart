import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/core/core.dart';

class PlayerHeader extends StatelessWidget {
  const PlayerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 56.0, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'My Playlist',
            style: AppTheme.darkTheme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
