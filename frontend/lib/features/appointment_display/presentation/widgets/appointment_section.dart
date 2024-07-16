import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/features/appointment_display/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentSection extends StatefulWidget {
  final Map<String, dynamic> appointment;

  AppointmentSection({required this.appointment});

  @override
  _AppointmentSectionState createState() => _AppointmentSectionState();
}

class _AppointmentSectionState extends State<AppointmentSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
        elevation: 3.0,
        shadowColor: Colors.black,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage(widget.appointment['profileImage']!),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.appointment['userName']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: ThemeColors.primary,
                          ),
                        ),
                        SizedBox(height: 3.w),
                        Text(
                          widget.appointment['jobTitle']!,
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: ThemeColors.primary,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  _buildStarRating(widget.appointment['rating']),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.appointment['appointmentDate']!,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: ThemeColors.primary,
                        ),
                      ),
                      SizedBox(width: 9.w),
                      Container(
                        height: 25.h,
                        width: 1.3.w,
                        color: Colors.black87,
                      ),
                      SizedBox(width: 9.w),
                      Text(
                        widget.appointment['appointmentTime']!,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: ThemeColors.primary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomButton(
                        text: 'Join now',
                        bgColor: ThemeColors.buttonColor,
                      ),
                      SizedBox(height: 8.h),
                      CustomButton(
                        text: 'Reschedule',
                        bgColor: ThemeColors.buttonColor,
                      ),
                      SizedBox(height: 8.h),
                      CustomButton(
                        text: 'Cancel',
                        bgColor: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStarRating(String ratingString) {
    double rating = double.parse(ratingString);
    int fullStars = rating.floor();
    bool hasHalfStar = (rating - fullStars) >= 0.5;

    return Row(
      children: List.generate(5, (index) {
        if (index < fullStars) {
          return Icon(Icons.star, color: Colors.orange, size: 13.w);
        } else if (index == fullStars && hasHalfStar) {
          return Icon(Icons.star_half, color: Colors.orange, size: 15.w);
        } else {
          return Icon(Icons.star_border, color: Colors.orange, size: 15.w);
        }
      }),
    );
  }
}
