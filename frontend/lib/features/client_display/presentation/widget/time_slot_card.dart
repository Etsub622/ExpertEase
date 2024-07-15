import 'package:flutter/material.dart';
class TimeSlotCard extends StatelessWidget {
  final String time;
  final bool isSelected;

  TimeSlotCard({required this.time, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isSelected ? Color.fromARGB(255, 92, 149, 202) : Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: 200,
        height: 45,
        alignment: Alignment.center,
        child: Text(
          time,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

