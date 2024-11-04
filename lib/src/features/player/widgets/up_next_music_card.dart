import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/core/core.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

class UpNextMusicCard extends StatelessWidget {
  final Music music;
  final Function(Music) onTap;
  final bool isPlaying;
  final bool isLoadingAudio;

  const UpNextMusicCard({
    super.key, 
    required this.music, 
    required this.onTap,
    required this.isPlaying, required this.isLoadingAudio,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(music),
      child: Container(
        decoration: BoxDecoration(
          color: isPlaying ? Colors.white.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      music.artworkUrl,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Image.asset(
                            'assets/images/album_placeholder.png',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                  if (isPlaying)
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: isLoadingAudio ? const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(
                          strokeWidth: 3,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ) : const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                ],
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      music.title,
                      style: AppTheme.darkTheme.textTheme.bodyLarge?.copyWith(
                        color: isPlaying ? Theme.of(context).primaryColor : null,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        Text(
                          music.artist,
                          style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
                            color: isPlaying ? Theme.of(context).primaryColor.withOpacity(0.7) : null,
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        Icon(
                          Icons.circle, 
                          size: 4,
                          color: isPlaying ? Theme.of(context).primaryColor : null,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          convertSecToMin(music.durationMs),
                          style: AppTheme.darkTheme.textTheme.bodySmall?.copyWith(
                            color: isPlaying ? Theme.of(context).primaryColor.withOpacity(0.7) : null,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              Center(
                child: IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const Icon(Icons.drag_handle_sharp),
                  iconSize: 24,
                  color: isPlaying ? Theme.of(context).primaryColor : AppTheme.darkTheme.iconTheme.color,
                  onPressed: () => onTap(music),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
