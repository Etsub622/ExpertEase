import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/core/routes/path.dart';
import 'package:expertease/features/Splash_screens/presentation/widgets/custom_form.dart';
import 'package:expertease/features/Splash_screens/presentation/widgets/icon_container.dart';
import 'package:expertease/features/Splash_screens/presentation/widgets/next_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 180,
                    width: 270.w,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 92, 149, 202),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(320),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => context.go(AppPath.home),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 10),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.w600),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Sign In',
              style: TextStyle(
                color: ThemeColors.primary,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          CustomForm(
            controller: emailController,
            text: 'Email',
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomForm(
            controller: passwordController,
            text: 'Password',
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: NextButton(
              text: "Log In",
              widths: double.infinity,
              onTap: () {
                (context.go(AppPath.home));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                      color: ThemeColors.primary, fontWeight: FontWeight.w400),
                )),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text('Or login with'),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconContainer(icon: Icon(Icons.person)),
                IconContainer(icon: Icon(Icons.person)),
                IconContainer(icon: Icon(Icons.person)),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont't have an account?"),
              SizedBox(
                width: 7.w,
              ),
              GestureDetector(
                onTap: () => context.go(AppPath.welcome),
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: ThemeColors.primary, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
