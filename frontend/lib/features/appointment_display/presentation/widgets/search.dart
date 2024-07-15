import 'package:expertease/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBox extends StatelessWidget {
  final String hintText;

  SearchBox({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 300.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: ThemeColors.primary,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Color.fromARGB(255, 138, 175, 210)),
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.add,
              size: 30,
              color: ThemeColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
