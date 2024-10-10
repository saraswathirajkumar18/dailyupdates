import 'package:flutter/material.dart';
import 'package:food_app/addresstype.dart';

class LocationConfirmationPage extends StatefulWidget {
  final String iconImage;
  final String title;
  final String subtitle;
  final String image;
LocationConfirmationPage({
    required this.iconImage,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  State<LocationConfirmationPage> createState() => _LocationConfirmationPageState();
}

class _LocationConfirmationPageState extends State<LocationConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
         preferredSize: Size.fromHeight(60.0), 
        child: AppBar(
          title: Text('Confirm delivery location',
          style:TextStyle(
              fontSize:18,
              color: Color(0xFF1E1E1E),
            ),),
         backgroundColor: Color(0xFFFFFFFF),
        ),
      ),
      body: Column(
        children: [  
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image), // Use AssetImage for local images
                  fit: BoxFit.contain, // Ensures the image covers the full area
                  
                ),
              ),
            ),
          ),
        
        Container(
        //padding: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
  decoration: BoxDecoration(
    color:Colors.white, // Background color
    border: Border.all(
                color: Colors.white, // Border color
                width: 2.0, // Border width
              ),
      
     borderRadius: 
     BorderRadius.all(Radius.circular(20.0)),// Rounded corners only at the top
      
      //topLeft: Radius.circular(18),
      //topRight: Radius.circular(18),
    //),
  ),
        //color: Colors.white,
        child: _buildBottomNavItem(widget.iconImage, widget.title, widget.subtitle),
        
      ),
        ],
      ),
     
    );
  }
Widget _buildBottomNavItem(String iconImage, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0), // Vertical padding for space
      child: Column(
        children: [
          Row(
            children: [
              //Icon(icon, size: 30), // Icon on the left
              Image.asset(
            iconImage, // Replace with your asset path
            height: 24, // Adjust height as needed
            width: 24,  // Adjust width as needed
          ),
              SizedBox(width: 15), // Space between icon and text
              Expanded( // Ensures text takes up remaining space
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text(
                      title,
                      style:TextStyle(fontSize:16,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                               ),
                    ),
                    SizedBox(height: 2), // Space between title and subtitle
                    Text(
                      subtitle,
                      style:TextStyle(fontSize:14,
                              color: Color(0xFF6B6363),
                              fontWeight: FontWeight.w400,
                               ),
                    ),
                  ],
                ),
              ),
             
            ],
          ),
        SizedBox(height:20),
        ElevatedButton(
                   onPressed:(){Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>AddressType(),
      ),
    );},
                   style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                           backgroundColor: Color(0xFF14278D),  // Button background color
                           shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                        ),
                           ),
               
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center, // Center the content
                     children: [
                       Text(
                         'Confirm location',
                         style: TextStyle(
                           fontSize: 15,
                           color: Color(0xFFFCFCFC),
                           //fontFamily: 'Poppins',
                   
                         ),
                       ),
                     ],
                   ),
                 ) ,
        ],
      ),
    );
  }
}
