import 'package:expertease/core/routes/path.dart';
import 'package:expertease/features/Feed/presentation/pages/feed_page.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard1.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard2.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard3.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard4.dart';
import 'package:expertease/features/client_display/presentation/pages/shecdule_page.dart';
import 'package:expertease/features/expert_display/presentation/pages/experts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:expertease/features/appointment_display/presentation/pages/expert_profile_page.dart';
import 'package:expertease/features/client_display/presentation/pages/expert_detail_page.dart';
import 'package:expertease/features/client_display/presentation/pages/client_profile.dart';


class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppPath.home,
    routes: <GoRoute>[
      GoRoute(
        path: AppPath.home,
        name: AppPath.home,
        builder: (BuildContext context, GoRouterState state) {
          return FeedPage();
        },
      ),
      GoRoute(
        path: AppPath.onboard1,
        name: AppPath.onboard1,
        builder: (BuildContext context, GoRouterState state) {
          return OnboardOne();
        },
      ),
      GoRoute(
        path: AppPath.onboard2,
        name: AppPath.onboard2,
        builder: (BuildContext context, GoRouterState state) {
          return OnBoardTwo();
        },
      ),
      GoRoute(
        path: AppPath.onboard3,
        name: AppPath.onboard3,
        builder: (BuildContext context, GoRouterState state) {
          return OnBoardThree();
        },
      ),
      GoRoute(
        path: AppPath.onboard4,
        name: AppPath.onboard4,
        builder: (BuildContext context, GoRouterState state) {
          return onBoardFour();
        },
      ),
      GoRoute(
        path: AppPath.expertDisplay,
        name: AppPath.expertDisplay,
        builder: (BuildContext context, GoRouterState state) {
          return ExpertDisplay();
        },
      ),
      GoRoute(
        path: AppPath.feedPage,
        name: AppPath.feedPage,
        builder: (BuildContext context, GoRouterState state) {
          return FeedPage();
        },
      ),
      GoRoute(
        path: AppPath.expertProfile,
        name: AppPath.expertProfile,
        builder: (BuildContext context, GoRouterState state) {
          return ExpertProfilePage();
        },
      ),
      GoRoute(
        path: AppPath.expertDetail,
        name: AppPath.expertDetail,
        builder: (BuildContext context, GoRouterState state) {
          return ExpertDetailPage(expert: state.extra as Map<String, dynamic>);
        },
      ),
      GoRoute(
        path: AppPath.clientProfile,
        name: AppPath.clientProfile,
        builder: (BuildContext context, GoRouterState state) {
          return ClientProfilePage();
        },
      ),
      GoRoute(
        path: AppPath.schedule,
        name: AppPath.schedule,
        builder: (BuildContext context, GoRouterState state) {
          return SchedulePage();
        },
      ),
    ],
  );
}
