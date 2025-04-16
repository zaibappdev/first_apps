import 'package:first_apps/post.dart';
import 'package:first_apps/Profile/profile.dart';
import 'package:first_apps/search.dart';
import 'package:flutter/material.dart';
import 'Home/home.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,

        title: Text("Notifications"),
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Notifications()),
                // );
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
