import 'dart:io';

import 'package:first_apps/Setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  // Inside _EditProfileState
  XFile? _selectedImage;

  // Check permission status
  Future<bool> _checkPermission(Permission permission) async {
    final status = await permission.status;
    return status.isGranted;
  }

  // Request permission
  Future<bool> _requestPermission(Permission permission) async {
    final status = await permission.request();
    return status.isGranted;
  }

  Future<void> _requestCameraPermission() async {
    final isGranted = await _checkPermission(Permission.camera);
    if (!isGranted) {
      await _requestPermission(Permission.camera);
    }

    if (await Permission.camera.isGranted) {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        setState(() {
          _selectedImage = image;
        });
      } else {
        print("Camera image picking canceled");
      }
    } else {
      print("Camera permission denied");
    }
  }

  // Request Gallery permission
  Future<void> _requestGalleryPermission() async {
    final isGranted = await _checkPermission(Permission.storage);
    if (!isGranted) {
      await _requestPermission(Permission.storage);
    }

    if (await Permission.storage.isGranted) {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _selectedImage = image;
        });
      } else {
        print("Gallery image picking canceled");
      }
    } else {
      print("Gallery permission denied");
    }
  }

  //Firebase authentication
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  String selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar text
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Text('Edit profile', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),

      //body
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Circle avatar with text
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage:
                        _selectedImage != null
                            ? FileImage(File(_selectedImage!.path))
                            : AssetImage('assets/images.png') as ImageProvider,
                  ),
                  Positioned(
                    height: 30,
                    width: 30,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),

                      //Icon wrap with bottom sheet
                      child: IconButton(
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 15,
                        ),
                        onPressed: () {
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
                                height: 180,
                                width: 400,
                                child: Column(
                                  children: [
                                    //Choose from library
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.library_add_check_outlined,
                                          size: 35,
                                        ),
                                        SizedBox(width: 5),
                                        InkWell(
                                          onTap: _requestGalleryPermission,
                                          child: Text(
                                            'Choose from library',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ],
                                    ),

                                    //Take photo
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.camera_alt_outlined,
                                          size: 35,
                                        ),
                                        SizedBox(width: 5),
                                        InkWell(
                                          onTap: _requestCameraPermission,
                                          child: Text(
                                            'Take photo',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ],
                                    ),

                                    //Delete photo
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.delete_forever_outlined,
                                          size: 35,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Delete',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 20),
                                    Text(
                                      "Your profile picture are visible to everyone on and off Ummah",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Name Field
            SizedBox(height: 20),
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

            // Username Field
            SizedBox(height: 6),
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

            // Bio Field
            SizedBox(height: 6),
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

            // Country field
            SizedBox(height: 6),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                controller: usernameController,
                cursorHeight: 16,
                decoration: InputDecoration(
                  labelText: 'Country',
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

            // Email field
            SizedBox(height: 6),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                controller: usernameController,
                cursorHeight: 16,
                decoration: InputDecoration(
                  labelText: 'Email',
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

            // Gender Selector from (stackoverflow)
            SizedBox(height: 6),
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
                  ),
                  onPressed: () {
                    debugPrint("Name: ${nameController.text}");
                    debugPrint("Username: ${usernameController.text}");
                    debugPrint("Bio: ${bioController.text}");
                    debugPrint("Gender: $selectedGender");

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Setting()),
                    );
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
