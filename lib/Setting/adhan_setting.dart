import 'package:flutter/material.dart';

class AdhanSetting extends StatefulWidget {
  const AdhanSetting({super.key});

  @override
  State<AdhanSetting> createState() => _AdhanSettingState();
}

class _AdhanSettingState extends State<AdhanSetting> {
  bool value = false;
  double _adhanVolume = 0.7;
  double _reminderVolume = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Adhan Settings'),
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
                    "Adhan Preferences",
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
                        title: Text("Enable Adhan"),
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

                      ListTile(
                        title: Text("Adhan Sound"),
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
                        title: Text("Vibrate on Adhan"),
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

            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Prayer Reminders",
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
                        title: Text("Enable Reminders"),
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

                      ListTile(
                        title: Text("Reminder Time"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "15 minutes before",
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
                        title: Text("Reminder Sound"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Default",
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
                    "Volume Control",
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
                      SliderListTile(
                        title: "Adhan Volume",
                        value: _adhanVolume,
                        onChanged: (val) {
                          setState(() {
                            _adhanVolume = val;
                          });
                        },
                      ),
                      SliderListTile(
                        title: "Reminder Volume",
                        value: _reminderVolume,
                        onChanged: (val) {
                          setState(() {
                            _reminderVolume = val;
                          });
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

class SliderListTile extends StatelessWidget {
  final String title;
  final double value;
  final ValueChanged<double> onChanged;

  const SliderListTile({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Text("${(value * 100).toInt()}%"),
      subtitle: Slider(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.green,
      ),
    );
  }
}
