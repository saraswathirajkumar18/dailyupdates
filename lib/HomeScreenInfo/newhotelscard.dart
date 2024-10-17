import 'package:flutter/material.dart';

class NewHotelsCard extends StatelessWidget {
   final String image;
  final String? headingText;
  final String? subText1;
  final String? subText2;
  final String? chipContent;
  final VoidCallback onTap;

  NewHotelsCard ({
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
      child: Padding(

        
        padding: const EdgeInsets.only(right:3.0),//space between cards
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Color(0xFFE3E3E3), width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),//space before whole card text
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ), // Apply rounding only to the top corners
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width:60,
                   height:60, // Set image height
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:12.0,right:12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     // if (headingText != null)
                      Container(
                        margin: EdgeInsets.only(left: 0),
                        child: Text(
                          headingText!,
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13,color:Color(0xFF000000)),
                        ),
                      ),
                      SizedBox(height: 4),
                      //if (subText1 != null) 
                      Container(
                        margin: EdgeInsets.only(left:2),
                        child: Text(subText1!, 
                        style: TextStyle(
                          color: Color(0xFF000000),fontSize: 11,
                          fontWeight: FontWeight.w400
                          )),
                      ),
                      SizedBox(height: 4),
                      //if (subText2 != null)   
                          Container(
                             margin: EdgeInsets.only(left:3),
                            child: Text(subText2!, 
                            style: TextStyle(color: Color(0xFF000000),
                            fontSize: 11,
                            fontWeight: FontWeight.w400
                            )
                            )
                            ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}