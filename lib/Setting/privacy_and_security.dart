import 'package:flutter/material.dart';

class PrivacyAndSecurity extends StatefulWidget {
  const PrivacyAndSecurity({super.key});

  @override
  State<PrivacyAndSecurity> createState() => _PrivacyAndSecurityState();
}

class _PrivacyAndSecurityState extends State<PrivacyAndSecurity> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar
      appBar: AppBar(
        title: Text('Privacy & Security'),
        centerTitle: true,
        elevation: 0,
      ),

      //Body
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Account Privacy",
                    style: TextStyle(
                      fontSize: 16,
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
                        title: Text("Private Account"),
                        subtitle: Text("Only approved followers can see your posts"),
                        trailing: Switch(
                          value: value,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Text("Hide Activity Status"),
                        subtitle: Text("Others won't see when you're active"),
                        trailing: Switch(
                          value: value,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
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
                    "Connections",
                    style: TextStyle(
                      fontSize: 16,
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
                        title: Text("Blocked Accounts"),
                        subtitle: Text("5 accounts blocked"),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Text("Restricted Accounts"),
                        subtitle: Text("2 accounts restricted"),
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
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Data & Security",
                    style: TextStyle(
                      fontSize: 16,
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
                        title: Text("Two-Factor Authentication"),
                        subtitle: Text("Add extra security to your account"),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Text("Data Download"),
                        subtitle: Text("Request a copy of your data"),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Text("Account Deletion"),
                        subtitle: Text("Permanently delete your account"),
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
          ],
        ),
      ),
    );
  }
}
