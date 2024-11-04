import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/core/theme/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../router/app_router.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp.router(
          theme: AppTheme.lightTheme,
          locale: const Locale('en', 'US'),
          supportedLocales: const [Locale('en', 'US')],
          localizationsDelegates: context.localizationDelegates,
          builder: (context, child) {
            return ResponsiveBreakpoints.builder(
              child: BouncingScrollWrapper.builder(
                context,
                child ?? Container(),
              ),
              breakpoints: [
                const Breakpoint(
                  start: 0,
                  end: 450,
                  name: MOBILE,
                ),
                const Breakpoint(
                  start: 451,
                  end: 800,
                  name: TABLET,
                ),
                const Breakpoint(
                  start: 801,
                  end: 1920,
                  name: DESKTOP,
                ),
                const Breakpoint(
                  start: 1921,
                  end: double.infinity,
                  name: '4K',
                ),
              ],
            );
          },
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter,
        );
      },
    );
  }
}
