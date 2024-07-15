import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/features/Feed/presentation/widget/bottom_bar.dart';
import 'package:expertease/features/appointment_display/presentation/pages/upcoming.dart';
import 'package:expertease/features/appointment_display/presentation/widgets/custom_toggle.dart';
import 'package:expertease/features/appointment_display/presentation/widgets/no_cancelled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({super.key});

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  List<bool> isSelected = [true, false];
  Widget _currentContent = UpcomingAppointment();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'My Appointments',
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: ThemeColors.primary),
              ),
              SizedBox(
                height: 35.h,
              ),
              CustomToggleButton(
                isSelected: isSelected,
                onToggle: (index) {
                  setState(() {
                    isSelected = index == 0 ? [true, false] : [false, true];
                    _currentContent = isSelected[0]
                        ? UpcomingAppointment()
                        : NoCancelledAppointmnet();
                  });
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                child: _currentContent,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
