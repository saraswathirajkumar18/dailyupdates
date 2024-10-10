import 'package:flutter/material.dart';
import 'package:food_app/addressentrypage.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Address',style:TextStyle(
            fontSize:18,
            color: Color(0xFF1E1E1E),
          ),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Search Button
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                      // Logic when the TextField is tapped
                      Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) =>AddressEntryPage()),
                ); 
                    },
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                      fillColor: Color(0xFFF0F0F0),
                          hintText: 'Search for an address',
                          border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                borderSide: BorderSide(color: Color(0xFFF0F0F0), width: 0.0), // Border color and width
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Same radius for enabled state
                borderSide: BorderSide(color: Color(0xFFF0F0F0), width: 0.0), // Border color for enabled state
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Same radius for focused state
                borderSide: BorderSide(color: Color(0xFFF0F0F0), width: 0.0), // Thicker border for focused state
              ),
                          hintStyle: TextStyle(
                        fontSize: 14.0, // Set your desired font size here
                        fontFamily: 'Roboto', // Set your desired font family here
                        fontWeight: FontWeight.w400, // Set your desired font weight here
                        color: Color(0xFF4B4B4B), // Optional: Change hint text color
                      ),
                          prefixIcon: Icon(Icons.search),
                          //border: InputBorder.none, // Remove default border
                          contentPadding: EdgeInsets.all(20), // Padding inside the TextField
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30), // Space between elements
              // Additional Text
              Row(
                children: [
                  Text(
                    'We’ll show you restaurants nearby to order \nDelivery or Pickup  ',
                    style: TextStyle(fontSize: 13,fontFamily: 'Roboto',color: Color(0xFF2D2A2A),fontWeight:FontWeight.w400,
                  )
                  ),
                ],
              ),
              SizedBox(height: 30), // Space between elements
              // Rounded Button
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Rounded borders
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: () {
                     Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>AddressEntryPage()),
                  ); 
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min, // Center the content
                    children: [
                     /*Icon(
  Icons.near_me,
  size: 24, // Adjust size as needed
),*/
                      Image.asset(
                            'assets/images/location-filled.png', // Replace with your asset path
                            height: 24, // Adjust height as needed
                            width: 24,  // Adjust width as needed
                      ),
                      SizedBox(width:15), /// Add space between the icon and text
                      Text(
                            'Use current location',
                            //textAlign: TextAlign.left, 
                            style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF000000),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                  
                            ),
                      ),
                    ],
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      //),
    );
  }
}