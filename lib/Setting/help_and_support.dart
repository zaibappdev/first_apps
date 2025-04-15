import 'package:flutter/material.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Help & Support'),
        centerTitle: true,
        elevation: 0,
      ),

      //Body
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            //Contacts us
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Contact Us",
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
                        leading: Icon(Icons.email, color: Colors.green),
                        title: Text("Email Support"),
                        subtitle: Text("support@islamicapp.com"),
                        trailing: Icon(Icons.chevron_right, color: Colors.grey),
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //Live chat
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
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
                        leading: Icon(Icons.chat, color: Colors.green),
                        title: Text("Live chart"),
                        subtitle: Text("Available 9AM-5PM (GMT)"),
                        trailing: Icon(Icons.chevron_right, color: Colors.grey),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //Call support
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
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
                        leading: Icon(Icons.phone, color: Colors.green),
                        title: Text("Call support"),
                        subtitle: Text("+92 (234) 567-8910"),
                        trailing: Icon(Icons.chevron_right, color: Colors.grey),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            //Join our telegram group
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Community",
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
                        leading: Icon(Icons.groups, color: Colors.green),
                        title: Text("Join our telegram group"),
                        trailing: Icon(Icons.chevron_right, color: Colors.grey),
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //Visit facebook page
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
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
                        leading: Icon(Icons.forum, color: Colors.green),
                        title: Text("Visit our Facebook page"),
                        trailing: Icon(Icons.chevron_right, color: Colors.grey),
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
