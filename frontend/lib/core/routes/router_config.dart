import 'package:expertease/core/routes/path.dart';
import 'package:expertease/features/Feed/presentation/pages/feed_page.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/expert_sign_up.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/expertee_sign_up.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/login.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard1.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard2.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard3.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/onboard4.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/splash_screen.dart';
import 'package:expertease/features/Splash_screens/presentation/pages/welcome.dart';
import 'package:expertease/features/appointment_display/presentation/pages/expert_profile_page.dart';
import 'package:expertease/features/chat_bot/pages/chat_bot_page.dart';
import 'package:expertease/features/client_display/presentation/pages/client_profile.dart';
import 'package:expertease/features/client_display/presentation/pages/expert_detail_page.dart';
import 'package:expertease/features/client_display/presentation/pages/notification.dart';
import 'package:expertease/features/client_display/presentation/pages/shecdule_page.dart';
import 'package:expertease/features/expert_display/presentation/pages/experts.dart';
import 'package:expertease/features/messaging/presentation/pages/chat_list.dart';
import 'package:expertease/features/payment/presentation/pages/payment_screen.dart';
import 'package:expertease/features/video_confrence/widget/rate_session.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router =
      GoRouter(initialLocation: AppPath.splash, routes: <GoRoute>[
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
    GoRoute(
        path: AppPath.expertDisplay,
        name: AppPath.expertDisplay,
        builder: (BuildContext context, GoRouterState state) {
          return ExpertDisplay();
        }),
    GoRoute(
        path: AppPath.splash,
        name: AppPath.splash,
        builder: (BuildContext context, GoRouterState state) {
          return SplashScreen();
        }),
    GoRoute(
        path: AppPath.login,
        name: AppPath.login,
        builder: (BuildContext context, GoRouterState state) {
          return LogIn();
        }),
    GoRoute(
        path: AppPath.welcome,
        name: AppPath.welcome,
        builder: (BuildContext context, GoRouterState state) {
          return WelcomeScreen();
        }),
    GoRoute(
        path: AppPath.expertSignUp,
        name: AppPath.expertSignUp,
        builder: (BuildContext context, GoRouterState state) {
          return ExpertSignUP();
        }),
    GoRoute(
        path: AppPath.expertee,
        name: AppPath.expertee,
        builder: (BuildContext context, GoRouterState state) {
          return ExperteeSignUp();
        }),
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
    GoRoute(
      path: AppPath.review,
      name: AppPath.review,
      builder: (BuildContext context, GoRouterState state) {
        return RateSessionPage();
      },
    ),
    GoRoute(
      path: AppPath.notification,
      name: AppPath.notification,
      builder: (BuildContext context, GoRouterState state) {
        return NotificationPage();
      },
    ),

    GoRoute(
      path: AppPath.chatbot,
      name: AppPath.chatbot,
      builder: (BuildContext context, GoRouterState state) {
        return ChatBotPage();
      },
    ),
    GoRoute(
      path: AppPath.chat_list,
      name: AppPath.chat_list,
      builder: (BuildContext context, GoRouterState state) {
        return ChatListPage();
        
      },
    ),
      GoRoute(
      path: AppPath.payment,
      name: AppPath.payment,
      builder: (BuildContext context, GoRouterState state) {
        return PaymentScreen();
        
      },
    ),
  ]);
}
