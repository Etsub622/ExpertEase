import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/features/Feed/presentation/pages/feed_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          title: 'ExpertEase',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: ThemeColors.primary),
            useMaterial3: true,
          ),
          home: const FeedPage(),
        );
      },
    );
  }
}
