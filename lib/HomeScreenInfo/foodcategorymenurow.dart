import 'package:flutter/material.dart';
import 'package:food_app/HomeScreenInfo/foodpage.dart';

class FoodCategoryMenuRow extends StatefulWidget {
  @override
  State<FoodCategoryMenuRow> createState() => _FoodCategoryMenuRowState();
}

class _FoodCategoryMenuRowState extends State<FoodCategoryMenuRow> {
  //const FoodCategoryMenuRow({super.key});
 final List<Map<String, dynamic>> items = [
    {
      'icon':'assets/images/homepageimg/categoryicon1.png', // Use your desired icon
      'text': 'Chicken',
      'page': FoodPage(),
    },
    {
      'icon':'assets/images/homepageimg/categoryicon2.png', // Use your desired icon
      'text': 'Burger',
      'page': FoodPage(),

    },
    {
      'icon':'assets/images/homepageimg/categoryicon3.png', // Use your desired icon
      'text': 'Pizza',
      'page': FoodPage(),
    },
    {
      'icon': 'assets/images/homepageimg/categoryicon4.png', // Use your desired icon
      'text': 'Chinese',
      'page': FoodPage(),
    },
    {
      'icon': 'assets/images/homepageimg/categoryicon2.png', // Use your desired icon
      'text': 'Sandwich',
      'page': FoodPage(),
    },
    {
      'icon': 'assets/images/homepageimg/categoryicon3.png', // Use your desired icon
      'text': 'Rolls',
      'page': FoodPage(),
    },
    // Add more items as needed
  ];
 
 @override
  Widget build(BuildContext context) {
    return Container(
      height: 120, // Increased height for the row
      child: PageView.builder(
        itemCount: (items.length / 3).ceil(), // Number of pages (3 items per page)
        itemBuilder: (context, pageIndex) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align icons
            children: items
                .skip(pageIndex * 3) // Skip items to show in current page
                .take(3) // Take up to 3 items for the current page
                .map((item) {
              int index = items.indexOf(item) % 3; // Get the index of the current item in the row
              bool isCenter = index == 1; // Check if this is the center item

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => item['page']),
                  );
                },
                child: Container(
                  width: 80, // Fixed width for each icon
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        item['icon'], // Icon path
                        width: isCenter ? 60 : 48, // Center icon is larger
                        height: isCenter ? 60 : 48, // Center icon is larger
                      ),
                      SizedBox(height: 4),
                      Text(
                        item['text'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: isCenter ? 16 : 12, // Center text is larger
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
   