import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExpertDetailPage extends StatelessWidget {
  final Map<String, dynamic> expert;

  ExpertDetailPage({required this.expert});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                context.go("/search");
              },
              child: Icon(Icons.arrow_back, color: Color.fromARGB(255, 92, 149, 202)),
            );
          },
        ),
        actions: [
          Icon(Icons.logout, color: Color.fromARGB(255, 92, 149, 202)),
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
                    backgroundImage: AssetImage(expert['profileImage']),
                  ),
                  Column(
                    children: [
                      Text(expert['name'], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                      Text(expert['jobTitle'], style: TextStyle(fontSize: 20, color: Colors.white)),
                      SizedBox(height: 10),
                      Text('Fee: ${expert['price']}  Rating: ${expert['rating']}⭐', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
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
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ContactButton(icon: Icons.email, contact: 'example@example.com'),
                      ContactButton(icon: Icons.phone, contact: '1234567890'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text('Reviews', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 92, 149, 202))),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index) => ReviewCard(review: Review(author: 'Author $index', content: 'Content $index', rating: 4))),
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.push("/schedule_page", extra: expert); // Navigate to the schedule page with expert data
              },
              child: Text(
                'Schedule',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 92, 149, 202),
                ),
                fixedSize: MaterialStateProperty.all<Size>(Size(150, 50)),
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

class ReviewCard extends StatelessWidget {
  final Review review;

  ReviewCard({required this.review});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        color: Color.fromARGB(255, 92, 149, 202),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                  ),
                  SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          review.author,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        index < review.rating ? Icons.star : Icons.star_border,
                        color: Colors.yellow,
                        size: 16,
                      );
                    }),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                review.content,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
