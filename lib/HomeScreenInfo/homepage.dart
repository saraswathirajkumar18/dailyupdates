import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/HomeScreenInfo/category.dart';
import 'package:food_app/HomeScreenInfo/foodcard.dart';
import 'package:food_app/addresspage.dart';


class HomePage extends StatefulWidget {
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int currentIndex = 0;

  final List<IconData> icons = [
    Icons.home_filled,
    Icons.explore,
    Icons.favorite,
    Icons.person,
  ];

  final List<String> labels = [
    'Home',
    'Explore',
    'Favorites',
    'Profile',
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title: Text('Bottom Navigation Example')),
      body: SingleChildScrollView(
        child: Column(
          children: [
          //homepage banner Carousel
        ImageCarousel (),
        FoodCard(), 
         Category(),    
       // SizedBox(height:10),
             ],
          ), 
        ),  //bottom nav bar
                bottomNavigationBar:Container(
                //margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.15),
            blurRadius: 30,
            offset: Offset(0, -5),
          ),
        ],
                ),
                child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(icons.length, (index) {
              return GestureDetector(
                onTap: () => onTabTapped(index),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                       AnimatedContainer(
                      duration: Duration(milliseconds: 3000),
                      width: currentIndex == index ? 0 : 0,
                      height: 4,
                     // color: Colors.blueAccent,
                      margin: EdgeInsets.only(bottom: 4), // Spacing below the line
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                         /*borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(0), // Rounded bottom corners only
                        ) */// Rounded corners
                      ),
                    ),
                    Icon(
                      icons[index],
                      color: currentIndex == index ? Colors.blueAccent : Colors.black12,
                    ),
                    Text(
                      labels[index],
                      style: TextStyle(
                        color: currentIndex == index ? Colors.blueAccent : Colors.black12,
                      ),
                    ),
                    //SizedBox(height: 4),
                    /*AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: currentIndex == index ? 30 : 0,
                      height: 2,
                      color: Colors.blueAccent,
                    ),*/

                  ],
                ),
              );
            }),
          ),
        ],
                ),
              ),
              
      //)
    );
  }
}


class ImageCarousel extends StatefulWidget {
  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final List<String> images = [
    'assets/images/homepageimg/homebanner1.png',
    'assets/images/homepageimg/homebanner2.png',
    
  ];

 int _currentIndex = 0;

  final PageController _pageController = PageController();

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 6), (timer) {
      if (_currentIndex < images.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0; // Loop back to the first image
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when disposing
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         //Text("app",style: TextStyle(fontSize: 24),),
              
        //Expanded
        Container(
          height: 427,
          child: PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
              color: Colors.white, // Border color
              width: 2, // Border width
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25), // Rounded bottom left corner
              bottomRight: Radius.circular(25), // Rounded bottom right corner
            ),
                  image: DecorationImage(
                    image: AssetImage(images[index]), // Use AssetImage for local images
                    fit: BoxFit.cover,
                  ),
                  
                ),
              );
            },
          ),
        ),
        /*Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(images.length, (index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.blue : Colors.grey,
              ),
            );
          }),
        ),*/
     /* Positioned(
          top: 45, // Adjust this value to position the icon
          left:25,*/
          //child:
           Positioned(
            top: 45,
            left: 25,
            right: 25, 
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                  decoration: BoxDecoration(
                   shape: BoxShape.circle,
                    color: Colors.white, // Background color for the circular border
                    //border: Border.all(color: Colors.blue, width: 2), // Circular border
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.search, // Your icon
                      color:
                      // Colors.red,
                      Color(0xFF14278D), // Change this to your desired color
                      size:20, // Size of the icon
                    ),
                  ),
                           ),
              
                     
                     Center(
                       child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
               //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('   Current Location',
                  style:TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
             
                  ),
               SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    // Navigate to the next page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddressPage()),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                   // mainAxisSize: MainAxisSize.min, // Use minimum size for the Row
                       //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on_rounded, color: Colors.white,size: 16,),
                      SizedBox(width:6), // Space between icon and text
                      Text(
                        'Coimbatore',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          //decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
                       ),
                 ),
                    //),
                   
                  
                   //notification menu 
              /*Positioned(
                       top: 45, // Adjust this value to position the icon
                       right:25,*/
                       //child: 
                       Container(
              decoration: BoxDecoration(
               shape: BoxShape.circle,
                color: Colors.white, // Background color for the circular border
                //border: Border.all(color: Colors.blue, width: 2), // Circular border
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.notifications_none, // Your icon
                  color:
                  // Colors.red,
                  Color(0xFF14278D), // Change this to your desired color
                  size:20, // Size of the icon
                ),
              ),
                       ),
                     //),
                    ],
             ),
           ),
      ],
    );
  }
}

  



