import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/core/routes/path.dart';
import 'package:expertease/features/Splash_screens/presentation/widgets/circular_icons.dart';
import 'package:expertease/features/Splash_screens/presentation/widgets/custom_splash.dart';
import 'package:expertease/features/Splash_screens/presentation/widgets/next_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardThree extends StatelessWidget {
  const OnBoardThree({super.key});
  List<Widget> _buildPageIndicator() {
    return [
      CircularIndicator(isActive: false),
      CircularIndicator(isActive: false),
      CircularIndicator(isActive: true),
      CircularIndicator(isActive: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomSplash(
              mainText: 'Work Flexibly',
              subText:
                  " Are you a consultant? Provide your services without physical limitations and choose your own working hours.",
              image: 'assets/images/onboarding3.png',
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    (context.go(AppPath.splash));
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: ThemeColors.primary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.w,
                ),
                NextButton(
                  text: 'Next',
                  onTap: () {
                    (context.go(AppPath.onboard4));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
