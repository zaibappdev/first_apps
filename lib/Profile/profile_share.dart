import 'package:first_apps/Profile/profile.dart';
import 'package:flutter/material.dart';

class ProfileShare extends StatefulWidget {
  const ProfileShare({super.key});

  @override
  State<ProfileShare> createState() => _ProfileShareState();
}

class _ProfileShareState extends State<ProfileShare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 50),
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Image.asset("assets/img.png", height: 220, width: 220),
                  Text(
                    '@zaib__mughal_09',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7433FF),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 6),
                        ],
                      ),
                      child: Icon(Icons.share, color: Colors.black),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Share profile',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 6),
                        ],
                      ),
                      child: Icon(Icons.link, color: Colors.black),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Copy link',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 6),
                        ],
                      ),
                      child: Icon(Icons.download, color: Colors.black),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Download',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),

            // Save Button
            SizedBox(height: 90),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                // Button fill color
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 12),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: Text("Done"),
            ),
          ],
        ),
      ),
    );
  }
}
