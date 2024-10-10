import 'package:flutter/material.dart';
import 'package:food_app/deliveryoption.dart';

class AddressType extends StatefulWidget {
  //const AddressType({super.key});

  @override
  State<AddressType> createState() => _AddressTypeState();
}

class _AddressTypeState extends State<AddressType> {
  String iconImage='assets/images/location-pin.png';
  String street='SS Building, 2nd Thukkaram street,';
  String city=' T.Nagar, Chennai - 600017';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), 
          child: AppBar(
            title: Text('Address Type',
            style:TextStyle(
                fontSize:18,
                color: Color(0xFF1E1E1E),
              ),),
          // elevation: 4,
           backgroundColor: Color(0xFFFFFFFF),
          ),
        
     ),
    body:Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        street,
                        style:TextStyle(fontSize:14,
                                color: Color(0xFF6B6363),
                                fontWeight: FontWeight.w400,
                                 ),
                      ),
                      SizedBox(height: 2), // Space between title and subtitle
                      Text(
                        city,
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
            Text('Address type',
            style:TextStyle(
              fontFamily:'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),),
           SizedBox(height:20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               
              ElevatedButton(
              onPressed:(){},
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                color: Color(0xFF030303), // Border color
                width: 1.0, // Border width
              ),
                  padding: EdgeInsets.symmetric(vertical:15, horizontal:30),
                             backgroundColor:Color(0xFFFFFFFF),  // Button background color
                             shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                          ),
                             ), 
              child:Text('Home',
              style:TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),)),
              SizedBox(width:10),
              ElevatedButton(
              onPressed:(){}, 
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                color: Color(0xFF8B8B8B), // Border color
                width: 1.0, // Border width
              ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                             //backgroundColor:Color(0xFF8B8B8B),  // Button background color
                             shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                          ),
                             ), 
              child:Text('Work',
              style:TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF666565),
            ),)),
              SizedBox(width:10),
              ElevatedButton(
              onPressed:(){}, 
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                color: Color(0xFF8B8B8B), // Border color
                width: 1.0, // Border width
              ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                             //backgroundColor:Color(0xFF8B8B8B),  // Button background color
                             shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                          ),
                             ), 
              child:Text('Other',
              style:TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF666565),
            ),
              )),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: ElevatedButton(
                     onPressed:(){Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>DeliveryOption(),
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
                           'Save',
                           style: TextStyle(
                             fontSize: 15,
                             color: Color(0xFFFCFCFC),
                             //fontFamily: 'Poppins',
                     
                           ),
                         ),
                       ],
                     ),
                   ),
          ) ,
          
          ],
          ),
    ),
    );
  }
}