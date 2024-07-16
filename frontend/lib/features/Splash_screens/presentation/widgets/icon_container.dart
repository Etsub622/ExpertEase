import 'package:expertease/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconContainer extends StatelessWidget {
  final Icon icon;
  IconContainer({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 70.w,
      child: Center(child: icon),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: ThemeColors.primary,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
