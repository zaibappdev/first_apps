import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_apps/Authentication/login.dart';
import 'package:first_apps/Setting/prayer_times.dart';
import 'package:first_apps/Setting/privacy_and_security.dart';
import 'package:first_apps/Setting/quran_setting.dart';
import 'package:first_apps/Setting/setting_notification.dart';
import 'package:first_apps/Setting/share_profile.dart';
import 'package:flutter/material.dart';
import 'about_app.dart';
import 'adhan_setting.dart';
import 'edit_profile.dart';
import 'help_and_support.dart';
import 'language_setting.dart';

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

      //App bar
      appBar: AppBar(title: Text('Settings'),
          centerTitle: true,
          elevation: 0,
      ),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [

              //Circle avatar with text
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ummah",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text("@ummah.com", style: TextStyle(color: Colors.grey)),
                    ],
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
                    child: Text(
                      "Account",
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
                          leading: Icon(Icons.person, color: Colors.green),
                          title: Text("Edit Profile"),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
                          },
                        ),

                        ListTile(
                          leading: Icon(Icons.share, color: Colors.green),
                          title: Text("Share Profile"),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ShareProfile(),));
                          },
                        ),

                        ListTile(
                          leading: Icon(Icons.lock, color: Colors.green),
                          title: Text("Privacy & Security"),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyAndSecurity(),));
                          },
                        ),

                        ListTile(
                          leading: Icon(
                            Icons.notifications,
                            color: Colors.green,
                          ),
                          title: Text("Notifications"),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SettingNotification(),));
                          },
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
                    child: Text(
                      "Islamic Preferences",
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
                          leading: Icon(Icons.book, color: Colors.green),
                          title: Text("Quran Settings"),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => QuranSettingsScreen(),));
                          },
                        ),

                        ListTile(
                          leading: Icon(
                            Icons.calendar_today,
                            color: Colors.green,
                          ),
                          title: Text("Prayer Times"),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PrayerTimes(),));
                          },
                        ),

                        ListTile(
                          leading: Icon(Icons.volume_up, color: Colors.green),
                          title: Text("Adhan Settings"),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AdhanSetting(),));
                          },
                        ),

                        ListTile(
                          leading: Icon(Icons.language, color: Colors.green),
                          title: Text("Language"),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LanguageSetting(),));
                          },
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
                    child: Text(
                      "More",
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
                          leading: Icon(Icons.help, color: Colors.green),
                          title: Text("Help & Support"),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HelpAndSupport(),));
                          },
                        ),

                        ListTile(
                          leading: Icon(Icons.info, color: Colors.green),
                          title: Text("About App"),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AboutApp(),));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //Logout elevated button
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.logout, color: Colors.white),
                  label: Text("Logout", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () async {
                    try {
                      // Sign out from Firebase
                      await FirebaseAuth.instance.signOut();

                      // Navigate to Login Screen and remove all previous routes
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                            (route) => false,
                      );
                    } catch (e) {
                      print("Logout failed: $e");
                      // Optionally show error message
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
