import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'icon':'assets/images/homepageimg/categoryicon1.png', // Use your desired icon
      'text': 'Chicken',
      'page': FoodPage1(),
    },
    {
      'icon':'assets/images/homepageimg/categoryicon2.png', // Use your desired icon
      'text': 'Burger',
      'page': FoodPage1(),

    },
    {
      'icon':'assets/images/homepageimg/categoryicon3.png', // Use your desired icon
      'text': 'Pizza',
      'page': FoodPage1(),
    },
    {
      'icon': 'assets/images/homepageimg/categoryicon4.png', // Use your desired icon
      'text': 'Chinese',
      'page': FoodPage1(),
    },
    {
      'icon': 'assets/images/homepageimg/categoryicon2.png', // Use your desired icon
      'text': 'Sandwich',
      'page': FoodPage1(),
    },
    {
      'icon': 'assets/images/homepageimg/categoryicon3.png', // Use your desired icon
      'text': 'Rolls',
      'page': FoodPage1(),
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            'CATEGORY',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
            ),
          ),
        ),
        Container(
          height: 100, // Set a fixed height for the row
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => items[index]['page']),
                  );
                },
                child: Container(
                  width:95, // Set the width for each icon
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
        items[index]['icon'], // Your custom icon
        width: 96,
        height:75,
      ),
      SizedBox(height: 4),
      Text(
        items[index]['text'],
        textAlign: TextAlign.center,
         style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// Dummy pages for navigation
class FoodPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food')),
      body: Center(child: Text('Food Page')),
    );
  }
}

class DrinksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drinks')),
      body: Center(child: Text('Drinks Page')),
    );
  }
}

class SweetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sweets')),
      body: Center(child: Text('Sweets Page')),
    );
  }
}
