import 'package:expertease/core/dummy_datas/dummy_profile.dart';
import 'package:expertease/core/dummy_datas/dummy_time_slots.dart';
import 'package:expertease/core/routes/path.dart';
import 'package:expertease/features/appointment_display/presentation/widgets/review_card.dart';
import 'package:expertease/features/client_display/presentation/widget/time_slot_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

class ExpertProfilePage extends StatefulWidget {
  @override
  _ExpertProfilePageState createState() => _ExpertProfilePageState();
}

class _ExpertProfilePageState extends State<ExpertProfilePage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(color: Color.fromARGB(255, 92, 149, 202)),),
        leading: GestureDetector(
          onTap: (){context.go(AppPath.home);},
          child: Icon(Icons.arrow_back,color: Color.fromARGB(255, 92, 149, 202) )),
        actions: [
          Icon(Icons.edit, color: Color.fromARGB(255, 44, 175, 198)),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 0.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 92, 149, 202),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 171, 152, 146),
                    blurRadius: 5,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                  ),
                  Column(
                    children: [
                      Text(profile.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                      Text(profile.profession, style: TextStyle(fontSize: 18, color: Colors.white)),
                      SizedBox(height: 10),
                      Text('Fee: \$${profile.fee}/hr  Rating: ${profile.rating}⭐', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text('Bio', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 92, 149, 202))),
                  SizedBox(height: 20),
                  Text(profile.bio),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ContactButton(icon: Icons.email, contact: profile.contactEmail),
                      ContactButton(icon: Icons.phone, contact: profile.contactPhone),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text('Reviews', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 92, 149, 202))),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: profile.reviews.map((review) => ReviewCard(review: review)).toList(),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('Schedule', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 92, 149, 202))),
                  Container(
                    margin: EdgeInsets.all(20.0),
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
                    child: Text('Change', style: TextStyle(color: Colors.white)),
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
          ],
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  final IconData icon;
  final String contact;

  ContactButton({required this.icon, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30),
        Text(contact),
      ],
    );
  }
}

class Review {
  final String author;
  final String content;
  final int rating;

  Review({required this.author, required this.content, required this.rating});
}

class ScheduleItem {
  final String day;
  final int date;
  final List<ScheduleEvent> events;

  ScheduleItem({required this.day, required this.date, required this.events});
}

class ScheduleEvent {
  final String time;
  final String title;
  final EventType type;

  ScheduleEvent({required this.time, required this.title, required this.type});
}

enum EventType { event, appointment, noAppointment }
