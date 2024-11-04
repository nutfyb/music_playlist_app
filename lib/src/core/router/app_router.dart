import 'package:go_router/go_router.dart';
import 'package:music_playlist_app/src/core/pages/template/main_navigation.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainNavigation(currentIndex: 0),
    ),
  ],
);

class AppRoutes {
  static const home = '/';
  static const search = '/search';
  static const library = '/library';
  static const profile = '/profile';
} 