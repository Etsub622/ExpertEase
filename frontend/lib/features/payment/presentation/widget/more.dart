import 'package:expertease/core/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreOptions extends StatelessWidget {
  final Icon icon;
  final String text;
  const MoreOptions({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            height: 70.h,
            width: 60.w,
            child: Center(child: icon),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 13.sp,
                color: ThemeColors.primary,
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: ThemeColors.primary,
          ),
        ],
      ),
    );
  }
}