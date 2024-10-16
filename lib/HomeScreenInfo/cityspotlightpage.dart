import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/HomeScreenInfo/foodcategorymenurow.dart';


class CitySpotLightPage extends StatelessWidget {

  //const Cityspotlightpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0), 
      child: Stack(
            children: [
              // Background Image
              Container(
                width:360,
                height:246,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/homepageimg/spotlightbanner.png'), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Centered Row
              Positioned(
                top:10, // Set your desired top position
            left: 12, // Set your desired left position
            right:12,
                child: Container(
                  // width: 300, // Set your desired width
                  //height:100,
                  alignment: Alignment.center,
                  child: Text('CITY SPOTLIGHT',
                             textAlign: TextAlign.center,
                  style:TextStyle(
                  fontFamily:'Montserrat',
                  fontSize:23,
                  fontWeight: FontWeight.bold,  
                  letterSpacing: 5.0,
                  color:Colors.white,
                  //line-height: 19px;
                  //letter-spacing: 0.3em;
                  //text-align: center;
                  
                  
                  ),
                  
                  ),
                ),
              ),
              Positioned(
            top: 100, // Set your desired top position
            left: 12, // Set your desired left position
            right:12,
                child: FoodCategoryMenuRow (),
                
                /*Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white.withOpacity(0.8), // Optional: background for readability
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Your Centered Content',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),*/
              ),
            ],     
      ),
    );
  }
}
