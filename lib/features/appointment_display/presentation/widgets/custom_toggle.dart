import 'package:expertease/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomToggleButton extends StatelessWidget {
  final List<bool> isSelected;
  final Function(int) onToggle;

  const CustomToggleButton({
    super.key,
    required this.isSelected,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () => onToggle(0),
            child: Column(
              children: [
                Text(
                  'Upcoming',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color:
                        isSelected[0] ? ThemeColors.buttonColor : Colors.black,
                  ),
                ),
                if (isSelected[0])
                  Container(
                    width: 80.w,
                    height: 2.h,
                    color: ThemeColors.buttonColor,
                  ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => onToggle(1),
            child: Column(
              children: [
                Text(
                  'Cancelled',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color:
                        isSelected[1] ? ThemeColors.buttonColor : Colors.black,
                  ),
                ),
                if (isSelected[1])
                  Container(
                    width: 80.w,
                    height: 2.h,
                    color: ThemeColors.buttonColor,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
