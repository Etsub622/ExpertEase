import 'package:expertease/core/dummy_datas/dummy_feed.dart';
import 'package:expertease/features/appointment_display/presentation/widgets/appointment_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class UpcomingAppointment extends StatefulWidget {
  const UpcomingAppointment({super.key});

  @override
  State<UpcomingAppointment> createState() => _UpcomingAppointmentState();
}

class _UpcomingAppointmentState extends State<UpcomingAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: appointments.length,
                itemBuilder: (context, index) {
                  return AppointmentSection(appointment: appointments[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
