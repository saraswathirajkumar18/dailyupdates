import 'dart:async';

import 'package:flutter/material.dart';

class ImageAutoScrollPage extends StatefulWidget {
  final List<String> images; // List of image paths
  final double borderRadius; // Border radius for the container
  final double height; // Height of the image container

  // Constructor
  const ImageAutoScrollPage({
    Key? key,
    required this.images,
    this.borderRadius = 25.0, // Default border radius
    this.height = 427.0, // Default height
  });

  @override
  State<ImageAutoScrollPage> createState() => _ImageAutoScrollPageState();
}

class _ImageAutoScrollPageState extends State<ImageAutoScrollPage> {
 /*final List<String> images = [
    'assets/images/homepageimg/homebanner1.png',
    'assets/images/homepageimg/homebanner2.png',
    
  ];*/

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
      if (_currentIndex < widget.images.length - 1) {
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
        Container(
          height: widget.height, // Use the customized height
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.transparent, // Border color
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(widget.borderRadius), // Rounded bottom left corner
                    bottomRight: Radius.circular(widget.borderRadius), // Rounded bottom right corner
                  ),
                  image: DecorationImage(
                    image: AssetImage(widget.images[index]), // Use AssetImage for local images
                    fit: BoxFit.cover,
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