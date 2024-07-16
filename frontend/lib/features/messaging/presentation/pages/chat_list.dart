import 'package:expertease/features/Feed/presentation/widget/bottom_bar.dart';
import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 149, 202),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('chats', style: TextStyle(color: Colors.white, fontSize: 24)),
        centerTitle: true,
        leading: Icon(Icons.search, color: Colors.white, size: 28),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile_image.png'), // Replace with your profile image asset
              radius: 20,
            ),
          ),
        ],
      ),
      body: Container(
        // margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
        // padding:EdgeInsets.fromLTRB(0, 50, 0, 0) ,

        color: Colors.white,
        child:Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 16),
              children: [
                ChatItem(
                  avatar: 'assets/images/avatar1.png',
                  name: 'Dagimawi Miskir',
                  message: 'How are you today?',
                  time: '2 min ago',
                  unreadCount: 3,
                ),
                ChatItem(
                  avatar: 'assets/images/avatar2.png',
                  name: 'Heran Eshetu',
                  message: 'How are you today?',
                  time: '2 min ago',
                  unreadCount: 0,
                ),
                ChatItem(
                  avatar: 'assets/images/avatar3.png',
                  name: 'Amanuel',
                  message: 'Hey! Can you join the meeting?',
                  time: '2 min ago',
                  unreadCount: 1,
                  
                ),
                ChatItem(
                  avatar: 'assets/images/avatar1.png',
                  name: 'Dagimawi Miskir',
                  message: 'How are you today?',
                  time: '2 min ago',
                  unreadCount: 3,
                ),
              ],
            ),
          ),
        ],
      ),),
      bottomNavigationBar: CustomNavigationBar()
    );
  }
}

class ChatItem extends StatelessWidget {
  final String avatar;
  final String name;
  final String message;
  final String time;
  final int unreadCount;
  final bool isHighlighted;

  ChatItem({
    required this.avatar,
    required this.name,
    required this.message,
    required this.time,
    this.unreadCount = 0,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isHighlighted ? Color(0xFFE6F3FF) : Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(avatar),
            radius: 30,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color:  Color.fromARGB(255, 92, 149, 202),
                  ),
                ),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              if (unreadCount > 0)
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$unreadCount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}



