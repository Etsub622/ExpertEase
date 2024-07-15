import 'package:expertease/core/dummy_datas/dummy_time_slots.dart';
import 'package:expertease/features/client_display/presentation/widget/time_slot_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                context.go("/expertDisplay");
              },
              child: Icon(Icons.arrow_back, color: Color.fromARGB(255, 92, 149, 202)),
            );
          },
        ),title: Text('Schedule', style: TextStyle(color: Color.fromARGB(255, 92, 149, 202))),
        actions: [
          Icon(Icons.logout, color: Color.fromARGB(255, 92, 149, 202)),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all( 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: TableCalendar(
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay; // update `_focusedDay` here as well
                    });
                  },
                  calendarStyle: CalendarStyle(
                    selectedDecoration: BoxDecoration(
                      color: Color.fromARGB(255, 92, 149, 202),
                      shape: BoxShape.circle,
                    ),
                    todayDecoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      shape: BoxShape.circle,
                    ),
                  ),
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    leftChevronIcon: Icon(Icons.chevron_left, color: Color.fromARGB(255, 92, 149, 202)),
                    rightChevronIcon: Icon(Icons.chevron_right, color: Color.fromARGB(255, 92, 149, 202)),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return Column(
                      children: List.generate(6, (colIndex) {
                        int timeIndex = index * 6 + colIndex;
                        if (timeIndex >= timeSlots.length) return Container();
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TimeSlotCard(
                            time: timeSlots[timeIndex]['time'],
                            isSelected: timeSlots[timeIndex]['isSelected'],
                          ),
                        );
                      }),
                    );
                  }),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: Text('Schedule', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 92, 149, 202), // Button color
                  minimumSize: Size(150, 50), // Button size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



