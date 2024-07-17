import 'package:expertease/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSuggested extends StatefulWidget {
  final String text;
  final Icon icon;
  final String path;

  const CustomSuggested(
      {super.key, required this.icon, required this.text, required this.path});

  @override
  _CustomSuggestedState createState() => _CustomSuggestedState();
}

class _CustomSuggestedState extends State<CustomSuggested> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
                child: Icon(
                  isChecked
                      ? Icons.radio_button_checked
                      : Icons.radio_button_unchecked,
                  color: ThemeColors.primary,
                ),
              ),
              SizedBox(width: 7.w),
              Expanded(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: ThemeColors.primary,
                  ),
                ),
              ),
              Icon(widget.icon.icon, color: ThemeColors.primary),
            ],
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.only(left: 26.0),
            child: Row(
              children: [
                Text(
                  '**** *** **** ',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: ThemeColors.primary,
                  ),
                ),
                Text(widget.path, style: TextStyle(color: ThemeColors.primary)),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.only(left: 26.0),
            child: Row(
              children: [
                Text(
                  'CVV',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: ThemeColors.primary,
                  ),
                ),
                SizedBox(width: 30.w),
                Icon(Icons.report, color: ThemeColors.primary),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250.0, left: 26),
            child: Divider(
              color: ThemeColors.primary,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}