import 'package:flutter/material.dart';
import 'package:food_app/HomeScreenInfo/banquetsincitycard.dart';
import 'package:food_app/HomeScreenInfo/foodpage.dart';

class BanquetsinCity extends StatelessWidget {
final List<Map<String, dynamic>> cardInformation= [
    {
      'image': 'assets/images/homepageimg/festival1.jpg',
      'festName':'Food pro - 2024',
      'festType': 'Chennai food festival',
      'festDate': '20 Aug,24',
      'festTime': '4pm - 10pm',
      'locationIcon':'assets/images/homepageimg/locationicon1.png',
      'location':'Island Ground',
     
    },
    {
      'image': 'assets/images/homepageimg/festival1.jpg',
      'festName':'Food pro - 2024',
      'festType': 'Chennai food festival',
      'festDate': '20 Aug,24',
      'festTime': '4pm - 10pm',
      'locationIcon':'assets/images/homepageimg/locationicon1.png',
      'location':'Island Ground',
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
              'Banquets in your city',
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
          height:200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:cardInformation.length,
            itemBuilder: (context, index) {
              final item =cardInformation[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 BanquetsinCityCard(
                image: item['image'],
                 heading:item['festName'],
               subheading1: item['festType'],
                subheading2: item['festDate'],
                subheading3: item['festTime'],
               iconPath: item['locationIcon'],
               location:item['location'],
                onTap: () {
                  Navigator.push(
                    
                    context,
                    MaterialPageRoute(builder: (context) =>FoodPage()),
                  );
                },
              ),
                ],
              );
            },
          ),
        ),
      ),
    ],
  );
}
}
