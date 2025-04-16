import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_custom_widget extends StatelessWidget {
  final String name;
  final String avatar;
  final String image;
  final String bio;

  const home_custom_widget({
    super.key,
    required this.screenWidth,
    required this.name,
    required this.avatar,
    required this.image,
    required this.bio,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26), // Outline Border
        borderRadius: BorderRadius.circular(
          2,
        ), // Optional: Rounded Corners
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                // CircleAvatar
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(avatar),
                ),
                SizedBox(width: 3,),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Center(child: Icon(Icons.verified_rounded,color: Colors.blue,size: 16,)),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    InkWell(
                        onTap: (){
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 200,
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: const Icon(Icons.report, color: Colors.red),
                                      title: const Text("Report Post"),
                                      onTap: () {
                                        Navigator.pop(context);
                                        // Add report functionality
                                      },
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.share),
                                      title: const Text("Share Post"),
                                      onTap: () {
                                        Navigator.pop(context);
                                        // Add share functionality
                                      },
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.bookmark),
                                      title: const Text("Save Post"),
                                      onTap: () {
                                        Navigator.pop(context);
                                        // Add save functionality
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Icon(Icons.more_vert)
                    ),
                  ],
                ),
              ],
            ),
          ),

          ///Centre photos and videos etc
          Container(
            height: 400,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.purple,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),

          /// Bottom icons
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.favorite, size: 24,color: Colors.red,),
                Text("1,234"),
                SizedBox(width: 15),
                Icon(Icons.mode_comment_outlined, size: 24),
                Text("234"),
                SizedBox(width: 15),
                Icon(Icons.send_outlined, size: 24),
                Spacer(),
                Icon(Icons.bookmark_border, size: 24),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 6,),
              Text(
                '1,234 likes',
              ),

              SizedBox(width: 5,),
              Text(
                '234 comments',
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 6,),
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),

              SizedBox(width: 1),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Icon(Icons.verified_rounded,color: Colors.blue,size: 16,)),
                ],
              ),
              SizedBox(width: 2,),
              Text(
                bio,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 5,),
              Text(
                '2 hours ago',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
