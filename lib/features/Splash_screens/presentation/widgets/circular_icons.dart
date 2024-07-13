import 'package:expertease/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularIndicator extends StatelessWidget {
  final bool isActive;

  const CircularIndicator({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      width: 13.0.w,
      height: 13.0.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? ThemeColors.yellowSecondary : ThemeColors.primary,
      ),
    );
  }
}
