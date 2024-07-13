import 'package:expertease/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextButton extends StatelessWidget {
  final String text;
  final double widths;
  final Function() onTap;

  const NextButton(
      {super.key, required this.text, required this.onTap, this.widths = 130});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
          width: widths.w,
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: ThemeColors.primary,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
