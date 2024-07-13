import 'package:expertease/core/routes/path.dart';
import 'package:expertease/features/Splash_screens/presentation/widgets/circular_icons.dart';
import 'package:expertease/features/Splash_screens/presentation/widgets/custom_splash.dart';
import 'package:expertease/features/Splash_screens/presentation/widgets/next_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class onBoardFour extends StatelessWidget {
  const onBoardFour({super.key});
  List<Widget> _buildPageIndicator() {
    return [
      CircularIndicator(isActive: false),
      CircularIndicator(isActive: false),
      CircularIndicator(isActive: false),
      CircularIndicator(isActive: true),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomSplash(
              mainText: 'Welcome to Expertease',
              subText:
                  "Your gateway to expert advice and community support. Let's get started!",
              image: 'assets/images/onboarding4.png',
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: NextButton(
                text: "Let's Get Started",
                widths: double.infinity,
                onTap: () {
                  (context.go(AppPath.home));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
