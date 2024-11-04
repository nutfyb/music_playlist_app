import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/features/library/library.dart';

//TODO: Implement library page soon.
class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LibraryContent(),
              
            ],
          )
        ],
      ),
    );
  }
}
