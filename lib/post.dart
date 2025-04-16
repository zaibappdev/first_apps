import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  PostState createState() => PostState();
}

class PostState extends State<Post> {
  bool value = false;

  XFile? _image;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),


        title: Text(
          'New Post',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Share',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),

      //Body
      body: SingleChildScrollView(
        child: Column(
          children: [

            //Image Preview from phone
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                height: MediaQuery.of(context).size.width,
                width: double.infinity,
                color: Colors.grey[200],
                child: _image == null
                    ? Center(
                  child: Icon(
                    Icons.image,
                    size: 100,
                    color: Colors.grey[400],
                  ),
                )
                    : Image.file(
                  File(_image!.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //Post caption
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: TextField(
                cursorHeight: 14,
                decoration: InputDecoration(
                  hintText: 'Write a caption...',
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  ),

                ),
                maxLines: 3,
              ),
            ),

            // Tag People
            ListTile(
              leading: Icon(Icons.person_add_alt_1_outlined),
              title: Text('Tag People'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),

            // Add Location
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text('Add Location'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),

            // Add Music
            ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Add Naats'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),

            //Add Audience
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Audience"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Everyone",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,size: 16),
                ],
              ),
              onTap: () {},
            ),

            //Add Tag Users
            ListTile(
              leading: Icon(Icons.person_2_outlined),
              title: Text('Tag Users'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),

            SizedBox(height: 10,),
            //Advance Setting
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.settings_outlined,color: Colors.black,),
                    SizedBox(width: 5,),
                    Text(
                      "Advance Setting",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700],
                      ),
                    ),
                  ],
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
                        leading: Icon(Icons.comments_disabled_outlined),
                        title: Text("Turn off Comments"),
                        subtitle: Text("You can change this later"),
                        trailing: Switch(
                          value: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                        onTap: () {},
                      ),

                      ListTile(
                        leading: Icon(Icons.favorite_border),
                        title: Text("Hide like count on this post"),
                        trailing: Switch(
                          value: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                        onTap: (){},
                      ),

                      ListTile(
                        leading: Icon(Icons.share_outlined),
                        title: Text("Hide share count on this post"),
                        trailing: Switch(
                          value: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                        onTap: (){},
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
