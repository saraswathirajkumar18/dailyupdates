import 'package:flutter/material.dart';

class NewHotelsCard extends StatelessWidget {
   final String image;
  final String? headingText;
  final String? subText1;
  final String? subText2;
  final String? chipContent;
  final VoidCallback onTap;

  RadiobtnMenuCard({
    required this.image,
    this.headingText,
    this.subText1,
    this.subText2,
    this.chipContent,
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
                ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ), // Apply rounding only to the top corners
                child:Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                 height: 90, // Set image height
                ),
                ),
              if (chipContent != null)
              Positioned(
      top: 5,
      right: 4,
       child:Container(
  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
color: Color(0xFFFF6B00),
  ),
  child: Padding(
    padding: const EdgeInsets.all(3.0),
    child:Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 12, // Icon size
                  ),
                  SizedBox(width:7),
        Text(
          chipContent!,
          style: TextStyle(color: Colors.white,
                     fontSize:10,fontWeight: FontWeight.w700, ),
        ),
        SizedBox(width:5),
      ],
    ),
  ),
)

    ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 // if (headingText != null)
                  Text(
                    headingText!,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13,color:Color(0xFF000000)),
                  ),
                  SizedBox(height: 4),
                  //if (subText1 != null) 
                  Text(subText1!, 
                  style: TextStyle(
                    color: Color(0xFF000000),fontSize: 11,
                    fontWeight: FontWeight.w400
                    )),
                  SizedBox(height: 4),
                  //if (subText2 != null)   
                      Text(subText2!, style: TextStyle(color: Color(0xFF000000),fontSize: 11,fontWeight: FontWeight.w400)),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}