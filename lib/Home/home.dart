import 'package:first_apps/Messenger/messenger.dart';
import 'package:first_apps/notifications.dart';
import 'package:first_apps/post.dart';
import 'package:first_apps/Profile/profile.dart';
import 'package:first_apps/search.dart';
import 'package:flutter/material.dart';
import 'home_custum_widget.dart';

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
            //Circle avatars, images and names
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
                          child: index == 0
                              ? Stack(
                            children: [
                              Container(
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
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white, width: 2),
                                  ),
                                  padding: EdgeInsets.all(2),
                                  child: Icon(
                                    Icons.add,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                              : Container(
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
                              backgroundColor: Colors.transparent,
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
            home_custom_widget(screenWidth: screenWidth, name: 'ummah_official', avatar: 'assets/image.png', image: 'assets/image.png', bio: 'Hello dear ummah brothers.',),
            home_custom_widget(screenWidth: screenWidth, name: 'muhammad_ali', avatar: 'assets/ali.png', image: 'assets/ali.png', bio: 'Its our passion to take some photos.',),
            home_custom_widget(screenWidth: screenWidth, name: 'arif_hussain', avatar: 'assets/arif.png', image: 'assets/arif.png', bio: 'Explore the world dear.',),
            home_custom_widget(screenWidth: screenWidth, name: 'ummah_official', avatar: 'assets/image.png', image: 'assets/eid.png', bio: 'Eid Mubarak all ummah family.',),

            home_custom_widget(screenWidth: screenWidth, name: 'fazan', avatar: 'assets/faiza.png', image: 'assets/faiza.png', bio: 'its our style.',),
            home_custom_widget(screenWidth: screenWidth, name: 'ummah_official', avatar: 'assets/image.png', image: 'assets/ramazan.jpg', bio: 'Ramazan Mubarak all ummah brothers.',),

            home_custom_widget(screenWidth: screenWidth, name: 'hammad', avatar: 'assets/hammad.png', image: 'assets/hammad.png', bio: 'Hello ummah brothers.',),
            home_custom_widget(screenWidth: screenWidth, name: 'zaib_mughal_09', avatar: 'assets/images.png', image: 'assets/images.png', bio: 'First time I take picture.',),
            home_custom_widget(screenWidth: screenWidth, name: 'rahim_shah', avatar: 'assets/rahim.png', image: 'assets/rahim.png', bio: 'its my dream to buy a car.',),
            home_custom_widget(screenWidth: screenWidth, name: 'saddam_sheikh', avatar: 'assets/saddam.png', image: 'assets/saddam.png', bio: 'Always live happy in your life.',),
            home_custom_widget(screenWidth: screenWidth, name: 'ummah_official', avatar: 'assets/image.png', image: 'assets/ramazans.jpg', bio: 'Dont forget to pray for gaza.',),

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
