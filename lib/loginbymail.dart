import 'package:flutter/material.dart';
//import 'package:food_app/mail_otp_verification.dart';
import 'package:food_app/mail_otp_verification.dart';


class LoginByMail extends StatefulWidget {
 // const LoginByMail({super.key});

  @override
  State<LoginByMail> createState() => _LoginByMailState();
}

class _LoginByMailState extends State<LoginByMail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:PreferredSize(
         preferredSize: Size.fromHeight(90.0), 
        child: AppBar(title: Padding(
          padding: const EdgeInsets.only(top:35.0),

          child: Text('Login or Create Account',
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
          Text('Enter your Mail id', 
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
                hintText:'Email',
              ),
             ),
           ),
           SizedBox(height:70),
           ElevatedButton(
               onPressed:(){
 Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) =>MailOTPVerification()),
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
                     'Send OTP',
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