import 'package:expertease/features/appointment_display/presentation/widgets/cancelled_appointment_section.dart';
import 'package:flutter/material.dart';
import 'package:expertease/core/dummy_datas/dummy_feed.dart';

class CancelledAppointments extends StatefulWidget {
  const CancelledAppointments({super.key});

  @override
  State<CancelledAppointments> createState() => _CancelledAppoinmentsState();
}

class _CancelledAppoinmentsState extends State<CancelledAppointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cancelledAppointments.length,
              itemBuilder: (context, index) {
                return CancelledAppointmentSection(
                    cancelled: cancelledAppointments[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
