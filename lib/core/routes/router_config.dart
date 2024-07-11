import 'package:expertease/core/routes/path.dart';
import 'package:expertease/features/Feed/presentation/pages/feed_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router =
      GoRouter(initialLocation: AppPath.home, routes: <GoRoute>[
    GoRoute(
        path: AppPath.home,
        name: AppPath.home,
        builder: (BuildContext context, GoRouterState state) {
          return FeedPage();
        }),
  ]);
}
