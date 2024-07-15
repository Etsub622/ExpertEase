import 'package:expertease/features/client_display/presentation/pages/shecdule_page.dart';
import 'package:expertease/features/expert_display/presentation/pages/experts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'features/Feed/presentation/pages/feed_page.dart';
import 'features/client_display/presentation/pages/client_profile.dart';
import 'features/appointment_display/presentation/pages/expert_profile_page.dart';
import 'features/client_display/presentation/pages/expert_detail_page.dart';


void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: '/feed_page',
          name: 'feed_page',
          builder: (context, state) => FeedPage(),
        ),
        GoRoute(
          path: '/expert_profile',
          name: 'expertProfile',
          builder: (context, state) => ExpertProfilePage(),
        ),
        GoRoute(
          path: '/expert_detail',
          name: 'expertDetail',
          builder: (context, state) => ExpertDetailPage(expert: state.extra as Map<String, dynamic>),
        ),
        GoRoute(
          path: '/client_profile',
          name: 'clientProfile',
          builder: (context, state) => ClientProfilePage(),
        ),
        GoRoute(
          path: '/schedule_page',
          name: 'schedule',
          builder: (context, state) => SchedulePage(),
        ),
        GoRoute(
          path: '/search',
          name: 'search',
          builder: (context, state) => ExpertDisplay(),
        ),
      ],
      initialLocation: '/feed_page',
    );

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return ScreenUtilInit(
          designSize: const Size(360, 800),
          builder: (BuildContext context, Widget? child) {
            return MaterialApp.router(
              routerConfig: router,
              debugShowCheckedModeBanner: false,
              title: 'ExpertEase',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                  seedColor: Color.fromARGB(255, 92, 149, 202),
                ),
                useMaterial3: true,
              ),
            );
          },
        );
      },
    );
  }
}
