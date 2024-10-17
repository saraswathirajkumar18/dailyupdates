import 'package:flutter/material.dart';

class BanquetsinCityCard extends StatelessWidget {
  final String image;
  final String heading;
  final String subheading1;
  final String subheading2;
  final String subheading3;
  final String iconPath;
  final String location;
  final VoidCallback onTap;

  BanquetsinCityCard({
    required this.image,
    required this.heading,
    required this.subheading1,
    required this.subheading2,
    required this.subheading3,
    required this.iconPath,
     required this.location,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right:3.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              // Background Image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width:300,
                  height: 140, // Set a fixed height for the card
                ),
              ),
              // Overlay Text
              //fill the whole container with given color
               Positioned.fill(
                //left: 0,
                //top: 10,
               // right: 10,
                //bottom: 10,
                //add
                child: Container(
                  //not giving size it doen't show overlay color 
                  /*width:300,
                  height: 140,*/
                  decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5), // Semi-transparent black overlay
                borderRadius: BorderRadius.circular(10), // Match image corner radius
              ),
                 // padding: EdgeInsets.all(10),
               //add multi color to overlay
                /*decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.3),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    //borderRadius: BorderRadius.circular(10),
                  ),*/
                  child: Stack(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Left Side: Texts
                      Positioned(
                        bottom: 20, // Position text 20 pixels from the bottom
                      left: 20,
                      right: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              heading,
                              style: TextStyle(
                                color: Colors.white,
                                 fontSize: 16,
                                fontWeight:FontWeight.w600,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              subheading1,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight:FontWeight.w600,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                           SizedBox(height: 3),
                            Row(
                              children: [
                                Text(
                                  subheading2,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight:FontWeight.w500,
                                  ),
                                ),
                             SizedBox(width:8),
                            Text(
                              subheading3,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight:FontWeight.w500,
                              ),
                            ),
                           ],
                            ),
                          ],
                        ),
                      ),
                      // Right Side: Icon
                      Positioned(
                        bottom: 20, // Position text 20 pixels from the bottom
                      left: 180,
                      right: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Padding(
                             padding: const EdgeInsets.all(5.0),
                             child: Image.asset(
                                iconPath, // Load external icon from assets
                                width: 45,
                                height: 45,
                              ),
                           ),
                            // Optional: Icon text below the icon
                            Text(
                              location,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight:FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
