import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar
      appBar: AppBar(title: Text('About App'), centerTitle: true, elevation: 0),

      //Body
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  //Image app
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images.png'),
                  ),

                  //Ummah app
                  SizedBox(height: 16),
                  Text(
                    'Ummah App',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
                  ),

                  //Version
                  Text('Version 1.0.0', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),

            //Our mission
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Our mission",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "To connect Muslims worldwide and provide a halal platform for social interaction, Islamic learning, and community building.",
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Features",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle, size: 16, color: Colors.green,),
                          SizedBox(width: 5,),
                          Text("Halal social networking"),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.check_circle, size: 16, color: Colors.green,),
                          SizedBox(width: 5,),
                          Text("Prayer times & Qibla direction"),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.check_circle, size: 16, color: Colors.green,),
                          SizedBox(width: 5,),
                          Text("Quran with translations"),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.check_circle, size: 16, color: Colors.green,),
                          SizedBox(width: 5,),
                          Text("Islamic event discovery"),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.check_circle, size: 16, color: Colors.green,),
                          SizedBox(width: 5,),
                          Text("Community support"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Developers",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Developed by a team of Muslim developers passionate about creating beneficial technology for the Ummah.",
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.public, color: Colors.green),
                        title: Text("Visit our website"),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                        onTap: () {},
                      ),

                    ],
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.code, color: Colors.green),
                        title: Text("Open source licenses"),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                        onTap: () => showLicensePage(context: context),
                      ),

                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Text(
              "© 2023 Islamic Social App. All rights reserved.",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
