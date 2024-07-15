import 'package:expertease/core/routes/router_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return ScreenUtilInit(
          designSize: const Size(360, 800),
          builder: (BuildContext context, Widget? child) {
            return MaterialApp.router(
              routerConfig: AppRouter.router,
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
