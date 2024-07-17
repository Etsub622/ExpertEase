import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/core/routes/path.dart';
import 'package:expertease/features/Splash_screens/presentation/widgets/selcection_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => context.go(AppPath.home),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Skip',
                      style:
                          TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
                    )),
              ),
              SizedBox(
                height: 150.h,
              ),
              Image.asset('assets/images/logo1.jpg',
                  height: 100.h, width: 250.w),
              Text(
                'Welcome to',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  'EXPERTEASE',
                  style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                      color: ThemeColors.primary),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              ExpertiseSelectionButton(
                text: 'Sign Up as Expert',
                bgcolors: Colors.blue,
                onTap: () {
                  (context.go(AppPath.expertSignUp));
                },
              ),
              SizedBox(
                height: 18.h,
              ),
              ExpertiseSelectionButton(
                text: 'Sign Up as Client',
                bgcolors: ThemeColors.primary,
                onTap: () {
                  (context.go(AppPath.expertee));
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text('Already have an account?')),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        (context.go(AppPath.login));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: ThemeColors.primary,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
