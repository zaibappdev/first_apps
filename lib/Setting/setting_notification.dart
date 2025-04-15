import 'package:flutter/material.dart';

class SettingNotification extends StatefulWidget {
  const SettingNotification({super.key});

  @override
  State<SettingNotification> createState() => _SettingNotificationState();
}

class _SettingNotificationState extends State<SettingNotification> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar
      appBar: AppBar(
        title: Text('Notifications'),
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
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "General",
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
                        title: Text("App Notifications"),
                        trailing: Switch(
                          value: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
                        onTap: (){},
                      ),

                      ListTile(
                        title: Text("Sound"),
                        trailing: Switch(
                          value: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
                      ),

                      ListTile(
                        title: Text("Vibration"),
                        trailing: Switch(
                          value: false,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Islamic Reminders",
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
                        title: Text("Prayer Times"),
                        trailing: Switch(
                          value: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
                      ),

                      ListTile(
                        title: Text("Quran Reading Reminder"),
                        trailing: Switch(
                          value: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
                      ),

                      ListTile(
                        title: Text("Dhikr Reminder"),
                        trailing: Switch(
                          value: false,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
                      ),

                      ListTile(
                        title: Text("Charity Reminder"),
                        trailing: Switch(
                          value: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Social",
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
                        title: Text("New Followers"),
                        trailing: Switch(
                          value: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
                      ),

                      ListTile(
                        title: Text("Post Likes"),
                        trailing: Switch(
                          value: false,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
                      ),

                      ListTile(
                        title: Text("Comments"),
                        trailing: Switch(
                          value: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
                      ),

                      ListTile(
                        title: Text("Mentions"),
                        trailing: Switch(
                          value: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.green,
                        ),
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

