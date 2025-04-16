import 'package:first_apps/post.dart';
import 'package:flutter/material.dart';
import 'Profile/profile.dart';
import 'Home/home.dart';
import 'notifications.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  int _selectedCategoryIndex = 0;

  final List<String> _categories = [
    'Photos',
    'Islamic',
    'Shops',
    'Sports',
    'Food',
    'Art',
    'Quran',
    'Travel'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,

        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              hintText: 'Search',
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            onChanged: (value) {
              setState(() {}); // Rebuild UI on input change
            },
          ),
        ),
      ),

      //Body
      body: _buildSearchContent(),

      ///Bottom navigation bar
      bottomNavigationBar: BottomAppBar(
        height: 45,
        color: Colors.white,
        shadowColor: Colors.green.shade900,
        elevation: 15,

        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Icon(Icons.home, size: 25),
            ),
            InkWell(
              onTap: () {},
              child: Icon(Icons.search),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Post()),
                );
              },
              child: Icon(Icons.add_box_outlined, size: 25),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
              child: Icon(Icons.favorite_border_outlined, size: 25),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: Icon(Icons.person, size: 25),
            ),
          ],
        ),
      ),
    );
  }

  //Custom widget bring from deepseek AI
  Widget _buildSearchContent() {
    if (_searchController.text.isNotEmpty) {
      // Show users when typing
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Users',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/1.jpg'),
                  ),
                  title: Text('islamic_vibes'),
                  trailing: Icon(Icons.close, size: 20),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/women/2.jpg'),
                  ),
                  title: Text('islamic_motivations'),
                  trailing: Icon(Icons.close, size: 20),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/3.jpg'),
                  ),
                  title: Text('quran_surah'),
                  trailing: Icon(Icons.close, size: 20),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/women/4.jpg'),
                  ),
                  title: Text('islamic_shorts'),
                  trailing: Icon(Icons.close, size: 20),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/5.jpg'),
                  ),
                  title: Text('ummah_official'),
                  trailing: Icon(Icons.close, size: 20),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      // Show photos when not typing
      return Column(
        children: [
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ChoiceChip(
                    label: Text(_categories[index]),
                    selected: _selectedCategoryIndex == index,
                    selectedColor: Colors.blue[100],
                    onSelected: (selected) {
                      setState(() {
                        _selectedCategoryIndex = index;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Divider(height: 1),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
              ),
              itemCount: 30,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey[200],
                  child: Image.network(
                    'https://picsum.photos/500/500?random=$index',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ],
      );
    }
  }
}
