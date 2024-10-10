
import 'package:flutter/material.dart';
import 'onboard_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds:2, milliseconds: 500), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardScreen()),
      );
    });
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Color(0xFFF5DCD7),
        elevation:0,
),
      //),
    body:Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5DCD7),
            image: DecorationImage(
              image: AssetImage('assets/images/Spalsh Screen.png'), // Path to your background image
              fit: BoxFit.cover, // This makes the image cover the entire container
            ),
          ), 
    )
    );
   
   
   
   
  }
}
