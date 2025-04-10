import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(Icons.close, color: Colors.black),
        //   onPressed: () {},
        // ),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),


      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            // Profile Section
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(
                      'assets/avatar.png',
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ummah',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('ummah@gmail.com'),
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> ));
                      },
                      child: Text('Edit')),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Menu Options
            _buildTile(Icons.language, 'Language Preference'),
            _buildTile(Icons.notifications_none, 'Notifications and Systems'),
            _buildTile(Icons.security, 'Security'),
            _buildTile(Icons.subscriptions, 'Subscription'),
            _buildTile(Icons.description, 'Terms of Service'),
            _buildTile(Icons.delete_forever, 'Delete Account'),

            SizedBox(height: 20),

            // Logout
            TextButton(
              onPressed: () {},
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(IconData icon, String title) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 8),
          leading: Icon(icon, color: Colors.black),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),
        Divider(height: 0),
      ],
    );
  }
}
