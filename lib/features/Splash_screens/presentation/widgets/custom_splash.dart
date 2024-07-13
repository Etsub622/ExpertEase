import 'package:expertease/core/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSplash extends StatelessWidget {
  final String mainText;
  final String subText;
  final String image;
  const CustomSplash({
    super.key,
    required this.mainText,
    required this.image,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 180,
                width: 270.w,
                decoration: BoxDecoration(
                  color: ThemeColors.yellowSecondary,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(320),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(top: 80.h),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Text(
          mainText,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: ThemeColors.primary,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
            subText,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
