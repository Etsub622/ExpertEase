import 'package:expertease/core/routes/path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatBotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: GestureDetector(
                    onTap: (){context.go(AppPath.home);},
                    child: Icon(Icons.arrow_back)),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  
                  SizedBox(height: 50),
                  Image.asset(
                    'assets/images/logo1.jpg', // Replace with your image asset path
                    height: 100,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Expertease Chat',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 92, 149, 202),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "I'm here to help you with whatever you need, from answering questions to providing recommendations. Let's chat!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Ask me anything...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromARGB(255, 92, 149, 202),
                    child: IconButton(
                      icon: Icon(Icons.send, color: Colors.white),
                      onPressed: () {
                        // Implement your send button action here
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


