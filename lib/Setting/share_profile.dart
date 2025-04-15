import 'package:first_apps/Setting/setting.dart';
import 'package:flutter/material.dart';

class ShareProfile extends StatefulWidget {
  const ShareProfile({super.key});

  @override
  State<ShareProfile> createState() => _ShareProfileState();
}

class _ShareProfileState extends State<ShareProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Share profile"),
        centerTitle: true,
      ),

      //Body
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Image.asset("assets/img.png", height: 220, width: 220),
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
                        color: Colors.green,
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
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.green,
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
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.green,
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
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),

            // Save Button
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                // Button fill color
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 12),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Setting()),
                );
              },
              child: Text("Done",style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
