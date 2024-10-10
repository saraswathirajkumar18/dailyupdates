import 'package:flutter/material.dart';
import 'package:food_app/enablelocation.dart';

class NameSettingupPage extends StatefulWidget {
  //const NameSettingupPage({super.key});

  @override
  State<NameSettingupPage> createState() => _NameSettingupPageState();
}

class _NameSettingupPageState extends State<NameSettingupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
         preferredSize: Size.fromHeight(90.0), 
        child: AppBar(title: Padding(
          padding: const EdgeInsets.only(top:35.0),

          child: Text('Just setting up for you!',
           style: TextStyle(
            fontWeight: FontWeight.bold,
          color:Color(0xFF1E1E1E),
           fontSize:15.0),
          ),
             
        ),
        //backgroundColor: Colors.white, // Set background color
          //elevation:4.0,  
        ),
      ),
      body:Container(
        padding: EdgeInsets.all(16.0), 
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            //SizedBox(height: 20), // Space above the AppBar
          Text('Enter your name', 
          style: TextStyle(
            color: Color(0xFF000000),
            fontSize:14.0,
            fontWeight:FontWeight.w600,
            fontFamily: 'Roboto',
            ),
            ),
           Container(
             margin: EdgeInsets.symmetric(vertical: 20.0),
             child: TextField(
              keyboardType: TextInputType.phone,
               style: TextStyle(
              color: Color(0xFFbB4B4B4),
               fontSize:14.0),
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF030303),),
                ), 
                hintText:'Your name here',
              ),
             ),
           ),
           SizedBox(height:4),
Text('Email Id', 
          style: TextStyle(
            color: Color(0xFF000000),
            fontSize:14.0,
            fontWeight:FontWeight.w600,
            fontFamily: 'Roboto',
            ),
            ),
           Container(
             margin: EdgeInsets.symmetric(vertical: 20.0),
             child: TextField(
              keyboardType: TextInputType.phone,
               style: TextStyle(
              color: Color(0xFFbB4B4B4),
               fontSize:14.0),
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF030303),),
                ), 
                hintText:'Email id',
              ),
             ),
           ),
          
 SizedBox(height:20,),
           ElevatedButton(
               onPressed:(){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) =>Enablelocation()),
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
                     'I’m hungry',
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
      
      )
    );
  }
}