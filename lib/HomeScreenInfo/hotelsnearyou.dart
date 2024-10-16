import 'package:flutter/material.dart';
import 'package:food_app/HomeScreenInfo/foodpage.dart';

class HotelsNearYou extends StatelessWidget {
  //assets/images/homepageimg/avataricon1.png

 @override
Widget build(BuildContext context) {
  // List of avatars with images and names
  final List<Map<String,dynamic>> avatarData = [
    {
      'image': 'assets/images/homepageimg/avataricon1.png', // Avatar 1 image
      'name': 'A2B',
      'distance':'1.5kms',
      'page':' FoodPage()',
    },
    {
      'image': 'assets/images/homepageimg/avataricon2.png', // Avatar 2 image
      'name': 'KFC',
      'distance':'1.8kms',
      'page':' FoodPage()',
    },
    {
      'image': 'assets/images/homepageimg/avataricon3.png', // Avatar 3 image
      'name': 'Saravana',
      'distance':'1.9kms',
      'page':' FoodPage()',
    },
    {
      'image': 'assets/images/homepageimg/avataricon4.png', // Avatar 4 image
      'name': 'Kongu',
      'distance':'2.5kms',
      'page':' FoodPage()',
    },
    {
      'image': 'assets/images/homepageimg/avataricon5.png', // Avatar 5 image
      'name': 'Star Briya..',
      'distance':'4.5kms',
      'page':' FoodPage()',
    },
    {
      'image': 'assets/images/homepageimg/avataricon6.png', // Avatar 6 image
      'name': 'Mcdona...',
      'distance':'3kms',
      'page':' FoodPage()',
    },
     {
      'image': 'assets/images/homepageimg/avataricon7.png', // Avatar 5 image
      'name': 'Burgerk...',
      'distance':'3.5kms',
      'page':' FoodPage()',
    },
    {
      'image': 'assets/images/homepageimg/avataricon8.png', // Avatar 6 image
      'name': 'Thalapa..',
      'distance':'4kms',
      'page':' FoodPage()',
    },
  ];

  return Padding(
    padding: const EdgeInsets.only(left:0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Heading with arrow icon
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Hotels near you',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FoodPage()),
                      );
              },
            ),
          ],
        ),
       // SizedBox(height: 16),
        // List of avatars in two lines
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Wrap(
            spacing: 10, // Space between avatars
            runSpacing: 10, // Space between rows
            children: avatarData.map((avatar) {
              return GestureDetector( 
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>avatar['page']!),
                        );
                },
                child: Column(
                  children: [
                    Container(
                      width: 64, // Double the radius
                  height: 64, // Double the radius
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFF979797), // Change to your desired border color
                      width:0.5, // Change to your desired border width
                    ),
                  ),
                      child: CircleAvatar(
                        radius:32,
                        backgroundImage: AssetImage(avatar['image']!), // Use image from the list
                      //color-#979797
                      ),
                    ),
                    SizedBox(height: 4), // Space between avatar and text
                    Text(
                      avatar['name']!, // Avatar text
                      style: TextStyle(fontSize: 13,color:Color(0xFF1E1E1E),fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 4), // Space between avatar and text
                    Text(
                      avatar['distance']!, // Avatar text
                      style: TextStyle(fontSize: 11,color:Color(0xFF8B8B8B),fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    ),
  );
}
}
 /* @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Heading with arrow icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Heading',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  // Add functionality for arrow icon
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          // Avatar icon
          Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/homepageimg/avataricon1.png'), // Replace with your avatar image
              ),
              SizedBox(height: 8), // Space between avatar and text
              Text(
                'First Text',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                'Second Text',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 16),
          // List of icons in two lines
          Wrap(
            spacing: 2, // Space between icons
            runSpacing: 10, // Space between lines
            children: [
              CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage('assets/images/homepageimg/avataricon1.png'), // URL for avatar image
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage('assets/images/homepageimg/avataricon1.png'),
    ),
            ],
          ),
        ],
      ),
    );
  }
}*/
