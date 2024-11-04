import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/core/core.dart';
import 'package:music_playlist_app/src/core/pages/template/bottom_navigation_bar_template.dart';
import 'package:music_playlist_app/src/features/player/utils/utils_player.dart'
    as player_utils;

class MainPageTemplate extends StatelessWidget {
  const MainPageTemplate({
    super.key,
    this.floatingActionButton,
    this.backgroundColor,
    this.appBar,
    required this.isShowNavBar,
    required this.child,
    this.currentIndex = 0,
    this.onTap,
    required this.extendBodyBehindAppBar,
    this.backgroundImageUrl,
  });

  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;
  final bool isShowNavBar;
  final Widget child;
  final int currentIndex;
  final Function(int)? onTap;
  final bool extendBodyBehindAppBar;
  final String? backgroundImageUrl;
  @override
  Widget build(BuildContext context) {
    final items = isShowNavBar
        ? BottomNavigationBarItems.getNavigationItems()
        : <BottomNavigationBarItem>[];

    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      body: child,
      // TODO: Implement bottom navigation bar soon.
      // bottomNavigationBar: isShowNavBar
      //     ? ValueListenableBuilder(
      //         valueListenable: player_utils.playerExpandProgress,
      //         builder: (context, double height, child) {
      //           final value = player_utils.percentageFromValueInRange(
      //             min: player_utils.playerMinHeight,
      //             max: MediaQuery.of(context).size.height,
      //             value: height,
      //           );

      //           var opacity =
      //               value > player_utils.miniplayerPercentageDeclaration
      //                   ? 0.0
      //                   : 1 - value;
      //           opacity = opacity.clamp(0.0, 1.0);

      //           return Padding(
      //             padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      //             child: SizedBox(
      //               height: kBottomNavigationBarHeight -
      //                   kBottomNavigationBarHeight * value,
      //               child: Transform.translate(
      //                 offset:
      //                     Offset(0.0, kBottomNavigationBarHeight * value * 0.5),
      //                 child: Opacity(
      //                   opacity: opacity,
      //                   child: OverflowBox(
      //                     maxHeight: kBottomNavigationBarHeight,
      //                     child: child,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           );
      //         },
      //         child: BottomNavigationBar(
      //           iconSize: 22,
      //           type: BottomNavigationBarType.fixed,
      //           currentIndex: currentIndex,
      //           onTap: onTap,
      //           backgroundColor:
      //               AppTheme.lightTheme.appBarTheme.backgroundColor,
      //           selectedItemColor: AppTheme.lightTheme.primaryIconTheme.color,
      //           unselectedItemColor: Colors.grey,
      //           items: items,
      //         ),
      //       )
      //     : null,
    );
  }
}
