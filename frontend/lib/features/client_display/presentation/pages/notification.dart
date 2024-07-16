import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NotificationPage extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {
      'time': 'Today',
      'items': [
        {
          'avatar': 'assets/images/avatar1.png',
          'message': 'You received a message from Hana Guta.',
          'time': '9:01am'
        },
        {
          'avatar': 'assets/images/avatar2.png',
          'message': 'Dagmawi Miskir gives a comment on your post',
          'time': '9:01am'
        },
        {
          'avatar': Icons.info, 
          'message': 'You have finished the payment process',
          'time': '9:01am'
        },
      ]
    },
    {
      'time': 'Yesterday',
      'items': [
        {
          'avatar': 'assets/images/avatar3.png',
          'message': 'Your session with Dr. will be conducted in 5min.',
          'time': '9:01am'
        },
        {
          'avatar': 'assets/images/avatar1.png',
          'message': 'You received a message from Hana Guta.',
          'time': '9:01am'
        },
      ]
    },
    {
      'time': 'This week',
      'items': [
        {
          'avatar': 'assets/images/avatar2.png',
          'message': 'Dagmawi Miskir gives a comment on your post',
          'time': '9:01am'
        },
        {
          'avatar': 'assets/images/avatar3.png',
          'message': 'You received a payment of \$780.1 from Justin Westervelt',
          'time': '9:01am'
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 149, 202),
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () {
            context.go("/");
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Implement search functionality here
            },
          ),
        ],
        backgroundColor: Color.fromARGB(255, 92, 149, 202),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return NotificationSection(
              section: notifications[index],
            );
          },
        ),
      ),
    );
  }
}

class NotificationSection extends StatelessWidget {
  final Map<String, dynamic> section;

  NotificationSection({required this.section});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          section['time'],
          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 227, 222, 222)),
        ),
        SizedBox(height: 10.h),
        ...section['items'].map<Widget>((item) {
          return Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: item['avatar'] is String
                    ? CircleAvatar(
                        backgroundImage: AssetImage(item['avatar']),
                      )
                    : Icon(
                        item['avatar'],
                        color: Color.fromARGB(255, 57, 63, 244),
                      ),
                title: Text(item['message'],style: TextStyle(color: Colors.white,),),
                subtitle: Text(item['time'], style: TextStyle(color: Colors.white,)),
              ),
              Divider(
              ),
            ],
          );
        }).toList(),
      ],
    );
  }
}

