import 'package:flutter/material.dart';

class PrayerTimes extends StatefulWidget {
  const PrayerTimes({super.key});

  @override
  State<PrayerTimes> createState() => _PrayerTimesState();
}

class _PrayerTimesState extends State<PrayerTimes> {
  bool value = false;

  final List<Map<String, dynamic>> prayers = [
    {"name": "Fajr", "time": "5:12 AM", "passed": false},
    {"name": "Sunrise", "time": "6:30 AM", "passed": true},
    {"name": "Dhuhr", "time": "12:15 PM", "passed": false},
    {"name": "Asr", "time": "3:45 PM", "passed": false},
    {"name": "Maghrib", "time": "6:28 PM", "passed": false},
    {"name": "Isha", "time": "8:00 PM", "passed": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Prayer Times'),
        centerTitle: true,
        elevation: 0,
      ),

      //Body
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(color: Colors.grey),
                        ),
                        IconButton(
                          icon: Icon(Icons.edit, size: 20),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Madinah, Saudi Arabia",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "12 April 2023 | 21 Ramadan 1444 AH",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Card(
              color: Colors.white,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children:
                    prayers
                        .map<Widget>(
                          (prayer) => ListTile(
                            title: Text(
                              prayer["name"] as String,
                              style: TextStyle(
                                fontWeight:
                                    (prayer["passed"] as bool)
                                        ? FontWeight.normal
                                        : FontWeight.bold,
                                color:
                                    (prayer["passed"] as bool)
                                        ? Colors.grey
                                        : Colors.black,
                              ),
                            ),
                            trailing: Text(
                              prayer["time"] as String,
                              style: TextStyle(
                                fontWeight:
                                    (prayer["passed"] as bool)
                                        ? FontWeight.normal
                                        : FontWeight.bold,
                                color:
                                    (prayer["passed"] as bool)
                                        ? Colors.grey
                                        : Colors.green,
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),
            ),

            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    "Calculation Settings",
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
                        title: Text("Calculation Method"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Umm Al-Qura (Makkah)",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Text("Asr Calculation"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Shafi'i (Standard)",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Text("High Latitude"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Angle Based",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                        onTap: () {},
                      ),

                      ListTile(
                        title: Text("Daylight Saving Time"),
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
