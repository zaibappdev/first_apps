import 'package:first_apps/Profile/profile_edit.dart';
import 'package:first_apps/Profile/profile_share.dart';
import 'package:first_apps/Profile/setting.dart';
import 'package:first_apps/post.dart';
import 'package:first_apps/search.dart';
import 'package:flutter/material.dart';
import '../home.dart';
import '../notifications.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> imagePaths = [
    'assets/ramazans.jpg',
    'assets/ramazan.jpg',
    'assets/ramazans.jpg',
    'assets/ramazan.jpg',
    'assets/ramazans.jpg',
    'assets/ramazan.jpg',
    'assets/ramazans.jpg',
    'assets/ramazan.jpg',
    'assets/ramazans.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      ///Appbar username with icons
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,

        title: Row(
          children: [
            Text(
              'ummah.com',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            InkWell(
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
                size: 25,
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
            Spacer(),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Setting()));
                },
                child: Icon(Icons.settings, color: Colors.black)),
          ],
        ),
      ),

      ///Body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Row(
              children: [
                SizedBox(width: 15),
                Container(
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 2, //Border width color
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/image.png'),
                    radius: 40,
                    backgroundColor:
                        Colors
                            .transparent, //This property is use for fill color when there is no image
                  ),
                ),

                SizedBox(width: 45),
                Column(children: [Text('54'), Text('Post')]),
                SizedBox(width: 25),
                Column(children: [Text('864'), Text('Followers')]),
                SizedBox(width: 25),
                Column(children: [Text('213'), Text('Following')]),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 15),
                Text('Ummah', style: TextStyle(color: Colors.black87)),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 15),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Text(
                    'BIO OF USER',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),

            // Edit & share profile buttons
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black26),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Edit profile',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileEdit()),
                    );
                  },
                ),

                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileShare()),
                    );
                  },
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black26),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Share profile',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Divider
            Divider(thickness: 1),

            // Grid View inside Scroll View
            GridView.builder(
              shrinkWrap: true,
              // Important for embedding in scroll view
              physics: NeverScrollableScrollPhysics(),
              // Disable inner scroll
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                // childAspectRatio: 1,
              ),
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => imagePaths()),
                    // );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        imagePaths[index], // Replace with your image URL
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
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
              child: Icon(Icons.notifications, size: 25),
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Profile()),
                // );
              },
              child: Icon(Icons.person, size: 25),
            ),
          ],
        ),
      ),
    );
  }
}
