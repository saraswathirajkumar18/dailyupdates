/*import 'package:flutter/material.dart';
import 'package:food_app/homepage.dart';
import 'package:food_app/onboard_screen1.dart';
import 'package:food_app/onboard_screen2.dart';
import 'package:food_app/onboard_screen3.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _pageController = PageController(); // Controller for the PageView
  int _currentPage = 0;

  late List<Widget> onboardingPages;

  @override
  void initState() {
    super.initState();
    onboardingPages = [
      OnboardScreen1(pageController: _pageController),
      OnboardScreen2(pageController: _pageController),
      OnboardScreen3(pageController: _pageController),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChange(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _onTap() {
    if (_currentPage < onboardingPages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap, // Tap anywhere to navigate
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: _onPageChange,
          children: onboardingPages,
        ),
      ),
    );
  }
*/
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/homepage.dart';
import 'package:food_app/loginpage.dart';
import 'package:food_app/onboard_screen1.dart';

class OnboardScreen extends StatefulWidget {
  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final List<String> images = [
    'assets/images/onboard1.jpg',
    'assets/images/onboard2.jpg',
    'assets/images/onboard3.jpg',
  ];

  final List<List<String>> texts = [
    ['We made it for you!','Enjoy your meals as you like\n     any where any time'],
    ['Hungry? We are here','Enjoy your meals as you like\n     any where any time'],
    ['Delivered like Flash','Enjoy your meals as you like\n     any where any time'],
  ];
late PageController _controller;
  int _currentPage = 0;
  Timer? _pageTimer;
  Timer? _progressTimer;
  double _progress = 0.0;
  final Duration _imageDuration = Duration(milliseconds: 5000); // Duration for each image

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _startPageTimer();
  }

  void _startPageTimer() {
    _pageTimer = Timer.periodic(_imageDuration, (Timer timer) {
      // Move to the next page
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0; // Loop back to the first page
      }

      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );

      setState(() {
        _progress = 0.0; // Reset progress for the new page
      });

      // Start progress timer for the new page
      _startProgressTimer();
    });
  }

  void _startProgressTimer() {
    _progressTimer?.cancel();
    _progress = 0.0; // Reset progress for the new image

    // Increment the progress every 20 milliseconds to fill it in 200 milliseconds
    const Duration incrementDuration = Duration(milliseconds: 20);
    final int increments = (_imageDuration.inMilliseconds / incrementDuration.inMilliseconds).round();
    double incrementValue = 1 / increments; // Increment value to fill progress

    _progressTimer = Timer.periodic(incrementDuration, (Timer timer) {
      setState(() {
        _progress += incrementValue; // Increment progress
      });

      if (_progress >= 1.0) {
        _progress = 1.0; // Cap progress at 1.0
        _progressTimer?.cancel(); // Stop the progress timer
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageTimer?.cancel();
    _progressTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final screenSize = MediaQuery.of(context).size;   
     //final buttonWidth = screenSize.width * 0.7; // 80% of screen width
    //final buttonHeight = screenSize.height * 0.1; // 10% of screen height    
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: images.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index; // Update the current page index
                });
                _startProgressTimer(); // Start progress timer on page change
              },
              itemBuilder: (context, index) {
                return OnboardPage(
                  image: images[index],
                  text1: texts[index][0],
                  text2: texts[index][1],
                  currentIndex: _currentPage, // Pass the current index
                  totalImages: images.length, // Total number of images
                );
              },
            ),
          ),
          // Progress Bar
          LinearProgressIndicator(
            value: _progress,
            backgroundColor: Colors.grey[300],
            color:Color(0xFFFFB800),
          ),
          SizedBox(height: 10),
          // Dot indicators
          /*Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(images.length, (index) {
              return Container(
               margin: EdgeInsets.symmetric(horizontal: 4.0),
              width: _currentPage == index ? 24.0 : 16.0, // Width for dash
              height: 8.0, // Height for dash
              decoration: BoxDecoration(
                color: _currentPage == index ? Colors.blue : Colors.grey,
                borderRadius: BorderRadius.circular(4.0), // Rounded corners
                ),
              );
            }),
          ),
          */
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                //fixedSize: Size(buttonWidth,buttonHeight),
              backgroundColor: Color(0xFF14278D), // Use backgroundColor instead of 
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
            ),
              onPressed: () {
                _pageTimer?.cancel();
                _progressTimer?.cancel();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) =>LoginPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left:0.0),
                child: Text('Get started',
                style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


    