import 'package:flutter/material.dart';

class QuranSettingsScreen extends StatefulWidget {
  const QuranSettingsScreen({super.key});

  @override
  State<QuranSettingsScreen> createState() => _QuranSettingsScreenState();
}

class _QuranSettingsScreenState extends State<QuranSettingsScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Quran Settings'),
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
                    "Display",
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
                        title: Text("Arabic Font"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Uthmani",
                              style: const TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                        onTap: () {
                          // Handle Arabic Font selection
                        },
                      ),

                      ListTile(
                        title: Text("Text Size"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Medium",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                        onTap: () {
                          // Handle Arabic Font selection
                        },
                      ),

                      ListTile(
                        title: Text("Theme"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Dark",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                        onTap: () {
                          // Handle Arabic Font selection
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
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Translation",
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
                        title: Text("Translation Language"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "English (Saheeh International",
                              style: const TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                        onTap: () {
                          // Handle Arabic Font selection
                        },
                      ),

                      ListTile(
                        title: Text("Show Translation"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Yes",
                              style: const TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                        onTap: () {
                          // Handle Arabic Font selection
                        },
                      ),

                      ListTile(
                        title: Text("Translation Font Size"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Medium",
                              style: const TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                        onTap: () {
                          // Handle Arabic Font selection
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
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Recitation",
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
                        title: Text("Default Reciter"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Mishary Alafasy",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                        onTap: () {
                          // Handle Arabic Font selection
                        },
                      ),

                      ListTile(
                        title: Text("Playback Speed"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Normal",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                        onTap: () {
                          // Handle Arabic Font selection
                        },
                      ),

                      ListTile(
                        title: Text('Auto Play Next Ayah'),
                        trailing: Switch(
                          value: true,
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
          ],
        ),
      ),
    );
  }
}
