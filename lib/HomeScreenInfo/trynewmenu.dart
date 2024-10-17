import 'package:flutter/material.dart';
import 'package:food_app/HomeScreenInfo/foodpage.dart';

class TryNewMenu extends StatelessWidget {
 

  /*@override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}*/
//class CardListScreen extends StatelessWidget {
  // Define the list of items directly within this class
  final List<Map<String, dynamic>> items = [
    {
      'foodImage': 'assets/images/homepageimg/trynewmenu1.png',
      'foodName': 'Parotta',
      'page': FoodPage(),
    },
    {
      'foodImage': 'assets/images/homepageimg/trynewmenu2.png',
      'foodName': 'Savarma',
      'page': FoodPage(),
    },
    {
      'foodImage': 'assets/images/homepageimg/trynewmenu3.png',
      'foodName': 'Chicken biryani',
      'page': FoodPage(),
    },
    {
      'foodImage': 'assets/images/homepageimg/trynewmenu3.png',
      'foodName': 'Rice',
      'page':FoodPage(),
    },
    {
      'foodImage': 'assets/images/homepageimg/trynewmenu3.png',
      'foodName': 'Fried rice',
      'page':FoodPage(),
    },
    // Add more items as needed
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
              'You’ve tried',
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
          height:150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 // Text('hi'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => item['page']),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:3.0),//space between cards
                          child: Card(
                            //elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Color(0xFFA6AAD7), width:1),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      //.only(
                                        //topLeft: Radius.circular(10),
                                        //topRight: Radius.circular(10),
                                      //),
                                      child: Image.asset(
                                        item['foodImage'], // Use the correct key
                                        fit: BoxFit.cover,
                                        //width: double.infinity,
                                        width:100,
                                        height: 120,
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      right: 4,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Color(0xFFFF6B00),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 12,
                                              ),
                                              SizedBox(width: 7),
                                              Text(
                                                '4.5', // Use the correct key
                                                style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w700),
                                              ),
                                              SizedBox(width: 5),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                               
                              ],
                            ),
                          ),
                        ),
                       SizedBox(height: 4),
                         Padding(
                           padding: const EdgeInsets.only(left:12.0,right:12),
                           child: Text(
                              item['foodName'], // Use the correct key
                              //textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                         ),
                      ],
                    ),
                  ),
                  // You may want to add spacing between cards here
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









  