import 'package:expertease/core/routes/path.dart';
import 'package:expertease/features/Feed/presentation/pages/feed_page.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard1.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard2.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard3.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard4.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router =
      GoRouter(initialLocation: AppPath.onboard1, routes: <GoRoute>[
    GoRoute(
        path: AppPath.home,
        name: AppPath.home,
        builder: (BuildContext context, GoRouterState state) {
          return FeedPage();
        }),
    GoRoute(
        path: AppPath.onboard1,
        name: AppPath.onboard1,
        builder: (BuildContext context, GoRouterState state) {
          return OnboardOne();
        }),
    GoRoute(
        path: AppPath.onboard2,
        name: AppPath.onboard2,
        builder: (BuildContext context, GoRouterState state) {
          return OnBoardTwo();
        }),
    GoRoute(
        path: AppPath.onboard3,
        name: AppPath.onboard3,
        builder: (BuildContext context, GoRouterState state) {
          return OnBoardThree();
        }),
    GoRoute(
        path: AppPath.onboard4,
        name: AppPath.onboard4,
        builder: (BuildContext context, GoRouterState state) {
          return onBoardFour();
        }),
  ]);
}
