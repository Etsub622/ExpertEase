import 'package:expertease/core/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoUpcomingAppointmnet extends StatelessWidget {
  const NoUpcomingAppointmnet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/noappointment.png',
            width: 300.w,
            height: 250.h,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'No Appointments Scheduled Yet!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: ThemeColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
