import 'package:first_apps/post.dart';
import 'package:first_apps/search.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'notifications.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            Icon(Icons.settings, color: Colors.black),
          ],
        ),
        actions: [
          // Icon(Icons.settings,color: Colors.black,)
        ],
      ),

      ///Body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 15),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/image.png'),
                  radius: 40,
                ),

                SizedBox(width: 45),
                Column(children: [Text('54'), Text('Post')]),

                SizedBox(width: 25),
                Column(children: [Text('864'), Text('Followers')]),

                SizedBox(width: 25),
                Column(children: [Text('213'), Text('Following')]),
              ],
            ),

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

            ///Custom button
            SizedBox(height: 10),
            Center(
              child: Container(
                width: 150,
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
            ),

            ///Divider
            Divider(),

            ///Containers
            Row(
              children: [
                Container(
                  height: 118,
                  width: 118,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Image(
                    image: AssetImage('assets/ramazans.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 2),
                Container(
                  height: 118,
                  width: 118,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Image(
                    image: AssetImage('assets/ramazan.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 2),
                Container(
                  height: 118,
                  width: 118,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Image(
                    image: AssetImage('assets/ramazans.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              children: [
                Container(
                  height: 118,
                  width: 118,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Image(
                    image: AssetImage('assets/ramazan.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 2),
                Container(
                  height: 118,
                  width: 118,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Image(
                    image: AssetImage('assets/ramazans.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 2),
                Container(
                  height: 118,
                  width: 118,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Image(
                    image: AssetImage('assets/ramazan.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              children: [
                Container(
                  height: 118,
                  width: 118,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Image(
                    image: AssetImage('assets/ramazans.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 2),
                Container(
                  height: 118,
                  width: 118,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Image(
                    image: AssetImage('assets/ramazan.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 2),
                Container(
                  height: 118,
                  width: 118,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Image(
                    image: AssetImage('assets/ramazans.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
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
