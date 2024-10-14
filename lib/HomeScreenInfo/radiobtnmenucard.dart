import 'package:flutter/material.dart';

class RadiobtnMenuCard extends StatelessWidget {
  final String image;
  final String headingText;
  final String subText1;
  final String subText2;
  final String chipContent;
  final VoidCallback onTap;

  RadiobtnMenuCard({
    required this.image,
    required this.headingText,
    required this.subText1,
    required this.subText2,
    required this.chipContent,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Color(0xFFE3E3E3), width: 1),
        ),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                 height: 90, // Set image height
                ),
                /*Positioned(
                  top: 8, // Position the chip at the top
                  right: 8, // Position the chip to the right
                  child: Chip(
                    label: Text(chipContent),
                    backgroundColor: Colors.blue,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),*/
              Positioned(
      top: 3,
      right: 4,
      child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        child: Container(
          constraints: BoxConstraints(
             // minWidth: 10, // Minimum width for the chip
              //minHeight: 24, // Minimum height for the chip
            ),
          //width: 90, // Set a specific width
  //height: 70,
          child: Chip(
            label: Row(
                mainAxisSize: MainAxisSize.min, // Use only the required space
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 11, // Icon size
                  ),
                  SizedBox(width:2), // Space between icon and text
                  Text(
                    chipContent,
                    style: TextStyle(
                      color: Colors.white,
                     fontSize:10,fontWeight: FontWeight.w700, // Smaller font size
                    ),
                  ),
                ],
              ),
            /*avatar: Icon(
              Icons.star, 
              color: Colors.white, 
              size: 10,
            ), // Adds a star icon before the text
            label: Text(
              chipContent,
              style: TextStyle(color: Colors.white,fontSize:10,fontWeight: FontWeight.w700),
            ),*/
            backgroundColor: Color(0xFFFF6B00),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Rounded rectangle shape
            ),
          ),
        ),
      ),
    ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    headingText,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color:Color(0xFF1E1E1E)),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: [
                      Text(subText1, 
                      style: TextStyle(
                        color: Color(0xFF303030),fontSize: 11,
                        fontWeight: FontWeight.w500
                        )),
                      SizedBox(width: 4),
                  Text(subText2, style: TextStyle(color: Color(0xFF303030),fontSize: 11,fontWeight: FontWeight.w500)),
                    ],
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}