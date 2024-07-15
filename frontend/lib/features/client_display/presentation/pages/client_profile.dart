import 'package:expertease/features/client_display/presentation/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:expertease/core/dummy_datas/dummy_client.dart';
import 'package:go_router/go_router.dart';

class ClientProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Color.fromARGB(255, 92, 149, 202)),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Icon(Icons.arrow_back, color: Color.fromARGB(255, 92, 149, 202)),
            );
          },
        ),
        actions: [
          Icon(Icons.edit, color: Color.fromARGB(255, 92, 149, 202)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 500,
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 92, 149, 202),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(profile.imageUrl),
                  ),
                  SizedBox(height: 8),
                  Text(
                    profile.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bio', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                  SizedBox(height: 8),
                  Text(profile.bio),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(profile.gender),
                    ],
                  ),
                  SizedBox(height: 20), 
                  Row(
                    children: [
                      Icon(Icons.calendar_today, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(profile.birthDate),
                    ],
                  ),
                  SizedBox(height: 20), 
                  Row(
                    children: [
                      Icon(Icons.email, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(profile.email),
                    ],
                  ),
                  SizedBox(height: 20), 
                  Row(
                    children: [
                      Icon(Icons.phone, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(profile.phone),
                    ],
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
