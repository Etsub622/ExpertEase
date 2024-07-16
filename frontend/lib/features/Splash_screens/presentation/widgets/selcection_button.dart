import 'package:expertease/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpertiseSelectionButton extends StatelessWidget {
  final String text;
  final Color bgcolors;
  final Function() onTap;

  const ExpertiseSelectionButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.bgcolors,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: bgcolors,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 17.sp,
            ),
          ),
        ),
      ),
    );
  }
}
