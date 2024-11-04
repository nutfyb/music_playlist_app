import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/core/core.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

class PlayerBottomSheetContent extends StatelessWidget {
  final TabController tabController;
  final Music music;
  final bool? isLoadingAudio;

  const PlayerBottomSheetContent({
    super.key,
    required this.tabController,
    required this.music,
    this.isLoadingAudio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: AppTheme.lightTheme.colorScheme.tertiary,
      child: Column(
        children: [
          const Icon(Icons.minimize, size: 60),
          const SizedBox(height: 24),
          _buildTabBar(),
          PlayerTabBarView(
            tabController: tabController,
            music: music,
            isLoadingAudio: isLoadingAudio,
          ),
        ],
      ),
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      controller: tabController,
      labelColor: AppTheme.darkTheme.colorScheme.secondary,
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        ),
      indicatorColor: AppTheme.lightTheme.primaryColor,
      tabs:  [
        Tab(text: 'Up Next'.toUpperCase()),
        Tab(text: 'Lyrics'.toUpperCase()),
      ],
    );
  }
} 