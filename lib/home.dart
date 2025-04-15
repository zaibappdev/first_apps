import 'package:first_apps/Messenger/messenger.dart';
import 'package:first_apps/notifications.dart';
import 'package:first_apps/post.dart';
import 'package:first_apps/Profile/profile.dart';
import 'package:first_apps/search.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<Map<String, String>> users = [
    {"name": "ummah", "image": "assets/image.png"},
    {"name": "faizan_96", "image": "assets/faiza.png"},
    {"name": "arif__78", "image": "assets/arif.png"},
    {"name": "ahmad_03", "image": "assets/saddam.png"},
    {"name": "hammad 007", "image": "assets/hammad.png"},
    {"name": "zakir_786", "image": "assets/image.png"},
    {"name": "daniel_fd3", "image": "assets/rahim.png"},
    {"name": "ali_55", "image": "assets/ali.png"},
  ];

  @override
  Widget build(BuildContext context) {
    // final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,

      ///Appbar
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: false,

        title: Row(
          children: [
            Text(
              'Ummah',
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Messenger()),
                    );
                  },
                  child: Icon(Icons.message_outlined, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),

      ///Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Circle avatars, images and names
            Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                height: 100, // Adjust height as needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green, width: 2),
                            ),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                users[index]["image"]!,
                              ),
                              backgroundColor:
                                  Colors.transparent, // For clean edge
                            ),
                          ),
                        ),
                        SizedBox(height: 2), // Space between avatar & text
                        Text(
                          users[index]["name"]!,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),

            ///Container posting ui
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26), // Outline Border
                borderRadius: BorderRadius.circular(
                  2,
                ), // Optional: Rounded Corners
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        // CircleAvatar
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image.png'),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profile(),
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Ummah', style: TextStyle(fontSize: 16)),
                              Text(
                                'ummah.com',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),

                        ///Bottom sheet in icon
                        Spacer(),
                        InkWell(
                          child: Row(
                            children: [
                              // Icon(Icons.more_horiz), // Horizontal three dots
                              Icon(Icons.more_vert),
                              // Vertical three dots
                            ],
                          ),
                          onTap: () {
                            showModalBottomSheet(
                              showDragHandle: true,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return Container(
                                  padding: EdgeInsets.only(),
                                  height: 400,
                                  width: 400,
                                  child: Column(
                                    children: [
                                      Text(
                                        "This is a Bottom Sheet",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  ///Centre photos and videos etc
                  Container(
                    height: 400,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      image: DecorationImage(
                        image: AssetImage("assets/ramazans.jpg"),
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),

                  /// Bottom icons
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border, size: 24),
                        SizedBox(width: 15),
                        Icon(Icons.chat_bubble_outline, size: 24),
                        SizedBox(width: 15),
                        Icon(Icons.send, size: 24),
                        Spacer(),
                        Icon(Icons.save_alt, size: 24),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      '“O Allah, accept our fasts, prayers, and good deeds in this holy month.” ',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      ///Bottom navigation bar
      bottomNavigationBar: BottomAppBar(
        height: 45,
        color: Colors.white,
        shadowColor: Colors.green.shade900,
        elevation: 15,

        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Home()),
                // );
              },
              child: Icon(Icons.home, size: 25),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              },
              child: Icon(Icons.search),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Post()),
                );
              },
              child: Icon(Icons.add_circle_outline, size: 25),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
              child: Icon(Icons.favorite_border_outlined, size: 25),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: Icon(Icons.person, size: 25),
            ),
          ],
        ),
      ),
    );
  }
}
