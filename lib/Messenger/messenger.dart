import 'package:first_apps/Messenger/chat_users.dart';
import 'package:flutter/material.dart';

//This code is bring from deepseek AI
class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String imagePath;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(imagePath), radius: 26),
      title: Text(name, style: const TextStyle(color: Colors.black)),
      subtitle: Text(message, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Text(time, style: const TextStyle(fontSize: 12)),
    );
  }
}

class Messenger extends StatefulWidget {
  const Messenger({super.key});

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //App bar
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images.png"),
            radius: 16,
          ),
        ),

        //Text
        title: Text(
          "Chats",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),

      //Body
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              cursorHeight: 14,
              decoration: InputDecoration(
                filled: true,
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // Stories section
          SizedBox(height: 10),
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 12),
              children: [
                //Your story
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.grey.shade300,
                        child: Icon(Icons.add, color: Colors.black),
                      ),
                      SizedBox(height: 4),
                      Text("Your Story", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),

                //Circle avatar with text
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/saddam.png'),
                        radius: 26,
                        backgroundColor: Colors.grey.shade300,
                      ),
                      SizedBox(height: 4),
                      Text("Saddam", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),

                //Circle avatar with text
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/faiza.png'),
                        radius: 26,
                        backgroundColor: Colors.grey.shade300,
                      ),
                      SizedBox(height: 4),
                      Text("Faizan", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),

                //Circle avatar with text
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/ali.png'),
                        radius: 26,
                        backgroundColor: Colors.grey.shade300,
                      ),
                      SizedBox(height: 4),
                      Text("Ali", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Chat list and this code is bring from deepseek AI
          Expanded(
            child: ListView(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatUsers()));
                  },
                  child: ChatTile(
                    name: "Muhammad Ali",
                    message: "How are you doing?",
                    time: "1:00 pm",
                    imagePath: "assets/ali.png",
                  ),
                ),
                ChatTile(
                  name: "Arif Hussain",
                  message: "Long time no see!!",
                  time: "12:00 am",
                  imagePath: "assets/arif.png",
                ),
                ChatTile(
                  name: "Faizan",
                  message: "Glad to know you in person!",
                  time: "3:30 pm",
                  imagePath: "assets/faiza.png",
                ),
                ChatTile(
                  name: "Saddam Sheik",
                  message: "I'm doing fine and how about you?",
                  time: "4:00 pm",
                  imagePath: "assets/saddam.png",
                ),
                ChatTile(
                  name: "Rahim Shah",
                  message: "What is your real name?",
                  time: "11:25 am",
                  imagePath: "assets/rahim.png",
                ),
                ChatTile(
                  name: "Hammad",
                  message: "I'm happy to be your friend",
                  time: "10:00 am",
                  imagePath: "assets/hammad.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
