import 'package:flutter/material.dart';
import 'package:food_app/loginbymail.dart';


class OTPVerificationPage extends StatefulWidget {
 // const OTPVerificationPage({super.key});

  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
         preferredSize: Size.fromHeight(90.0), 
        child: AppBar(title: Padding(
          padding: const EdgeInsets.only(top:35.0),

          child: Text('Enter  OTP for verification',
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
            children:[
              Padding(
                padding: const EdgeInsets.only(bottom:20,top:20),
                child: Text('Enter 6 digit otp',
                  style:TextStyle(
                   fontFamily: 'Roboto',
                    fontSize:14.0,
                    color: Color(0xFF7B7A7A),
                  ) ,
                  ),
              ),
               Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                OTPTextField(),
                SizedBox(width: 16), 
                OTPTextField(),
                SizedBox(width: 16), 
                OTPTextField(),
                SizedBox(width: 16), 
                OTPTextField(),
                
                ] 
               ),
           Padding(
             padding: const EdgeInsets.only(top:20,bottom:20),
             child: Text('Resend',
             style:TextStyle(
              fontSize: 15,
              fontWeight:FontWeight.w400,
             ),
             ),
           ),
            SizedBox(height: 50),
            ElevatedButton(
               onPressed:(){
                 Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) =>LoginByMail()),
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
                     'Verify',
                     style: TextStyle(
                       fontSize: 15,
                       color: Color(0xFFFCFCFC),
                       //fontFamily: 'Poppins',
               
                     ),
                   ),
                 ],
               ),
             ) ,
          
            ]
          ),
        ),
      );

  }
}
class OTPTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // Width of each text box
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: 1, // Limit input to one character
        textAlign: TextAlign.center, // Center the text
        decoration: InputDecoration(
          counterText: '', // Hide character counter
          hintText: '',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF030303)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF030303), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF030303), width: 2),
          ),
        ),
      ),
    );
  }
}
