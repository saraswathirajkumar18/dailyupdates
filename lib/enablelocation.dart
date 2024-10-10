import 'package:flutter/material.dart';
import 'package:food_app/addresspage.dart';

class Enablelocation extends StatefulWidget {
  //const Enablelocation({super.key});

  @override
  State<Enablelocation> createState() => _EnablelocationState();
}

class _EnablelocationState extends State<Enablelocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16.0), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Centered Image
                SizedBox(height:10),
                Image.asset(
                  'assets/images/locationchecker.png', // Update this with your image path
                  width: 294, // Set your desired width
                  height: 301, // Set your desired height
                ),
                SizedBox(height: 20), // Space between image and heading
                // Centered Heading
                
                Text(
                  'We Don’t have your location yet!',
                  style: TextStyle(fontSize:16, fontWeight: FontWeight.bold,color:Color(0xFF111111), 
                  ),
                ),
                SizedBox(height: 10), // Space between heading and text
                // Centered Text
                Text(
                  'Set you location to start exploring\n restaurants near you',
                  textAlign: TextAlign.center, // Center the text
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:Color(0xFF1E1E1E),),
                ),
                SizedBox(height: 20), // Space between text and button
                // Centered Button
                ElevatedButton(
                onPressed: () { 
                  Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) =>AddressPage()),
                ); 
                },
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
                    Image.asset(
            'assets/images/mage_location-fill.png', // Replace with your asset path
            height: 24, // Adjust height as needed
            width: 24,  // Adjust width as needed
                    ),
                    SizedBox(width:15), // Add space between the icon and text
                    Text(
            'Enable device location',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFFFCFCFC),
              //fontFamily: 'Roboto',
                
            ),
                    ),
                  ],
                ),
              ),
            
            SizedBox(height: 20), ElevatedButton(
                onPressed: () { print("enter location manually"); },
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              backgroundColor: Color(0xFFE5E5E5),  // Button background color
              shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                        ),
              ),
            
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the content
                  children: [
                    Text(
            'Enter location manually',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF212121),
              //fontFamily: 'Roboto',
                
            ),
                    ),
                  ],
                ),
              ),
              Spacer(),
//SizedBox(width:10),
   //alignment: Alignment.bottomCenter,
  Padding(
    padding: const EdgeInsets.symmetric(horizontal:20 ,vertical:30),
    child: Text('We access you location while you are using \n            app to improve your experience',
    style: TextStyle(fontSize:12,fontFamily: 'Roboto',color: Color(0xFF2D2A2A),
    //color:Color(0xFF2A2A),
    ),
    ),
  )
              
              ],
            ),
          ),
        ),
    );

  }
}