import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/core/pages/template/main_page_template.dart';
import 'package:music_playlist_app/src/features/library/views/library_page.dart';
import 'package:music_playlist_app/src/features/my_playlist/my_playlist.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

class MainNavigation extends StatefulWidget {
  final int currentIndex;

  const MainNavigation({
    super.key,
    required this.currentIndex,
  });

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  late int _currentIndex;

  final List<Widget> _pages = [
    const MyPlaylistPage(),
    const LibraryPage(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainPageTemplate(
      extendBodyBehindAppBar: true,
      isShowNavBar: true,
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      child: Stack(
        children: [
          _pages[_currentIndex],
          ValueListenableBuilder(
            valueListenable: currentlyPlaying,
            builder: (context, Music? music, child) => music != null
                ? PlayerPageWrapper(
                    music: music,
                  )
                : Container(),
          ),
        ],
      ),
    );
  }
}
