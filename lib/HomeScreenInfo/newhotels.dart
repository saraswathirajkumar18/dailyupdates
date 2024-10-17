import 'package:flutter/material.dart';
import 'package:food_app/HomeScreenInfo/foodpage.dart';
import 'package:food_app/HomeScreenInfo/newhotelscard.dart';

class NewHotels extends StatelessWidget {
 final List<Map<String, dynamic>> cardInfo = [
    {
      'image': 'assets/images/homepageimg/newhotelsmenu1.png',
      'storeName':'Sangeetha’s',
      'storeFoodType': 'Multi Cuisine',
      'distance': '3kms',
      'page': FoodPage(),
    },
    {
      'image': 'assets/images/homepageimg/newhotelsmenu2.png',
      'storeName':'Pizza hut',
      'storeFoodType':'Italian cusine',
      'distance': '3kms',
      'page': FoodPage(),
    },
    {
      'image': 'assets/images/homepageimg/newhotelsmenu3.png',
      'storeName':'Meet & Eat',
      'storeFoodType': 'Fast food',
      'distance': '3kms',
      'page': FoodPage(),
    },
     {
      'image': 'assets/images/homepageimg/newhotelsmenu3.png',
      'storeName':'Meet & Eat',
      'storeFoodType': 'Fast food',
      'distance': '3kms',
      'page': FoodPage(),
    },
     {
      'image': 'assets/images/homepageimg/newhotelsmenu3.png',
      'storeName':'Meet & Eat',
      'storeFoodType': 'Fast food',
      'distance': '3kms',
      'page': FoodPage(),
    },
    // Add more cards as needed
  ];
@override
Widget build(BuildContext context) {
  return Column(
    children: [
      // Heading with right arrow
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'New Hotels / Top Brands',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              // Add functionality for right arrow
              Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FoodPage()),
                      );
            },
          ),
        ],
      ),
      // List of cards with images and text below
      Padding(
        padding: const EdgeInsets.only(left:12,right:12),
        child: Container(
          height:180,
          child: Padding(
            padding: const EdgeInsets.all(0.0),//-add space around whole list of card
            child: ListView.builder(
              //shrinkWrap: true, // Allow ListView to wrap its height
              //physics: NeverScrollableScrollPhysics(), // Disable scrolling for the ListView
              scrollDirection: Axis.horizontal,
              itemCount:cardInfo.length,
              itemBuilder: (context, index) {
                final item = cardInfo[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   NewHotelsCard(
                  image: item['image'],
                  headingText:item['storeName'],
                  subText1: item['storeFoodType'],
                  subText2: item['distance'],
                  onTap: () {
                    Navigator.push(
                      
                      context,
                      MaterialPageRoute(builder: (context) =>item['page']),
                    );
                  },
                ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    ],
  );
}
}




 /* @override
  Widget build(BuildContext context) {
    
                child: ListView.builder(
                 // shrinkWrap: true, // Allow ListView to wrap its height
                  //physics: NeverScrollableScrollPhysics(), // Disable scrolling for the ListView
                  itemCount: cardInfo.length,
                  itemBuilder: (context, index) {
                    final cardData = cardInfo[index];
                    
*/
