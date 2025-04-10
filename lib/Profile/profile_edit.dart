import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  String selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      ///Appbar text
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Text('Edit profile', style: TextStyle(color: Colors.black)),
      ),

      ///body
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Circle avatar with text
            Column(
              children: [
                Container(
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/image.png'),
                    radius: 40,
                    backgroundColor: Colors.transparent,
                  ),
                ),

                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      showDragHandle: true,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: EdgeInsets.only(),
                          height: 400,
                          width: 400,
                          child: Column(
                            children: [
                              //Profile change in bottom sheet
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 2,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/image.png',
                                  ),
                                  radius: 25,
                                  backgroundColor: Colors.transparent,
                                ),
                              ),

                              //Divider
                              Divider(indent: 15, endIndent: 15),

                              //Choose from library
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.library_add_check_outlined,
                                    size: 35,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Choose from library',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),

                              //Take photo
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  Icon(Icons.camera_alt_outlined, size: 35),
                                  SizedBox(width: 5),
                                  Text(
                                    'Take photo',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),

                              //Delete photo
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  Icon(Icons.delete_forever_outlined, size: 35),
                                  SizedBox(width: 5),
                                  Text(
                                    'Delete',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),

                              SizedBox(height: 70),
                              Text(
                                "Your profile picture are visible to everyone on and off instagram",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Change Profile Picture',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Name Field
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                controller: nameController,
                cursorHeight: 16,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Username Field
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                controller: usernameController,
                cursorHeight: 16,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Bio Field
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                controller: nameController,
                maxLines: 2,
                cursorHeight: 16,
                decoration: InputDecoration(
                  labelText: 'Bio',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Gender Selector from (stackoverflow)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 13),
                Text("Gender:"),
                SizedBox(width: 15),
                Row(
                  children: [
                    Radio<String>(
                      value: 'Male',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                    Text("Male"),
                  ],
                ),
                Row(
                  children: [
                    Radio<String>(
                      value: 'Female',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                    Text("Female"),
                  ],
                ),
              ],
            ),

            SizedBox(height: 24),

            // Save Button
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 60, right: 60),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    // Button fill color
                    foregroundColor: Colors.black,
                    // Text/icon color
                    side: BorderSide(
                      color: Colors.green, // Border color
                      width: 1, // Border thickness
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ), // Rounded corners
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  onPressed: () {
                    debugPrint("Name: ${nameController.text}");
                    debugPrint("Username: ${usernameController.text}");
                    debugPrint("Bio: ${bioController.text}");
                    debugPrint("Gender: $selectedGender");
                  },
                  child: Text("Save Changes"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
