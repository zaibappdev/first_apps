import 'package:flutter/material.dart';

class ChatUsers extends StatefulWidget {
  const ChatUsers({super.key});

  @override
  State<ChatUsers> createState() => _ChatUsersState();
}

class _ChatUsersState extends State<ChatUsers> {
  //This code is bring from deepseek AI
  final List<Map<String, dynamic>> messages = [
    {'text': 'Hello zaib?', 'isSender': false},
    {'text': 'Yes', 'isSender': true},
    {'text': 'How are you?', 'isSender': false},
    {'text': 'Fine and you?', 'isSender': true},
    {'text': 'I am fine zaib?', 'isSender': false},
    {'text': 'How was going your app developer course', 'isSender': false},
    {'text': 'Good alhamdulillah', 'isSender': true},
    {'text': 'Ory Reang', 'isSender': true},
    {'text': 'Eng use ah laptop nus ubuntu', 'isSender': false},
    {'text': 'code teat ban jenh', 'isSender': false},
    {'text': 'use laptop neng lerk na kor code', 'isSender': false},
    {'text': 'Oh hahahah good', 'isSender': true},
    {'text': 'Jong klay jea programmer', 'isSender': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 50,
        leading: Row(
          children: [
            SizedBox(width: 10),
            CircleAvatar(
              backgroundImage: AssetImage("assets/ali.png"), // Placeholder image
            ),
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Muhammad Ali', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            Text('Active now', style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
        actions: [
          Icon(Icons.phone, color: Colors.pink),
          SizedBox(width: 16),
          Icon(Icons.videocam, color: Colors.pink),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return Align(
                  alignment: message['isSender'] ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      color: message['isSender'] ? Colors.pink[200] : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(message['text']),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.camera_alt, color: Colors.pink),
                SizedBox(width: 8),
                Icon(Icons.photo, color: Colors.pink),
                SizedBox(width: 8),
                Icon(Icons.mic, color: Colors.pink),
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Aa',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.thumb_up, color: Colors.pink),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
