import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/core/core.dart';
import 'package:music_playlist_app/src/features/player/domain/domain.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

class MusicCard extends StatelessWidget {
  final Music music;
  final Function(Music) onTap;

  const MusicCard({
    super.key,
    required this.music,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(music),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 16.0, bottom: 8.0, top: 8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                music.artworkUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image.asset(
                      'assets/images/album_placeholder.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    music.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      Text(
                        music.artist,
                        style: AppTheme.lightTheme.textTheme.bodySmall,
                      ),
                      const SizedBox(width: 4.0),
                      const Icon(Icons.circle, size: 4),
                      const SizedBox(width: 4.0),
                      Text(
                        convertSecToMin(music.durationMs),
                        style: AppTheme.lightTheme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.lightTheme.iconTheme.color!, width: 2),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const Icon(Icons.play_arrow),
                  iconSize: 24,
                  color: AppTheme.lightTheme.iconTheme.color,
                  onPressed: () => onTap(music),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
