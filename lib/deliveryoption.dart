import 'package:flutter/material.dart';
import 'package:food_app/HomeScreenInfo/homepage.dart';
import 'package:food_app/homescreen.dart';

class DeliveryOption extends StatefulWidget {
  //const DeliveryOption({super.key});

  @override
  State<DeliveryOption> createState() => _DeliveryOptionState();
}

class _DeliveryOptionState extends State<DeliveryOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), 
          child: AppBar(
            title: Text('Drop off Options ',
            style:TextStyle(
                fontSize:16,
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
       Column(
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Padding(
             padding: const EdgeInsets.only(top:30.0,left:20,right:20,bottom:10),
             child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.black),
                          backgroundColor: Color(0xFF14278D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded borders
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
             
                        ),
                        onPressed: () {
             
                        },           
                           child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                      'Hand it to me',
                                      //textAlign: TextAlign.left, 
                                      style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFFFFFFFF),
                                            fontWeight: FontWeight.w500,
                                                       
                                      ),
                                ),
                             ],
                           )
                      ),
           ),
         //SizedBox(height:10),
          Padding(
            padding: const EdgeInsets.only(top:10.0,left:20,right:20,bottom:40),
            child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Color(0xFF000000)),
                      //backgroundColor: Color(0xFF14278D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Rounded borders
                      ),
                      padding: EdgeInsets.symmetric(horizontal:20, vertical: 12),
            
                    ),
                    onPressed: () {
            
                    },           
                       child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                                  'Leave it at my door',
                                  //textAlign: TextAlign.left, 
                                  style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w500,
                                               
                                  ),
                            ),
                         ],
                       )
                  ),
          ),
       ],
       ),
          Text('Instructions for delivery person',
          style: TextStyle(
            color: Color(0xFF000000),
            fontSize:16.0,
            fontWeight:FontWeight.bold,
            fontFamily: 'Roboto',
            ),
          ),
         SizedBox(height:15),
          Container(
          width: double.infinity,
         padding: EdgeInsets.all(16.0), // Padding inside the container
          //margin: EdgeInsets.all(20.0), // Margin outside the container
          decoration: BoxDecoration(
            color: Color(0xFFFFF1CF), // Background color of the container
            borderRadius: BorderRadius.circular(10), // Rounded corners
           /* border: Border.all(
              color: Colors.black, // Border color
              width: 1, // Border width
            ),*/
          ),
          child: Text(
            'Example: Please knock instead \nof using door bell',
            style: TextStyle(
              fontSize:15, // Font size
              color: Color(0xFF5B5B5B), // Text color
              fontWeight: FontWeight.w400, // Font weight
            ),
          ),
        ),
         
          SizedBox(height:15),
         
         
          Text('Add Address Label', 
          style: TextStyle(
            color: Color(0xFF000000),
            fontSize:14.0,
            fontWeight:FontWeight.w400,
            fontFamily: 'Roboto',
            ),
            ),
           Container(
             margin: EdgeInsets.symmetric(vertical: 7.0),
             child: TextField(
              keyboardType: TextInputType.phone,
               style: TextStyle(
                fontWeight: FontWeight.w400,
              color: Color(0xFFbB4B4B4),
               fontSize:14.0),
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF030303),),
                ), 
                hintText:'Enter label',
              ),
             ),
           ),
           Spacer(),
ElevatedButton(
                     onPressed:()
                     {
                      Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>HomePage()),
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
                         Text(
                           'Save & Continue',
                           style: TextStyle(
                             fontSize: 15,
                             color: Color(0xFFFCFCFC),
                             //fontFamily: 'Poppins',
                     
                           ),
                         ),
                       ],
                     ),
                   ),
          
          
          
          
          ]
      )
    )

    );
  }
}