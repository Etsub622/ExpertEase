import 'package:expertease/core/colors/colors.dart';
import 'package:expertease/core/routes/path.dart';
import 'package:expertease/features/Feed/presentation/pages/feed_page.dart';
import 'package:expertease/features/appointment_display/presentation/pages/appointment_screen.dart';
import 'package:expertease/features/appointment_display/presentation/pages/upcoming.dart';
import 'package:expertease/features/expert_display/presentation/pages/experts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  var _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => FeedPage())));

        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => ExpertDisplay())));

        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => ExpertDisplay())));
        break;
      case 3:
        context.go(AppPath.home);
        break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => AppointmentPage())));

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: BottomNavigationBar(
        iconSize: 25.h,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: ThemeColors.primary,
        unselectedItemColor: ThemeColors.buttonColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            tooltip: "",
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.search, 1),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.message, 2),
            label: "message",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.notification_add, 3),
            label: "notification",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.bookmark, 4),
            label: "appointment",
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData iconData, int index) {
    return Container(
      padding: EdgeInsets.all(6.w),
      height: 32.h,
      width: 50.h,
      decoration: BoxDecoration(
        color: _selectedIndex == index
            ? ThemeColors.primary.withOpacity(0.2)
            : Colors.transparent,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(30.h)),
      ),
      child: Icon(
        iconData,
        color: _selectedIndex == index
            ? ThemeColors.buttonColor
            : const Color.fromARGB(255, 172, 188, 202),
      ),
    );
  }
}
